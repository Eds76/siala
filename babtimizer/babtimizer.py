import itertools
import sys
import tkinter as tk
from dataclasses import dataclass
from pathlib import Path
from tkinter import ttk, messagebox
from typing import Iterable, List, Tuple

TOTAL_LEVELS = 20
TOP_LIMIT = 20

SAVE_LOW = [0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6]
SAVE_HIGH = [2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12]

BAB_LOW = [0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10]
BAB_MID = [0, 1, 2, 3, 3, 4, 5, 6, 6, 7, 8, 9, 9, 10, 11, 12, 12, 13, 14, 15]
BAB_HIGH = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]


@dataclass
class GameClass:
    name: str
    fortitude: str
    reflex: str
    will: str
    bab: str
    max_lvl: int


def _read_text_with_fallback(path: Path) -> str:
    for enc in ("utf-8", "cp866", "cp1251"):
        try:
            return path.read_text(encoding=enc)
        except UnicodeDecodeError:
            continue
    return path.read_text(encoding="utf-8", errors="replace")


def _parse_prog(token: str) -> str:
    t = token.strip().lower()
    if t.startswith("$"):
        t = t[1:]
    return t


def _parse_classes(path: Path) -> Tuple[List[GameClass], List[str]]:
    if not path.exists():
        return [], [f"Файл не найден: {path.name}"]

    text = _read_text_with_fallback(path)
    classes: List[GameClass] = []
    errors: List[str] = []

    for idx, raw in enumerate(text.splitlines(), 1):
        line = raw.strip()
        if not line or line.startswith("#") or line.startswith(";"):
            continue
        parts = [p.strip() for p in line.split(";")]
        if len(parts) != 6:
            errors.append(f"Строка {idx}: ожидалось 6 полей")
            continue
        name, fort, ref, wil, bab, max_lvl_raw = parts
        try:
            max_lvl = int(max_lvl_raw)
        except ValueError:
            errors.append(f"Строка {idx}: некорректный max_lvl")
            continue
        classes.append(
            GameClass(
                name=name,
                fortitude=_parse_prog(fort),
                reflex=_parse_prog(ref),
                will=_parse_prog(wil),
                bab=_parse_prog(bab),
                max_lvl=max_lvl,
            )
        )

    return classes, errors


def _save_value(prog: str, level: int) -> int:
    if level <= 0:
        return 0
    idx = min(level, TOTAL_LEVELS) - 1
    if prog == "savelow":
        return SAVE_LOW[idx]
    if prog == "savehigh":
        return SAVE_HIGH[idx]
    return 0


def _bab_value(prog: str, level: int) -> int:
    if level <= 0:
        return 0
    idx = min(level, TOTAL_LEVELS) - 1
    if prog == "bablow":
        return BAB_LOW[idx]
    if prog == "babmid":
        return BAB_MID[idx]
    if prog == "babhigh":
        return BAB_HIGH[idx]
    return 0


def _calc_totals(gcls: GameClass, level: int) -> Tuple[int, int, int, int]:
    return (
        _save_value(gcls.fortitude, level),
        _save_value(gcls.reflex, level),
        _save_value(gcls.will, level),
        _bab_value(gcls.bab, level),
    )


class ResultsWindow(tk.Toplevel):
    def __init__(self, master: tk.Tk, text: str) -> None:
        super().__init__(master)
        self.title("Результаты")
        self.geometry("900x600")

        self._text = tk.Text(self, wrap="word")
        self._text.insert("1.0", text)
        self._text.configure(state="disabled")
        self._text.pack(fill="both", expand=True, padx=8, pady=8)

        btn = ttk.Button(self, text="Скопировать", command=self._copy)
        btn.pack(pady=(0, 8))

    def _copy(self) -> None:
        self.clipboard_clear()
        self.clipboard_append(self._text.get("1.0", "end-1c"))


class App(tk.Tk):
    def __init__(self) -> None:
        super().__init__()
        self.title("BABtimizer, by Eds76, 26.12.2025")
        self.geometry("680x520")
        self.iconbitmap(r'C:\\Users\\Reichsbryht\\Desktop\\BABtimizer\\dist\\Eds_256.ico')

        self._classes_path = self._resolve_classes_path()
        self._classes: List[GameClass] = []

        self._allow_zero = tk.BooleanVar(value=False)

        self._stat_mode_fort = tk.StringVar(value="max")
        self._stat_mode_ref = tk.StringVar(value="ignore")
        self._stat_mode_will = tk.StringVar(value="ignore")
        self._stat_mode_bab = tk.StringVar(value="max")

        self._tgt_fort = tk.IntVar(value=6)
        self._tgt_ref = tk.IntVar(value=6)
        self._tgt_will = tk.IntVar(value=6)
        self._tgt_bab = tk.IntVar(value=10)

        self._build_ui()
        self._reload_classes()

    def _build_ui(self) -> None:
        main = ttk.Frame(self, padding=10)
        main.pack(fill="both", expand=True)

        left = ttk.Frame(main)
        left.pack(side="left", fill="y", padx=(0, 10))

        right = ttk.Frame(main)
        right.pack(side="right", fill="both", expand=True)

        ttk.Label(left, text="Классы (выбрать 2-4)").pack(anchor="w")
        self._classes_list = tk.Listbox(left, selectmode="multiple", width=32, height=24)
        self._classes_list.pack(fill="y", expand=False, pady=(4, 6))

        ttk.Button(left, text="Перечитать classes.txt", command=self._reload_classes).pack(fill="x", pady=(0, 6))
        ttk.Checkbutton(left, text="Разрешить 0 уровней у выбранных", variable=self._allow_zero).pack(anchor="w")

        stats_box = ttk.LabelFrame(right, text="Показатели", padding=10)
        stats_box.pack(fill="x", pady=(0, 8))

        self._stat_controls = []
        self._add_stat_row(stats_box, "fortitude", self._stat_mode_fort, self._tgt_fort, 0, 30)
        self._add_stat_row(stats_box, "reflex", self._stat_mode_ref, self._tgt_ref, 0, 30)
        self._add_stat_row(stats_box, "will", self._stat_mode_will, self._tgt_will, 0, 30)
        self._add_stat_row(stats_box, "bab", self._stat_mode_bab, self._tgt_bab, 0, 20)

        actions = ttk.Frame(right)
        actions.pack(fill="x", pady=(8, 0))
        ttk.Button(actions, text="Рассчитать", command=self._calculate).pack(side="left")

        self._sync_mode()

    def _add_stat_row(self, parent: ttk.Frame, label: str, mode_var: tk.StringVar, target_var: tk.IntVar, mn: int, mx: int) -> None:
        row = ttk.Frame(parent)
        row.pack(fill="x", pady=2)
        ttk.Label(row, text=label, width=10).pack(side="left")
        ttk.Radiobutton(row, text="не учитывать", value="ignore", variable=mode_var, command=self._sync_mode).pack(side="left", padx=(6, 0))
        ttk.Radiobutton(row, text="максимум", value="max", variable=mode_var, command=self._sync_mode).pack(side="left", padx=(6, 0))
        ttk.Radiobutton(row, text="цель", value="target", variable=mode_var, command=self._sync_mode).pack(side="left", padx=(6, 0))
        spin = ttk.Spinbox(row, from_=mn, to=mx, textvariable=target_var, width=6)
        spin.pack(side="left", padx=(6, 0))
        self._stat_controls.append((mode_var, spin))

    def _resolve_classes_path(self) -> Path:
        if getattr(sys, "frozen", False):
            return Path(sys.executable).resolve().with_name("classes.txt")
        return Path(__file__).resolve().with_name("classes.txt")

    def _sync_mode(self) -> None:
        for mode_var, spin in self._stat_controls:
            spin_state = "normal" if mode_var.get() == "target" else "disabled"
            spin.configure(state=spin_state)
        return

    def _reload_classes(self) -> None:
        classes, errors = _parse_classes(self._classes_path)
        self._classes = classes

        self._classes_list.delete(0, "end")
        for gcls in self._classes:
            self._classes_list.insert("end", f"{gcls.name} (max {gcls.max_lvl})")

        if errors:
            messagebox.showwarning("Парсер classes.txt", "\n".join(errors))
        if not self._classes:
            messagebox.showerror("Парсер classes.txt", "Список классов пуст")

    def _get_selected_classes(self) -> List[GameClass]:
        return [self._classes[i] for i in self._classes_list.curselection()]

    def _validate_selection(self, selected: List[GameClass]) -> bool:
        if len(selected) == 0:
            if len(self._classes) < 2:
                messagebox.showerror("Выбор классов", "Недостаточно классов для поиска")
                return False
            return True
        if not (2 <= len(selected) <= 4):
            messagebox.showerror("Выбор классов", "Нужно выбрать от 2 до 4 классов или оставить пустым")
            return False

        min_lvl = 0 if self._allow_zero.get() else 1
        min_sum = min_lvl * len(selected)
        max_sum = sum(c.max_lvl for c in selected)

        if min_sum > TOTAL_LEVELS:
            messagebox.showerror("Ограничения уровней", "Минимальная сумма уровней превышает 20")
            return False
        if max_sum < TOTAL_LEVELS:
            messagebox.showerror("Ограничения уровней", "Максимальная сумма уровней меньше 20")
            return False

        return True

    def _class_sets(self, selected: List[GameClass]) -> Iterable[List[GameClass]]:
        if selected:
            yield selected
            return
        for size in range(2, 5):
            for combo in itertools.combinations(self._classes, size):
                yield list(combo)

    def _iter_combinations(self, selected: List[GameClass]) -> List[Tuple[List[int], Tuple[int, int, int, int]]]:
        n = len(selected)
        min_lvl = 0 if self._allow_zero.get() else 1
        mins = [min_lvl] * n
        maxs = [c.max_lvl for c in selected]

        results = []
        levels = [0] * n

        def rec(idx: int, remaining: int) -> None:
            if idx == n - 1:
                lvl = remaining
                if mins[idx] <= lvl <= maxs[idx]:
                    levels[idx] = lvl
                    totals = [0, 0, 0, 0]
                    for gcls, lv in zip(selected, levels):
                        f, r, w, b = _calc_totals(gcls, lv)
                        totals[0] += f
                        totals[1] += r
                        totals[2] += w
                        totals[3] += b
                    results.append((levels.copy(), tuple(totals)))
                return

            min_rest = sum(mins[idx + 1 :])
            max_rest = sum(maxs[idx + 1 :])

            for lvl in range(mins[idx], maxs[idx] + 1):
                rem = remaining - lvl
                if rem < min_rest or rem > max_rest:
                    continue
                levels[idx] = lvl
                rec(idx + 1, rem)

        rec(0, TOTAL_LEVELS)
        return results

    def _calculate(self) -> None:
        selected = self._get_selected_classes()
        if not self._validate_selection(selected):
            return

        all_items: List[Tuple[List[GameClass], List[int], Tuple[int, int, int, int]]] = []
        total_checked = 0

        for class_set in self._class_sets(selected):
            if not (2 <= len(class_set) <= 4):
                continue
            min_lvl = 0 if self._allow_zero.get() else 1
            min_sum = min_lvl * len(class_set)
            max_sum = sum(c.max_lvl for c in class_set)
            if min_sum > TOTAL_LEVELS or max_sum < TOTAL_LEVELS:
                continue

            combos = self._iter_combinations(class_set)
            total_checked += len(combos)
            for levels, totals in combos:
                all_items.append((class_set, levels, totals))

        modes = [
            self._stat_mode_fort.get(),
            self._stat_mode_ref.get(),
            self._stat_mode_will.get(),
            self._stat_mode_bab.get(),
        ]
        max_flags = [m == "max" for m in modes]
        target_flags = [m == "target" for m in modes]
        considered_flags = [m != "ignore" for m in modes]
        target_vals = [self._tgt_fort.get(), self._tgt_ref.get(), self._tgt_will.get(), self._tgt_bab.get()]

        if not any(max_flags) and not any(target_flags):
            messagebox.showerror("Показатели", "Нужно выбрать хотя бы одну цель или максимум")
            return

        filtered = []
        for class_set, levels, totals in all_items:
            if any(target_flags):
                ok = True
                for val, enabled, target in zip(totals, target_flags, target_vals):
                    if enabled and val < target:
                        ok = False
                        break
                if not ok:
                    continue
            filtered.append((class_set, levels, totals))

        if not filtered:
            messagebox.showinfo("Результаты", "Подходящих вариантов не найдено")

        text = self._format_results(selected, total_checked, filtered, considered_flags)
        ResultsWindow(self, text)

    def _format_results(
        self,
        selected: List[GameClass],
        total_checked: int,
        items,
        considered_flags: List[bool],
    ) -> str:
        lines = []
        lines.append(f"Проверено комбинаций: {total_checked}")
        lines.append(f"Подходящих: {len(items)}")
        lines.append("")

        if items:
            def write_top(title: str, score_fn, limit: int = 20) -> None:
                top_score = max(score_fn(totals) for _, _, totals in items)
                top_block = []
                rest_block = []
                for class_set, levels, totals in items:
                    if score_fn(totals) == top_score:
                        top_block.append((class_set, levels, totals))
                    else:
                        rest_block.append((class_set, levels, totals))

                lines.append(f"{title}, сумма={top_score}:")
                count = 0
                for idx, (class_set, levels, totals) in enumerate(top_block, 1):
                    parts = [f"{gcls.name} {lvl}" for gcls, lvl in zip(class_set, levels)]
                    total_sum = sum(totals)
                    line = (
                        f"  {idx:>2}) "
                        + ", ".join(parts)
                        + f" | fortitude={totals[0]} reflex={totals[1]} will={totals[2]} bab={totals[3]} total={total_sum}"
                    )
                    lines.append(line)
                    count += 1

                if rest_block and count < limit:
                    rest_block.sort(
                        key=lambda item: (score_fn(item[2]), sum(item[2])),
                        reverse=True,
                    )
                    lines.append("  ---")
                    for class_set, levels, totals in rest_block:
                        if count >= limit:
                            break
                        parts = [f"{gcls.name} {lvl}" for gcls, lvl in zip(class_set, levels)]
                        total_sum = sum(totals)
                        line = (
                            f"  {count + 1:>2}) "
                            + ", ".join(parts)
                            + f" | fortitude={totals[0]} reflex={totals[1]} will={totals[2]} bab={totals[3]} total={total_sum}"
                        )
                        lines.append(line)
                        count += 1

                lines.append("")

            write_top(
                "Топ по сумме учитываемых характеристик",
                lambda totals: sum(val for val, enabled in zip(totals, considered_flags) if enabled),
            )
            write_top("Топ по сумме всех характеристик", lambda totals: sum(totals))

        return "\n".join(lines)


if __name__ == "__main__":
    app = App()
    app.mainloop()
