Add-Type -AssemblyName PresentationCore,PresentationFramework,WindowsBase,system.windows.forms

[xml]$xmlWPF = @"
<Window x:Name="window"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:savesNWN"
		ResizeMode="NoResize"
        Title="SaveThrow/BAB+AB/AC calculator by Kiryusha, 2023 Siala Edition" Height="840" Width="820">
		<Grid x:Name="main">
        <TabControl>
            <TabItem Header="Calc">
                <Grid x:Name ="tab1" Background="#FF7C7C7C">
                    <Rectangle HorizontalAlignment="Left" Height="26" Margin="639,215,0,0" Stroke="Black" VerticalAlignment="Top" Width="84"/>
                    <Rectangle HorizontalAlignment="Left" Height="245" Margin="13,0,0,0" Stroke="Black" VerticalAlignment="Center" Width="538"/>
                    <Rectangle HorizontalAlignment="Left" Height="245" Margin="11,10,0,0" Stroke="Black" VerticalAlignment="Top" Width="778"/>
                    <Rectangle HorizontalAlignment="Left" Height="84" Margin="12,570,0,0" Stroke="Black" VerticalAlignment="Top" Width="232" RenderTransformOrigin="0.5,0.5"/>
                    <Rectangle HorizontalAlignment="Left" Height="244" Margin="10,530,0,0" Stroke="Black" VerticalAlignment="Top" Width="780"/>
                    <Rectangle Height="170" Stroke="Black" Width="120" VerticalAlignment="Top" HorizontalAlignment="Left" Margin="510,549,0,0"/>
                    <TextBlock TextWrapping="Wrap" Text="armor skin" Width="58" VerticalAlignment="Top" Margin="513,610,0,0" HorizontalAlignment="Left"/>
                    <CheckBox x:Name="chb_AC_AS" Content="" VerticalAlignment="Top" Margin="589,611,0,0" HorizontalAlignment="Left" />
                    <TextBox x:Name="tb_AC_MONK" TextWrapping="Wrap" Width="22" Text="0" VerticalAlignment="Top" Margin="582,554,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Text="monk" Width="63" RenderTransformOrigin="0.5,0.5" VerticalAlignment="Top" Margin="513,556,0,0" HorizontalAlignment="Left" />
                    <TextBox x:Name="tb_AC_RDD" TextWrapping="Wrap" Width="22" Text="0" VerticalAlignment="Top" Margin="582,571,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Text="rdd" Width="63" RenderTransformOrigin="0.5,0.5" VerticalAlignment="Top" Margin="513,573,0,0" HorizontalAlignment="Left" />
                    <TextBox x:Name="tb_AC_PM" TextWrapping="Wrap" Width="22" Text="0" VerticalAlignment="Top" Margin="582,588,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Text="pm" Width="63" RenderTransformOrigin="0.5,0.5" VerticalAlignment="Top" Margin="513,590,0,0" HorizontalAlignment="Left" />
                    <TextBlock TextWrapping="Wrap" Text="expertise" Width="58" VerticalAlignment="Top" Margin="513,626,0,0" HorizontalAlignment="Left"/>
                    <CheckBox x:Name="chb_AC_EXP" Content="" VerticalAlignment="Top" Margin="589,626,0,0" HorizontalAlignment="Left" />
                    <TextBlock TextWrapping="Wrap" Text="imp expertise" Width="76" VerticalAlignment="Top" Margin="513,640,0,0" HorizontalAlignment="Left"/>
                    <CheckBox x:Name="chb_AC_iEXP" Content="" VerticalAlignment="Top" Margin="589,641,0,0" HorizontalAlignment="Left" />
                    <TextBox x:Name="tb_AC_thumble" TextWrapping="Wrap" Width="22" Text="0" VerticalAlignment="Top" Margin="582,661,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Text="thumble" Width="63" RenderTransformOrigin="0.5,0.5" VerticalAlignment="Top" Margin="513,661,0,0" HorizontalAlignment="Left" />
                    <TextBox x:Name="tb_AC_OTHER_SUM" TextWrapping="Wrap" Width="22" Text="0" IsEnabled="False" VerticalAlignment="Top" Margin="514,696,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Text="sum" Width="26" VerticalAlignment="Top" Margin="514,680,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_AC_OTHER_SUM_ff" TextWrapping="Wrap" Width="22" Text="0" IsEnabled="False" VerticalAlignment="Top" Margin="541,696,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Text="ff" Width="26" VerticalAlignment="Top" Margin="541,680,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_AC_OTHER_SUM_ta" TextWrapping="Wrap" Width="22" Text="0" IsEnabled="False" VerticalAlignment="Top" Margin="568,696,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Text="ta" Width="26" VerticalAlignment="Top" Margin="568,680,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_AC_MONK_MOD" TextWrapping="Wrap" Width="21" Text="0" VerticalAlignment="Top" Margin="606,554,0,0" HorizontalAlignment="Left" IsEnabled="False"/>
                    <TextBox x:Name="tb_AC_RDD_MOD" TextWrapping="Wrap" Width="21" Text="0" VerticalAlignment="Top" Margin="606,571,0,0" HorizontalAlignment="Left" IsEnabled="False"/>
                    <TextBox x:Name="tb_AC_PM_MOD" TextWrapping="Wrap" Width="21" Text="0" VerticalAlignment="Top" Margin="606,588,0,0" HorizontalAlignment="Left" IsEnabled="False"/>
                    <TextBox x:Name="tb_AC_thumble_MOD" TextWrapping="Wrap" Width="21" Text="0" VerticalAlignment="Top" Margin="606,661,0,0" HorizontalAlignment="Left" IsEnabled="False"/>
                    <Border BorderBrush="Black" BorderThickness="1" HorizontalAlignment="Left" Height="26" Margin="436,460,0,0" VerticalAlignment="Top" Width="108"/>
                    <Slider x:Name="sld_class1" HorizontalAlignment="Left" Margin="199,301,0,0" VerticalAlignment="Top" Width="201" Height="22" SmallChange="1" TickPlacement="BottomRight" AutoToolTipPlacement="BottomRight" IsEnabled="False" IsSnapToTickEnabled="True"/>
                    <ComboBox x:Name="cmb_class1" HorizontalAlignment="Left" Margin="30,301,0,0" VerticalAlignment="Top" Width="155"/>
                    <ComboBox x:Name="cmb_class2" HorizontalAlignment="Left" Margin="30,328,0,0" VerticalAlignment="Top" Width="155"/>
                    <Slider x:Name="sld_class2" HorizontalAlignment="Left" Margin="199,328,0,0" VerticalAlignment="Top" Width="201" Height="22" SmallChange="1" TickPlacement="BottomRight" AutoToolTipPlacement="BottomRight" IsEnabled="False" IsSnapToTickEnabled="True"/>
                    <ComboBox x:Name="cmb_class3" HorizontalAlignment="Left" Margin="30,355,0,0" VerticalAlignment="Top" Width="155"/>
                    <Slider x:Name="sld_class3" HorizontalAlignment="Left" Margin="199,355,0,0" VerticalAlignment="Top" Width="201" Height="22" SmallChange="1" TickPlacement="BottomRight" AutoToolTipPlacement="BottomRight" IsEnabled="False" IsSnapToTickEnabled="True"/>
                    <ComboBox x:Name="cmb_class4" HorizontalAlignment="Left" Margin="30,382,0,0" VerticalAlignment="Top" Width="155"/>
                    <Slider x:Name="sld_class4" HorizontalAlignment="Left" Margin="198,382,0,0" VerticalAlignment="Top" Width="201" Height="22" SmallChange="1" TickPlacement="BottomRight" AutoToolTipPlacement="BottomRight" IsEnabled="False" IsSnapToTickEnabled="True"/>
                    <TextBox x:Name="tb_lvlSum" HorizontalAlignment="Left" Margin="402,278,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="20" Text="0" IsEnabled="False"/>
                    <TextBox x:Name="tb_class1_f" HorizontalAlignment="Left" Margin="440,300,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_class1_r" HorizontalAlignment="Left" Margin="475,300,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_class1_w" HorizontalAlignment="Left" Margin="510,300,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_class2_f" HorizontalAlignment="Left" Margin="440,327,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_class2_r" HorizontalAlignment="Left" Margin="475,327,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_class2_w" HorizontalAlignment="Left" Margin="510,327,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_class3_f" HorizontalAlignment="Left" Margin="440,354,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_class3_r" HorizontalAlignment="Left" Margin="475,354,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_class3_w" HorizontalAlignment="Left" Margin="510,354,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_class4_f" HorizontalAlignment="Left" Margin="440,381,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_class4_r" HorizontalAlignment="Left" Margin="475,381,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_class4_w" HorizontalAlignment="Left" Margin="510,381,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_SUM_f" HorizontalAlignment="Left" Margin="440,465,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_SUM_r" HorizontalAlignment="Left" Margin="475,465,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_SUM_w" HorizontalAlignment="Left" Margin="510,465,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBlock HorizontalAlignment="Left" Height="18" Margin="440,278,0,0" TextWrapping="Wrap" Text="fort" VerticalAlignment="Top" Width="30"/>
                    <TextBlock HorizontalAlignment="Left" Height="18" Margin="475,278,0,0" TextWrapping="Wrap" Text="ref" VerticalAlignment="Top" Width="30"/>
                    <TextBlock HorizontalAlignment="Left" Height="18" Margin="510,278,0,0" TextWrapping="Wrap" Text="will" VerticalAlignment="Top" Width="30"/>
                    <CheckBox x:Name="chb_gFort" Content="" HorizontalAlignment="Left" Margin="271,453,0,0" VerticalAlignment="Top" />
                    <CheckBox x:Name="chb_gRef" Content="" HorizontalAlignment="Left" Margin="290,453,0,0" VerticalAlignment="Top" />
                    <CheckBox x:Name="chb_gWill" Content="" HorizontalAlignment="Left" Margin="308,453,0,0" VerticalAlignment="Top" />
                    <CheckBox x:Name="chb_eFort" Content="" HorizontalAlignment="Left" Margin="271,470,0,0" VerticalAlignment="Top"  RenderTransformOrigin="0.417,2.819"/>
                    <CheckBox x:Name="chb_eRef" Content="" HorizontalAlignment="Left" Margin="290,470,0,0" VerticalAlignment="Top" />
                    <CheckBox x:Name="chb_eWill" Content="" HorizontalAlignment="Left" Margin="308,470,0,0" VerticalAlignment="Top" />
                    <TextBlock HorizontalAlignment="Left" TextWrapping="Wrap" Text="great feat" VerticalAlignment="Top" Margin="168,451,0,0" Width="60"/>
                    <TextBlock HorizontalAlignment="Left" TextWrapping="Wrap" Text="epic feat" VerticalAlignment="Top" Margin="168,468,0,0" Width="60"/>
                    <TextBlock HorizontalAlignment="Left" Margin="168,434,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="100" Text="epic level cap +10"/>
                    <CheckBox x:Name="chb_epicCAP" Content="" HorizontalAlignment="Left" Margin="271,436,0,0" VerticalAlignment="Top" />
                    <TextBox x:Name="tb_CON" TextWrapping="Wrap" Width="22" Text="8" VerticalAlignment="Top" Margin="138,108,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_DEX" TextWrapping="Wrap" Width="22" Text="8" VerticalAlignment="Top" Margin="138,85,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_WIS" TextWrapping="Wrap" Width="22" Text="8" VerticalAlignment="Top" Margin="138,131,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_modCON" TextWrapping="Wrap" Width="22" IsEnabled="False" Text="0" VerticalAlignment="Top" Margin="162,108,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_modDEX" TextWrapping="Wrap" Width="22" IsEnabled="False" Text="0" VerticalAlignment="Top" Margin="162,85,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_modWIS" TextWrapping="Wrap" Width="22" IsEnabled="False" Text="0" VerticalAlignment="Top" Margin="162,131,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Text="con" Width="20" VerticalAlignment="Top" Margin="18,109,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Text="dex" Width="20" VerticalAlignment="Top" Margin="18,86,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Text="wis" Width="17" VerticalAlignment="Top" Margin="18,130,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Text="mod" Width="31" VerticalAlignment="Top" Margin="162,47,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_STR" TextWrapping="Wrap" Width="22" Text="8" VerticalAlignment="Top" Margin="138,64,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_modSTR" TextWrapping="Wrap" Width="22" IsEnabled="False" Text="0" VerticalAlignment="Top" Margin="162,64,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Text="str" Width="20" VerticalAlignment="Top" Margin="18,65,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_Sld1" HorizontalAlignment="Left" Margin="402,301,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="20" IsEnabled="False"/>
                    <TextBox x:Name="tb_Sld2" HorizontalAlignment="Left" Margin="402,328,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="20" IsEnabled="False"/>
                    <TextBox x:Name="tb_Sld3" HorizontalAlignment="Left" Margin="402,355,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="20" IsEnabled="False"/>
                    <TextBox x:Name="tb_Sld4" HorizontalAlignment="Left" Margin="402,382,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="20" IsEnabled="False"/>
                    <TextBlock HorizontalAlignment="Left" Margin="18,176,0,0" TextWrapping="Wrap" Text="cha" VerticalAlignment="Top" Width="30"/>
                    <TextBox x:Name="tb_CHA" HorizontalAlignment="Left" Margin="138,177,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="8"/>
                    <TextBox x:Name="tb_modCHA" HorizontalAlignment="Left" Margin="162,177,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" IsEnabled="False" Text="0"/>
                    <TextBlock HorizontalAlignment="Left" Margin="30,468,0,0" TextWrapping="Wrap" Text="dark blessing" VerticalAlignment="Top" Width="75"/>
                    <TextBlock HorizontalAlignment="Left" Margin="30,451,0,0" TextWrapping="Wrap" Text="divine blessing" VerticalAlignment="Top" Width="84"/>
                    <CheckBox x:Name="chb_DARKBLS" Content="" HorizontalAlignment="Left" Margin="128,470,0,0" VerticalAlignment="Top" RenderTransformOrigin="0.513,0.152" />
                    <CheckBox x:Name="chb_DIVINEBLS" Content="" HorizontalAlignment="Left" Margin="128,453,0,0" VerticalAlignment="Top" />
                    <TextBlock HorizontalAlignment="Left" Margin="30,434,0,0" TextWrapping="Wrap" Text="Strong soul" VerticalAlignment="Top" Width="84"/>
                    <CheckBox x:Name="chb_SS" Content="" HorizontalAlignment="Left" Margin="128,436,0,0" VerticalAlignment="Top" />
                    <TextBlock HorizontalAlignment="Left" Margin="30,417,0,0" TextWrapping="Wrap" Text="Luck of heroes" VerticalAlignment="Top" Width="84"/>
                    <CheckBox x:Name="chb_LOH" Content="" HorizontalAlignment="Left" Margin="128,419,0,0" VerticalAlignment="Top" />
                    <TextBlock HorizontalAlignment="Left" Margin="168,417,0,0" TextWrapping="Wrap" Text="uni+20" VerticalAlignment="Top" Width="40"/>
                    <CheckBox x:Name="chb_UNI20" Content="" HorizontalAlignment="Left" Margin="271,419,0,0" VerticalAlignment="Top" />
                    <Rectangle HorizontalAlignment="Left" Height="245" Margin="556,0,0,0" Stroke="Black" VerticalAlignment="Center" Width="234"/>
                    <TextBlock HorizontalAlignment="Left" Margin="563,260,0,0" TextWrapping="Wrap" Text="BAB+AB" VerticalAlignment="Top" Width="46" Foreground="Black" Background="White"/>
                    <TextBox x:Name="tb_class1_BAB" HorizontalAlignment="Left" Margin="579,296,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_class2_BAB" HorizontalAlignment="Left" Margin="579,323,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_class3_BAB" HorizontalAlignment="Left" Margin="579,350,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_class4_BAB" HorizontalAlignment="Left" Margin="579,377,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_SUM_BAB" HorizontalAlignment="Left" Margin="579,415,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBlock HorizontalAlignment="Left" Margin="620,297,0,0" TextWrapping="Wrap" Text="gnome/halfling" VerticalAlignment="Top" Width="88"/>
                    <CheckBox x:Name="chb_gnomeAB" Content="" HorizontalAlignment="Left" Margin="713,297,0,0" VerticalAlignment="Top" />
                    <TextBox x:Name="tb_SUM_BA" HorizontalAlignment="Left" Margin="614,415,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_SUM_Attacks" HorizontalAlignment="Left" Margin="563,438,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="81" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_SUM_Monk_Attacks" HorizontalAlignment="Left" Margin="563,490,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="150" IsEnabled="False" Text="0"/>
                    <TextBlock HorizontalAlignment="Left" Margin="620,316,0,0" TextWrapping="Wrap" Text="half-elf" VerticalAlignment="Top" Width="88"/>
                    <CheckBox x:Name="chb_halfelfAB" Content="" HorizontalAlignment="Left" Margin="674,316,0,0" VerticalAlignment="Top" />
                    <TextBlock HorizontalAlignment="Left" Margin="640,336,0,0" TextWrapping="Wrap" Text="weapon finesse" VerticalAlignment="Top" Width="88"/>
                    <CheckBox x:Name="chb_finesse" Content="" HorizontalAlignment="Left" Margin="620,337,0,0" VerticalAlignment="Top" />
                    <TextBlock HorizontalAlignment="Left" Margin="640,356,0,0" TextWrapping="Wrap" Text="zen archery" VerticalAlignment="Top" Width="88"/>
                    <CheckBox x:Name="chb_zen" Content="" HorizontalAlignment="Left" Margin="620,357,0,0" VerticalAlignment="Top" />
                    <TextBox x:Name="tb_WMlvl" HorizontalAlignment="Left" Margin="759,458,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="0"/>
                    <TextBlock HorizontalAlignment="Left" Margin="738,459,0,0" TextWrapping="Wrap" Text="wm" VerticalAlignment="Top" Width="20"/>
                    <TextBox x:Name="tb_AAlvl" HorizontalAlignment="Left" Margin="759,435,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="0"/>
                    <TextBlock HorizontalAlignment="Left" Margin="740,435,0,0" TextWrapping="Wrap" Text="aa" VerticalAlignment="Top" Width="20"/>
                    <TextBox x:Name="tb_BGlvl" HorizontalAlignment="Left" Margin="759,412,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="0"/>
                    <TextBlock HorizontalAlignment="Left" Margin="740,412,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="20" Height="18"><Run Text="bg"/><LineBreak/><Run/></TextBlock>
                    <TextBlock HorizontalAlignment="Left" Margin="640,376,0,0" TextWrapping="Wrap" Text="siala monk" VerticalAlignment="Top" Width="88"/>
                    <CheckBox x:Name="chb_SialaMonk" Content="" HorizontalAlignment="Left" Margin="620,377,0,0" VerticalAlignment="Top" />
                    <TextBlock HorizontalAlignment="Left" Margin="699,314,0,0" TextWrapping="Wrap" Text="sagra he" VerticalAlignment="Top" Width="59" RenderTransformOrigin="0.503,0.433"/>
                    <CheckBox x:Name="chb_SagraHalfElf" Content="" HorizontalAlignment="Left" Margin="763,316,0,0" VerticalAlignment="Top" />
                    <TextBlock HorizontalAlignment="Left" Margin="640,376,0,0" TextWrapping="Wrap" Text="siala monk" VerticalAlignment="Top" Width="88"/>
                    <TextBlock HorizontalAlignment="Left" Margin="579,399,0,0" TextWrapping="Wrap" Text="BAB" VerticalAlignment="Top" Width="22" RenderTransformOrigin="0.373,0.529"/>
                    <TextBlock HorizontalAlignment="Left" Margin="614,399,0,0" TextWrapping="Wrap" Text="AB" VerticalAlignment="Top" Width="22" RenderTransformOrigin="0.373,0.529"/>
                    <TextBox x:Name="tb_free20cap" HorizontalAlignment="Left" Margin="649,415,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="20"/>
                    <TextBlock HorizontalAlignment="Left" Margin="649,399,0,0" TextWrapping="Wrap" Text="free +20cap" VerticalAlignment="Top" Width="65" RenderTransformOrigin="0.373,0.529"/>
                    <TextBlock HorizontalAlignment="Left" Margin="674,438,0,0" TextWrapping="Wrap" Text="focus" VerticalAlignment="Top" Width="40"/>
                    <CheckBox x:Name="chb_focus" Content="" HorizontalAlignment="Left" Margin="654,439,0,0" VerticalAlignment="Top" />
                    <TextBlock HorizontalAlignment="Left" Margin="674,454,0,0" TextWrapping="Wrap" Text="epic focus" VerticalAlignment="Top" Width="54"/>
                    <CheckBox x:Name="chb_Efocus" Content="" HorizontalAlignment="Left" Margin="654,455,0,0" VerticalAlignment="Top" />
                    <TextBlock HorizontalAlignment="Left" Margin="674,471,0,0" TextWrapping="Wrap" Text="prowess" VerticalAlignment="Top" Width="54"/>
                    <CheckBox x:Name="chb_prowess" Content="" HorizontalAlignment="Left" Margin="654,472,0,0" VerticalAlignment="Top" />
                    <TextBox x:Name="tb_abBuff" HorizontalAlignment="Left" Margin="698,415,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" Text="0"/>
                    <TextBlock HorizontalAlignment="Left" Margin="684,416,0,0" TextWrapping="Wrap" Text="+" VerticalAlignment="Top" Width="15" RenderTransformOrigin="0.373,0.529"/>
                    <TextBlock HorizontalAlignment="Left" Margin="563,469,0,0" TextWrapping="Wrap" Text="monk ab" VerticalAlignment="Top" Width="54"/>
                    <TextBox x:Name="tb_AC_ARMOR_b" HorizontalAlignment="Left" Margin="165,551,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="0"/>
                    <TextBox x:Name="tb_AC_ARMOR_p" HorizontalAlignment="Left" Margin="192,551,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="0"/>
                    <TextBox x:Name="tb_AC_ARMOR_s" HorizontalAlignment="Left" Margin="219,551,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="0"/>
                    <TextBox x:Name="tb_AC_ARMOR_BASE" HorizontalAlignment="Left" Margin="138,551,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="5"/>
                    <TextBlock HorizontalAlignment="Left" Margin="14,553,0,0" TextWrapping="Wrap" Text="armor\bracer" VerticalAlignment="Top" Width="85" RenderTransformOrigin="0.5,0.5" />
                    <TextBlock HorizontalAlignment="Left" Margin="165,535,0,0" TextWrapping="Wrap" Text="b" VerticalAlignment="Top" Width="20"/>
                    <TextBlock HorizontalAlignment="Left" Margin="192,535,0,0" TextWrapping="Wrap" Text="p" VerticalAlignment="Top" Width="20"/>
                    <TextBlock HorizontalAlignment="Left" Margin="219,535,0,0" TextWrapping="Wrap" Text="s" VerticalAlignment="Top" Width="17"/>
                    <TextBlock HorizontalAlignment="Left" Margin="18,578,0,0" TextWrapping="Wrap" Text="shield" VerticalAlignment="Top" Width="58" RenderTransformOrigin="0.5,0.5" />
                    <TextBox x:Name="tb_AC_SHIELD_b" HorizontalAlignment="Left" Margin="165,577,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="0"/>
                    <TextBox x:Name="tb_AC_SHIELD_p" HorizontalAlignment="Left" Margin="192,577,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="0"/>
                    <TextBox x:Name="tb_AC_SHIELD_s" HorizontalAlignment="Left" Margin="219,577,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="0"/>
                    <TextBox x:Name="tb_AC_SHIELD_BASE" HorizontalAlignment="Left" Margin="138,577,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="0"/>
                    <ComboBox x:Name="cmb_AC_armor_base" HorizontalAlignment="Left" Margin="94,548,0,0" VerticalAlignment="Top" Width="35" RenderTransformOrigin="-0.347,-0.159" Height="21"/>
                    <ComboBox x:Name="cmb_AC_shield_base" HorizontalAlignment="Left" Margin="94,572,0,0" VerticalAlignment="Top" Width="35" RenderTransformOrigin="-0.347,-0.159" Height="22"/>
                    <TextBlock HorizontalAlignment="Left" Margin="14,661,0,0" TextWrapping="Wrap" Text="natural (amulet)" VerticalAlignment="Top" Width="85" RenderTransformOrigin="0.5,0.5" />
                    <TextBox x:Name="tb_AC_NATURAL_b" HorizontalAlignment="Left" Margin="165,660,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="0"/>
                    <TextBox x:Name="tb_AC_NATURAL_p" HorizontalAlignment="Left" Margin="192,660,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="0"/>
                    <TextBox x:Name="tb_AC_NATURAL_s" HorizontalAlignment="Left" Margin="219,660,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="0"/>
                    <TextBox x:Name="tb_AC_NATURAL_BASE" HorizontalAlignment="Left" Margin="138,660,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="5"/>
                    <TextBlock HorizontalAlignment="Left" Margin="14,679,0,0" TextWrapping="Wrap" Text="deflect (other)" VerticalAlignment="Top" Width="85" RenderTransformOrigin="0.5,0.5" />
                    <TextBox x:Name="tb_AC_DEFLECT_b" HorizontalAlignment="Left" Margin="165,678,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="0"/>
                    <TextBox x:Name="tb_AC_DEFLECT_p" HorizontalAlignment="Left" Margin="192,678,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="0"/>
                    <TextBox x:Name="tb_AC_DEFLECT_s" HorizontalAlignment="Left" Margin="219,678,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="0"/>
                    <TextBox x:Name="tb_AC_DEFLECT_BASE" HorizontalAlignment="Left" Margin="138,678,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="5"/>
                    <TextBlock HorizontalAlignment="Left" Margin="14,697,0,0" TextWrapping="Wrap" Text="dodge (boots)" VerticalAlignment="Top" Width="85" RenderTransformOrigin="0.5,0.5" />
                    <TextBox x:Name="tb_AC_DODGE_b" HorizontalAlignment="Left" Margin="165,696,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="0"/>
                    <TextBox x:Name="tb_AC_DODGE_p" HorizontalAlignment="Left" Margin="192,696,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="0"/>
                    <TextBox x:Name="tb_AC_DODGE_s" HorizontalAlignment="Left" Margin="219,696,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="0"/>
                    <TextBox x:Name="tb_AC_DODGE_BASE" HorizontalAlignment="Left" Margin="138,696,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="5"/>
                    <TextBlock HorizontalAlignment="Left" Margin="22,522,0,0" TextWrapping="Wrap" Text="ARMOR CLASS" VerticalAlignment="Top" Width="80" Foreground="Black" Background="White"/>
                    <Rectangle Height="120" Stroke="Black" Width="257" VerticalAlignment="Top" Margin="246,549,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Text="additional dodge" Width="92" Foreground="Black" Background="White" VerticalAlignment="Top" Margin="274,540,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Text="epic mage armor (5)" Width="109" VerticalAlignment="Top" Margin="251,557,0,0" HorizontalAlignment="Left"/>
                    <CheckBox x:Name="chb_EMA" Content="" VerticalAlignment="Top" Margin="366,558,0,0" HorizontalAlignment="Left" />
                    <TextBlock TextWrapping="Wrap" Text="divine shield (CHA)" Width="111" VerticalAlignment="Top" Margin="251,572,0,0" HorizontalAlignment="Left"/>
                    <CheckBox x:Name="chb_DSH" Content="" VerticalAlignment="Top" Margin="366,573,0,0" HorizontalAlignment="Left" />
                    <TextBlock TextWrapping="Wrap" Text="defensive stance (4)" Width="106" VerticalAlignment="Top" Margin="251,587,0,0" HorizontalAlignment="Left"/>
                    <CheckBox x:Name="chb_DS" Content="" VerticalAlignment="Top" Margin="366,588,0,0" HorizontalAlignment="Left" />
                    <TextBlock TextWrapping="Wrap" Text="mage armor (1)" Width="99" VerticalAlignment="Top" Margin="251,602,0,0" HorizontalAlignment="Left"/>
                    <CheckBox x:Name="chb_MA" Content="" VerticalAlignment="Top" Margin="366,603,0,0" HorizontalAlignment="Left" />
                    <TextBlock TextWrapping="Wrap" Width="85" RenderTransformOrigin="0.5,0.5" Height="16" VerticalAlignment="Top" Margin="385,555,0,0" HorizontalAlignment="Left" ><Run Text="bard (song)"/><LineBreak/><Run/></TextBlock>
                    <TextBox x:Name="tb_AC_BARDSONG" TextWrapping="Wrap" Width="22" Text="0" VerticalAlignment="Top" Margin="458,555,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Width="85" RenderTransformOrigin="0.5,0.5" Height="16" Text="shd (evade)" VerticalAlignment="Top" Margin="385,576,0,0" HorizontalAlignment="Left" />
                    <TextBox x:Name="tb_AC_SHADOWEVADE" TextWrapping="Wrap" Width="22" Text="0" VerticalAlignment="Top" Margin="458,576,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_AC_DODGE_SUM_b" TextWrapping="Wrap" Width="22" Text="0" IsEnabled="False" VerticalAlignment="Top" Margin="0,643,0,0" HorizontalAlignment="Center"/>
                    <TextBox x:Name="tb_AC_DODGE_SUM_p" TextWrapping="Wrap" Width="22" Text="0" IsEnabled="False" VerticalAlignment="Top" Margin="420,643,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_AC_DODGE_SUM_s" TextWrapping="Wrap" Width="22" Text="0" IsEnabled="False" VerticalAlignment="Top" Margin="447,643,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_AC_DODGE_SUM_BASE" TextWrapping="Wrap" Width="22" Text="5" IsEnabled="False" VerticalAlignment="Top" Margin="366,643,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_AC_DODGE_CAP" TextWrapping="Wrap" Width="27" Text="15" IsEnabled="False" VerticalAlignment="Top" Margin="254,643,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Text=" cap " Width="26" VerticalAlignment="Top" Margin="281,644,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Text="sum" Width="26" VerticalAlignment="Top" Margin="334,644,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Width="62" VerticalAlignment="Top" Margin="385,600,0,0" HorizontalAlignment="Left"><Run Text="unc. dodge"/><LineBreak/><Run Text="def. awar"/></TextBlock>
                    <CheckBox x:Name="chb_AC_DODGE" Content="" VerticalAlignment="Top" Margin="460,609,0,0" HorizontalAlignment="Left" />
                    <TextBlock TextWrapping="Wrap" Text="haste (4)" Width="99" VerticalAlignment="Top" Margin="251,617,0,0" HorizontalAlignment="Left"/>
                    <CheckBox x:Name="chb_AC_HASTE" Content="" VerticalAlignment="Top" Margin="366,618,0,0" HorizontalAlignment="Left" />
                    <TextBox x:Name="tb_AC_BARDSONG_MOD" TextWrapping="Wrap" Width="17" Text="0" IsEnabled="False" VerticalAlignment="Top" Margin="482,555,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_AC_SHADOWEVADE_MOD" TextWrapping="Wrap" Width="17" Text="0" IsEnabled="False" VerticalAlignment="Top" Margin="482,576,0,0" HorizontalAlignment="Left"/>
                    <TextBlock HorizontalAlignment="Left" Margin="68,599,0,0" TextWrapping="Wrap" Text="blades (6)" VerticalAlignment="Top" Width="58"/>
                    <CheckBox x:Name="chb_AC_BLADES" Content="" HorizontalAlignment="Left" Margin="144,600,0,0" VerticalAlignment="Top" />
                    <TextBlock HorizontalAlignment="Left" Margin="68,618,0,0" TextWrapping="Wrap" Text="gnome (6)" VerticalAlignment="Top" Width="58"/>
                    <CheckBox x:Name="chb_AC_GNOME" Content="" HorizontalAlignment="Left" Margin="144,619,0,0" VerticalAlignment="Top" />
                    <Rectangle Height="70" Stroke="Black" Width="145" VerticalAlignment="Top" HorizontalAlignment="Left" Margin="638,548,0,0"/>
                    <TextBox x:Name="tb_AC_SUM_b" TextWrapping="Wrap" Width="27" Text="0" IsEnabled="False" VerticalAlignment="Top" Margin="693,593,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_AC_SUM_p" TextWrapping="Wrap" Width="27" Text="0" IsEnabled="False" VerticalAlignment="Top" Margin="721,593,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_AC_SUM_s" TextWrapping="Wrap" Width="27" Text="0" IsEnabled="False" VerticalAlignment="Top" Margin="749,593,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_AC_SUM_BASE" TextWrapping="Wrap" Width="27" Text="0" IsEnabled="False" VerticalAlignment="Top" Margin="665,593,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_AC_SUM_FF_difference" TextWrapping="Wrap" Width="27" Text="0" IsEnabled="False" VerticalAlignment="Top" Margin="693,574,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_AC_SUM_FF" TextWrapping="Wrap" Width="27" Text="0" IsEnabled="False" VerticalAlignment="Top" Margin="665,574,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_AC_SUM_TA" TextWrapping="Wrap" Width="27" Text="0" IsEnabled="False" VerticalAlignment="Top" Margin="665,555,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Text="sum" Width="26" VerticalAlignment="Top" Margin="640,594,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Text="ff" Width="26" VerticalAlignment="Top" Margin="640,575,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Text="ta" Width="26" VerticalAlignment="Top" Margin="640,556,0,0" HorizontalAlignment="Left"/>
                    <TextBlock HorizontalAlignment="Left" Margin="68,636,0,0" TextWrapping="Wrap" Text="sagra (*1,5)" VerticalAlignment="Top" Width="69"/>
                    <CheckBox x:Name="chb_AC_SAGRA" Content="" HorizontalAlignment="Left" Margin="144,637,0,0" VerticalAlignment="Top" />
                    <TextBlock HorizontalAlignment="Left" Margin="514,540,0,0" TextWrapping="Wrap" Text="stat+class" VerticalAlignment="Top" Width="53" Foreground="Black" Background="White"/>
                    <TextBlock HorizontalAlignment="Left" Margin="639,623,0,0" TextWrapping="Wrap" Text="gnome/halfling" VerticalAlignment="Top" Width="88"/>
                    <CheckBox x:Name="chb_AC_SIZEBONUS" Content="" HorizontalAlignment="Left" Margin="732,623,0,0" VerticalAlignment="Top" />
                    <TextBox x:Name="tb_AC_SUM_BASE_EQUIP" TextWrapping="Wrap" Width="70" Text="0" IsEnabled="False" VerticalAlignment="Top" Margin="420,677,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Width="86" VerticalAlignment="Top" Margin="246,679,0,0" HorizontalAlignment="Left"><Run Text="sum"/><Run Text=" base equip"/></TextBlock>
                    <TextBox x:Name="tb_AC_SUM_BASE_EQUIP_DODGE" TextWrapping="Wrap" Width="70" Text="0" IsEnabled="False" VerticalAlignment="Top" Margin="420,697,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Width="142" VerticalAlignment="Top" Margin="246,698,0,0" HorizontalAlignment="Left"><Run Text="sum"/><Run Text=" base equip+all dodge"/></TextBlock>
                    <TextBox x:Name="tb_AC_string" HorizontalAlignment="Left" Margin="14,724,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="769" Height="44" Text="Купи череп, стервец!"/>
                    <TextBlock HorizontalAlignment="Left" Margin="30,261,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="233" Foreground="Black" Background="White"><Run Text="Save Throws ("/><Run Text="сумма классов до"/><Run Language="ru-ru" Text=" "/><Run Text="20 левела"/><Run Text=")"/></TextBlock>
                    <ComboBox x:Name="cmb_RACE" HorizontalAlignment="Left" Margin="41,20,0,0" VerticalAlignment="Top" Width="177"/>
                    <TextBlock HorizontalAlignment="Left" Margin="18,153,0,0" TextWrapping="Wrap" Text="int" VerticalAlignment="Top" Width="30"/>
                    <TextBox x:Name="tb_INT" HorizontalAlignment="Left" Margin="138,154,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="8"/>
                    <TextBox x:Name="tb_modINT" HorizontalAlignment="Left" Margin="162,154,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_ABILITY_POINTS" HorizontalAlignment="Left" Margin="68,199,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="31" Text="30" IsEnabled="False"/>
                    <TextBox x:Name="tb_CON_START" TextWrapping="Wrap" Width="22" Text="8" VerticalAlignment="Top" Margin="41,108,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_DEX_START" TextWrapping="Wrap" Width="22" Text="8" VerticalAlignment="Top" Margin="41,85,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_WIS_START" TextWrapping="Wrap" Width="22" Text="8" VerticalAlignment="Top" Margin="41,131,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_STR_START" TextWrapping="Wrap" Width="22" Text="8" VerticalAlignment="Top" Margin="41,64,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_CHA_START" HorizontalAlignment="Left" Margin="41,177,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="8"/>
                    <TextBox x:Name="tb_INT_START" HorizontalAlignment="Left" Margin="41,154,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="22" Text="8"/>
                    <Button x:Name="bt_STR_PLUS" Content="+" HorizontalAlignment="Left" Margin="68,64,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <Button x:Name="bt_STR_MINUS" Content="-" HorizontalAlignment="Left" Margin="84,64,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <Button x:Name="bt_DEX_PLUS" Content="+" HorizontalAlignment="Left" Margin="68,85,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <Button x:Name="bt_DEX_MINUS" Content="-" HorizontalAlignment="Left" Margin="84,85,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <Button x:Name="bt_CON_PLUS" Content="+" HorizontalAlignment="Left" Margin="68,108,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <Button x:Name="bt_CON_MINUS" Content="-" HorizontalAlignment="Left" Margin="84,108,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <Button x:Name="bt_WIS_PLUS" Content="+" HorizontalAlignment="Left" Margin="68,131,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <Button x:Name="bt_WIS_MINUS" Content="-" HorizontalAlignment="Left" Margin="84,131,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <Button x:Name="bt_INT_PLUS" Content="+" HorizontalAlignment="Left" Margin="68,154,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <Button x:Name="bt_INT_MINUS" Content="-" HorizontalAlignment="Left" Margin="84,154,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <Button x:Name="bt_CHA_PLUS" Content="+" HorizontalAlignment="Left" Margin="68,177,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <Button x:Name="bt_CHA_MINUS" Content="-" HorizontalAlignment="Left" Margin="84,177,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <Button x:Name="bt_STR12" Content="0" HorizontalAlignment="Left" Height="18" Margin="107,64,0,0" VerticalAlignment="Top" Width="29"/>
                    <Button x:Name="bt_DEX12" Content="0" HorizontalAlignment="Left" Height="18" Margin="107,85,0,0" VerticalAlignment="Top" Width="29"/>
                    <Button x:Name="bt_CON12" Content="0" HorizontalAlignment="Left" Height="18" Margin="107,108,0,0" VerticalAlignment="Top" Width="29"/>
                    <Button x:Name="bt_WIS12" Content="0" HorizontalAlignment="Left" Height="18" Margin="107,131,0,0" VerticalAlignment="Top" Width="29"/>
                    <Button x:Name="bt_INT12" Content="0" HorizontalAlignment="Left" Height="18" Margin="107,154,0,0" VerticalAlignment="Top" Width="29"/>
                    <Button x:Name="bt_CHA12" Content="0" HorizontalAlignment="Left" Height="18" Margin="107,177,0,0" VerticalAlignment="Top" Width="29"/>
                    <Button x:Name="bt_STR_PLUS_LVLUP" Content="+" HorizontalAlignment="Left" Margin="187,64,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <Button x:Name="bt_STR_MINUS_LVLUP" Content="-" HorizontalAlignment="Left" Margin="203,64,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <Button x:Name="bt_DEX_PLUS_LVLUP" Content="+" HorizontalAlignment="Left" Margin="187,85,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <Button x:Name="bt_DEX_MINUS_LVLUP" Content="-" HorizontalAlignment="Left" Margin="203,85,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <Button x:Name="bt_CON_PLUS_LVLUP" Content="+" HorizontalAlignment="Left" Margin="187,108,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <Button x:Name="bt_CON_MINUS_LVLUP" Content="-" HorizontalAlignment="Left" Margin="203,108,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <Button x:Name="bt_WIS_PLUS_LVLUP" Content="+" HorizontalAlignment="Left" Margin="187,131,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <Button x:Name="bt_WIS_MINUS_LVLUP" Content="-" HorizontalAlignment="Left" Margin="203,131,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <Button x:Name="bt_INT_PLUS_LVLUP" Content="+" HorizontalAlignment="Left" Margin="187,154,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <Button x:Name="bt_INT_MINUS_LVLUP" Content="-" HorizontalAlignment="Left" Margin="203,154,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <Button x:Name="bt_CHA_PLUS_LVLUP" Content="+" HorizontalAlignment="Left" Margin="187,177,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <Button x:Name="bt_CHA_MINUS_LVLUP" Content="-" HorizontalAlignment="Left" Margin="203,177,0,0" VerticalAlignment="Top" Width="15" Height="18"/>
                    <TextBox x:Name="tb_ABILITY_POINTS_LEVELUP" HorizontalAlignment="Left" Margin="188,199,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" Text="10" IsEnabled="False"/>
                    <TextBox x:Name="tb_CON_MOD2" HorizontalAlignment="Left" Margin="440,418,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_WIS_MOD2" HorizontalAlignment="Left" Margin="510,418,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_CHA_MOD2" HorizontalAlignment="Left" Margin="475,439,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBox x:Name="tb_DEX_MOD2" HorizontalAlignment="Left" Margin="475,418,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False" Text="0"/>
                    <TextBlock TextWrapping="Wrap" Text="con" Width="20" VerticalAlignment="Top" Margin="445,402,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Text="dex" Width="20" VerticalAlignment="Top" Margin="479,402,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Text="wis" Width="17" VerticalAlignment="Top" Margin="514,402,0,0" HorizontalAlignment="Left"/>
                    <TextBlock HorizontalAlignment="Left" Margin="453,440,0,0" TextWrapping="Wrap" Text="cha" VerticalAlignment="Top" Width="22"/>
                    <Slider x:Name="sld_class1_CR" HorizontalAlignment="Left" Margin="406,64,0,0" VerticalAlignment="Top" Width="202" Height="22" SmallChange="1" TickPlacement="BottomRight" AutoToolTipPlacement="BottomRight" IsEnabled="False" IsSnapToTickEnabled="True"/>
                    <ComboBox x:Name="cmb_class1_CR" HorizontalAlignment="Left" Margin="238,64,0,0" VerticalAlignment="Top" Width="154"/>
                    <ComboBox x:Name="cmb_class2_CR" HorizontalAlignment="Left" Margin="238,91,0,0" VerticalAlignment="Top" Width="154"/>
                    <Slider x:Name="sld_class2_CR" HorizontalAlignment="Left" Margin="406,91,0,0" VerticalAlignment="Top" Width="202" Height="22" SmallChange="1" TickPlacement="BottomRight" AutoToolTipPlacement="BottomRight" IsEnabled="False" IsSnapToTickEnabled="True"/>
                    <ComboBox x:Name="cmb_class3_CR" HorizontalAlignment="Left" Margin="238,118,0,0" VerticalAlignment="Top" Width="154"/>
                    <Slider x:Name="sld_class3_CR" HorizontalAlignment="Left" Margin="406,118,0,0" VerticalAlignment="Top" Width="202" Height="22" SmallChange="1" TickPlacement="BottomRight" AutoToolTipPlacement="BottomRight" IsEnabled="False" IsSnapToTickEnabled="True"/>
                    <ComboBox x:Name="cmb_class4_CR" HorizontalAlignment="Left" Margin="238,144,0,0" VerticalAlignment="Top" Width="154"/>
                    <Slider x:Name="sld_class4_CR" HorizontalAlignment="Left" Margin="406,144,0,0" VerticalAlignment="Top" Width="202" Height="22" SmallChange="1" TickPlacement="BottomRight" AutoToolTipPlacement="BottomRight" IsEnabled="False" IsSnapToTickEnabled="True"/>
                    <TextBox x:Name="tb_lvlSum_CR" HorizontalAlignment="Left" Margin="610,41,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="20" Text="0" IsEnabled="False"/>
                    <TextBox x:Name="tb_Sld1_CR" HorizontalAlignment="Left" Margin="610,64,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="20" IsEnabled="False"/>
                    <TextBox x:Name="tb_Sld2_CR" HorizontalAlignment="Left" Margin="610,91,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="20" IsEnabled="False"/>
                    <TextBox x:Name="tb_Sld3_CR" HorizontalAlignment="Left" Margin="610,118,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="20" IsEnabled="False"/>
                    <TextBox x:Name="tb_Sld4_CR" HorizontalAlignment="Left" Margin="610,145,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="20" IsEnabled="False"/>
                    <TextBox x:Name="tb_SKILLS1" HorizontalAlignment="Left" Margin="643,64,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False"/>
                    <TextBox x:Name="tb_SKILLS2" HorizontalAlignment="Left" Margin="643,91,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False"/>
                    <TextBox x:Name="tb_SKILLS3" HorizontalAlignment="Left" Margin="643,118,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="31" IsEnabled="False"/>
                    <TextBox x:Name="tb_SKILLS4" HorizontalAlignment="Left" Margin="643,145,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False"/>
                    <TextBox x:Name="tb_HP1" HorizontalAlignment="Left" Margin="678,64,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="42" IsEnabled="False"/>
                    <TextBox x:Name="tb_HP2" HorizontalAlignment="Left" Margin="678,91,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="42" IsEnabled="False"/>
                    <TextBox x:Name="tb_HP3" HorizontalAlignment="Left" Margin="678,118,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="42" IsEnabled="False"/>
                    <TextBox x:Name="tb_HP4" HorizontalAlignment="Left" Margin="678,145,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="42" IsEnabled="False"/>
                    <TextBox x:Name="tb_SKILLS_INT" HorizontalAlignment="Left" Margin="643,186,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False"/>
                    <TextBlock TextWrapping="Wrap" Text="skills" Width="31" VerticalAlignment="Top" Margin="644,47,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Text="hp" Width="32" VerticalAlignment="Top" Margin="678,47,0,0" HorizontalAlignment="Left"/>
                    <TextBlock TextWrapping="Wrap" Text="from int" Width="46" VerticalAlignment="Top" Margin="629,168,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_HP_CON" HorizontalAlignment="Left" Margin="678,186,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="42" IsEnabled="False"/>
                    <TextBlock TextWrapping="Wrap" Text="from con" Width="50" VerticalAlignment="Top" Margin="678,168,0,0" HorizontalAlignment="Left"/>
                    <TextBox x:Name="tb_SKILLS_SUM" HorizontalAlignment="Left" Margin="643,219,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="30" IsEnabled="False"/>
                    <TextBox x:Name="tb_HP_SUM" HorizontalAlignment="Left" Margin="678,219,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="42" IsEnabled="False"/>
                </Grid>
            </TabItem>
            <TabItem  Header="Save\Load">
                <Grid x:Name="tab2" Background="#FF7C7C7C">
					<Button x:Name="btn_Save" Content="Save" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top" Width="75"/>
					<Button x:Name="btn_Load" Content="Load" HorizontalAlignment="Left" Margin="10,35,0,0" VerticalAlignment="Top" Width="75"/>
				</Grid>
            </TabItem>
        </TabControl>
    </Grid>
</Window>
"@

$Global:xamGUI = [Windows.Markup.XamlReader]::Load((new-object System.Xml.XmlNodeReader $xmlWPF))

$xmlWPF.SelectNodes('//*[@*[contains(translate(name(.),"n","N"),"Name")]]') | %{
    Set-Variable -Name ($_.Name) -Value $xamGUI.FindName($_.Name) -Scope Global
    }


$fighter = @(
	[pscustomobject]@{fort=2;ref=0;will=0}
	[pscustomobject]@{fort=3;ref=0;will=0}
	[pscustomobject]@{fort=3;ref=1;will=1}
	[pscustomobject]@{fort=4;ref=1;will=1}
	[pscustomobject]@{fort=4;ref=1;will=1}
	[pscustomobject]@{fort=5;ref=2;will=2}
	[pscustomobject]@{fort=5;ref=2;will=2}
	[pscustomobject]@{fort=6;ref=2;will=2}
	[pscustomobject]@{fort=6;ref=3;will=3}
	[pscustomobject]@{fort=7;ref=3;will=3}
	[pscustomobject]@{fort=7;ref=3;will=3}
	[pscustomobject]@{fort=8;ref=4;will=4}
	[pscustomobject]@{fort=8;ref=4;will=4}
	[pscustomobject]@{fort=9;ref=4;will=4}
	[pscustomobject]@{fort=9;ref=5;will=5}
	[pscustomobject]@{fort=10;ref=5;will=5}
	[pscustomobject]@{fort=10;ref=5;will=5}
	[pscustomobject]@{fort=11;ref=6;will=6}
	[pscustomobject]@{fort=11;ref=6;will=6}
	[pscustomobject]@{fort=12;ref=6;will=6}
	)
$barbarian = $fighter
$paladin = $fighter
$ranger = $fighter
$blackguard = $fighter[0..9]
$pdk = $fighter[0..9]
$bard = @(
	[pscustomobject]@{fort=0;ref=2;will=2}
	[pscustomobject]@{fort=0;ref=3;will=3}
	[pscustomobject]@{fort=1;ref=3;will=3}
	[pscustomobject]@{fort=1;ref=4;will=4}
	[pscustomobject]@{fort=1;ref=4;will=4}
	[pscustomobject]@{fort=2;ref=5;will=5}
	[pscustomobject]@{fort=2;ref=5;will=5}
	[pscustomobject]@{fort=2;ref=6;will=6}
	[pscustomobject]@{fort=3;ref=6;will=6}
	[pscustomobject]@{fort=3;ref=7;will=7}
	[pscustomobject]@{fort=3;ref=7;will=7}
	[pscustomobject]@{fort=4;ref=8;will=8}
	[pscustomobject]@{fort=4;ref=8;will=8}
	[pscustomobject]@{fort=4;ref=9;will=9}
	[pscustomobject]@{fort=5;ref=9;will=9}
	[pscustomobject]@{fort=5;ref=10;will=10}
	[pscustomobject]@{fort=5;ref=10;will=10}
	[pscustomobject]@{fort=6;ref=11;will=11}
	[pscustomobject]@{fort=6;ref=11;will=11}
	[pscustomobject]@{fort=6;ref=12;will=12}
	)
$harperscout = $bard[0..4]
$cleric = @(
	[pscustomobject]@{fort=2;ref=0;will=2}
	[pscustomobject]@{fort=3;ref=0;will=3}
	[pscustomobject]@{fort=3;ref=1;will=3}
	[pscustomobject]@{fort=4;ref=1;will=4}
	[pscustomobject]@{fort=4;ref=1;will=4}
	[pscustomobject]@{fort=5;ref=2;will=5}
	[pscustomobject]@{fort=5;ref=2;will=5}
	[pscustomobject]@{fort=6;ref=2;will=6}
	[pscustomobject]@{fort=6;ref=3;will=6}
	[pscustomobject]@{fort=7;ref=3;will=7}
	[pscustomobject]@{fort=7;ref=3;will=7}
	[pscustomobject]@{fort=8;ref=4;will=8}
	[pscustomobject]@{fort=8;ref=4;will=8}
	[pscustomobject]@{fort=9;ref=4;will=9}
	[pscustomobject]@{fort=9;ref=5;will=9}
	[pscustomobject]@{fort=10;ref=5;will=10}
	[pscustomobject]@{fort=10;ref=5;will=10}
	[pscustomobject]@{fort=11;ref=6;will=11}
	[pscustomobject]@{fort=11;ref=6;will=11}
	[pscustomobject]@{fort=12;ref=6;will=12}
    )
$druid = $cleric
$palemaster = $cleric[0..9]
$dwarvendefender = $cleric[0..9]
$rdd = $cleric[0..9]
$monk =  @(
	[pscustomobject]@{fort=2;ref=2;will=2}
	[pscustomobject]@{fort=3;ref=3;will=3}
	[pscustomobject]@{fort=3;ref=3;will=3}
	[pscustomobject]@{fort=4;ref=4;will=4}
	[pscustomobject]@{fort=4;ref=4;will=4}
	[pscustomobject]@{fort=5;ref=5;will=5}
	[pscustomobject]@{fort=5;ref=5;will=5}
	[pscustomobject]@{fort=6;ref=6;will=6}
	[pscustomobject]@{fort=6;ref=6;will=6}
	[pscustomobject]@{fort=7;ref=7;will=7}
	[pscustomobject]@{fort=7;ref=7;will=7}
	[pscustomobject]@{fort=8;ref=8;will=8}
	[pscustomobject]@{fort=8;ref=8;will=8}
	[pscustomobject]@{fort=9;ref=9;will=9}
	[pscustomobject]@{fort=9;ref=9;will=9}
	[pscustomobject]@{fort=10;ref=10;will=10}
	[pscustomobject]@{fort=10;ref=10;will=10}
	[pscustomobject]@{fort=11;ref=11;will=11}
	[pscustomobject]@{fort=11;ref=11;will=11}
	[pscustomobject]@{fort=12;ref=12;will=12}
    )
$rogue = @(
	[pscustomobject]@{fort=0;ref=2;will=0}
	[pscustomobject]@{fort=0;ref=3;will=0}
	[pscustomobject]@{fort=1;ref=3;will=1}
	[pscustomobject]@{fort=1;ref=4;will=1}
	[pscustomobject]@{fort=1;ref=4;will=1}
	[pscustomobject]@{fort=2;ref=5;will=2}
	[pscustomobject]@{fort=2;ref=5;will=2}
	[pscustomobject]@{fort=2;ref=6;will=2}
	[pscustomobject]@{fort=3;ref=6;will=3}
	[pscustomobject]@{fort=3;ref=7;will=3}
	[pscustomobject]@{fort=3;ref=7;will=3}
	[pscustomobject]@{fort=4;ref=8;will=4}
	[pscustomobject]@{fort=4;ref=8;will=4}
	[pscustomobject]@{fort=4;ref=9;will=4}
	[pscustomobject]@{fort=5;ref=9;will=5}
	[pscustomobject]@{fort=5;ref=10;will=5}
	[pscustomobject]@{fort=5;ref=10;will=5}
	[pscustomobject]@{fort=6;ref=11;will=6}
	[pscustomobject]@{fort=6;ref=11;will=6}
	[pscustomobject]@{fort=6;ref=12;will=6}
	)
$shadowdancer = $rogue[0..9]
$assassin = $rogue[0..9]
$weaponmaster = $rogue[0..9]
$wizard = @(
	[pscustomobject]@{fort=0;ref=0;will=2}
	[pscustomobject]@{fort=0;ref=0;will=3}
	[pscustomobject]@{fort=1;ref=1;will=3}
	[pscustomobject]@{fort=1;ref=1;will=4}
	[pscustomobject]@{fort=1;ref=1;will=4}
	[pscustomobject]@{fort=2;ref=2;will=5}
	[pscustomobject]@{fort=2;ref=2;will=5}
	[pscustomobject]@{fort=2;ref=2;will=6}
	[pscustomobject]@{fort=3;ref=3;will=6}
	[pscustomobject]@{fort=3;ref=3;will=7}
	[pscustomobject]@{fort=3;ref=3;will=7}
	[pscustomobject]@{fort=4;ref=4;will=8}
	[pscustomobject]@{fort=4;ref=4;will=8}
	[pscustomobject]@{fort=4;ref=4;will=9}
	[pscustomobject]@{fort=5;ref=5;will=9}
	[pscustomobject]@{fort=5;ref=5;will=10}
	[pscustomobject]@{fort=5;ref=5;will=10}
	[pscustomobject]@{fort=6;ref=6;will=11}
	[pscustomobject]@{fort=6;ref=6;will=11}
	[pscustomobject]@{fort=6;ref=6;will=12}
	)
$sorcerer = $wizard
$arcanearcher = @(
	[pscustomobject]@{fort=2;ref=2;will=0}
	[pscustomobject]@{fort=3;ref=3;will=0}
	[pscustomobject]@{fort=3;ref=3;will=1}
	[pscustomobject]@{fort=4;ref=4;will=1}
	[pscustomobject]@{fort=4;ref=4;will=1}
	[pscustomobject]@{fort=5;ref=5;will=2}
	[pscustomobject]@{fort=5;ref=5;will=2}
	[pscustomobject]@{fort=6;ref=6;will=2}
	[pscustomobject]@{fort=6;ref=6;will=3}
	[pscustomobject]@{fort=7;ref=7;will=3}
	[pscustomobject]@{fort=7;ref=7;will=3}
	[pscustomobject]@{fort=8;ref=8;will=4}
	[pscustomobject]@{fort=8;ref=8;will=4}
	[pscustomobject]@{fort=9;ref=9;will=4}
	[pscustomobject]@{fort=9;ref=9;will=5}
	[pscustomobject]@{fort=10;ref=10;will=5}
	[pscustomobject]@{fort=10;ref=10;will=5}
	[pscustomobject]@{fort=11;ref=11;will=6}
	[pscustomobject]@{fort=11;ref=11;will=6}
	[pscustomobject]@{fort=12;ref=12;will=6}
	)
$championoftorm = $arcanearcher[0..9]
$shifter = $arcanearcher[0..9]

##############bab############
$babHigh = @(
	[pscustomobject]@{bab=1}
	[pscustomobject]@{bab=2}
	[pscustomobject]@{bab=3}
	[pscustomobject]@{bab=4}
	[pscustomobject]@{bab=5}
	[pscustomobject]@{bab=6}
	[pscustomobject]@{bab=7}
	[pscustomobject]@{bab=8}
	[pscustomobject]@{bab=9}
	[pscustomobject]@{bab=10}
	[pscustomobject]@{bab=11}
	[pscustomobject]@{bab=12}
	[pscustomobject]@{bab=13}
	[pscustomobject]@{bab=14}
	[pscustomobject]@{bab=15}
	[pscustomobject]@{bab=16}
	[pscustomobject]@{bab=17}
	[pscustomobject]@{bab=18}
	[pscustomobject]@{bab=19}
	[pscustomobject]@{bab=20}
	)
$babMid = @(
	[pscustomobject]@{bab=0}
	[pscustomobject]@{bab=1}
	[pscustomobject]@{bab=2}
	[pscustomobject]@{bab=3}
	[pscustomobject]@{bab=3}
	[pscustomobject]@{bab=4}
	[pscustomobject]@{bab=5}
	[pscustomobject]@{bab=6}
	[pscustomobject]@{bab=6}
	[pscustomobject]@{bab=7}
	[pscustomobject]@{bab=8}
	[pscustomobject]@{bab=9}
	[pscustomobject]@{bab=9}
	[pscustomobject]@{bab=10}
	[pscustomobject]@{bab=11}
	[pscustomobject]@{bab=12}
	[pscustomobject]@{bab=12}
	[pscustomobject]@{bab=13}
	[pscustomobject]@{bab=14}
	[pscustomobject]@{bab=15}
	)
$babLow = @(
	[pscustomobject]@{bab=0}
	[pscustomobject]@{bab=1}
	[pscustomobject]@{bab=1}
	[pscustomobject]@{bab=2}
	[pscustomobject]@{bab=2}
	[pscustomobject]@{bab=3}
	[pscustomobject]@{bab=3}
	[pscustomobject]@{bab=4}
	[pscustomobject]@{bab=4}
	[pscustomobject]@{bab=5}
	[pscustomobject]@{bab=5}
	[pscustomobject]@{bab=6}
	[pscustomobject]@{bab=6}
	[pscustomobject]@{bab=7}
	[pscustomobject]@{bab=7}
	[pscustomobject]@{bab=8}
	[pscustomobject]@{bab=8}
	[pscustomobject]@{bab=9}
	[pscustomobject]@{bab=9}
	[pscustomobject]@{bab=10}
	)

$fighterBAB = $babHigh
$barbarianBAB = $babHigh
$paladinBAB = $babHigh
$rangerBAB = $babHigh
$blackguardBAB = $babHigh
$pdkBAB = $babHigh[0..9]
$bardBAB = $babMid
$harperscoutBAB = $babMid[0..4]
$clericBAB = $babMid
$druidBAB = $babMid
$palemasterBAB = $babLow[0..9]
$dwarvendefenderBAB = $babHigh[0..9]
$rddBAB = $babMid[0..9]
$monkBAB = $babMid
#$monkSialaBAB = $babHigh
$rogueBAB = $babMid
$shadowdancerBAB = $babMid[0..9]
$assassinBAB = $babMid[0..9]
$weaponmasterBAB = $babHigh[0..9]
$wizardBAB = $babLow
$sorcererBAB = $babLow
$arcanearcherBAB = $babHigh[0..9]
$championoftormBAB = $babHigh[0..9]
$shifterBAB = $babMid[0..9]

################################### skills
$fighterSKILL		= 2
$barbarianSKILL		= 4
$paladinSKILL		= 2
$rangerSKILL		= 4
$blackguardSKILL	= 2
$pdkSKILL			= 2
$bardSKILL			= 4
$harperscoutSKILL	= 4
$clericSKILL		= 2
$druidSKILL			= 4
$palemasterSKILL	= 2
$dwarvendefenderSKILL = 2
$rddSKILL			= 2
$monkSKILL			= 4
$rogueSKILL			= 8
$shadowdancerSKILL	= 6
$assassinSKILL		= 4
$weaponmasterSKILL	= 2
$wizardSKILL		= 2
$sorcererSKILL		= 2
$arcanearcherSKILL	= 4
$championoftormSKILL= 2
$shifterSKILL		= 4
################################### hp
$fighterHP			= 10
$barbarianHP		= 12
$paladinHP			= 10
$rangerHP			= 10
$blackguardHP		= 10
$pdkHP				= 10
$bardHP				= 6
$harperscoutHP		= 6
$clericHP			= 8
$druidHP			= 8
$palemasterHP		= 6
$dwarvendefenderHP	= 12
$rddHP				= 6,8,10
$monkHP				= 8
$rogueHP			= 6
$shadowdancerHP		= 8
$assassinHP			= 6
$weaponmasterHP		= 10
$wizardHP			= 4
$sorcererHP			= 4
$arcanearcherHP		= 8
$championoftormHP	= 10
$shifterHP			= 8

###################################

$classes = "barbarian","bard","cleric","druid","fighter","monk","paladin","ranger","rogue","sorcerer","wizard","shadowdancer","harperscout","arcanearcher","assassin","blackguard","championoftorm","weaponmaster","palemaster","shifter","dwarvendefender","rdd","pdk"
$nClasses = "barbarian","bard","cleric","druid","fighter","monk","paladin","ranger","rogue","sorcerer","wizard"
$eClasses = "shadowdancer","harperscout","arcanearcher","assassin","blackguard","championoftorm","weaponmaster","palemaster","shifter","dwarvendefender","rdd","pdk"
$sagraClasses = "barbarian","fighter","weaponmaster","dwarvendefender","<none>"
$races = "dwarf","elf","gnome","halfling","half-elf","half-orc","human"

$cmb_RACE.Items.Add("<none>") | Out-Null
$races| foreach {
    $cmb_RACE.Items.Add($_)
    $cmb_RACE.SelectedIndex = 0
} | Out-Null

$global:dwarf = 0
$global:elf = 0
$global:gnome = 0
$global:halfling = 0 
$global:he = 0
$global:orc = 0
$global:human = 0

$cmb_RACE.add_SelectionChanged({
    
    $chb_gnomeAB.IsChecked = $false
    $chb_gnomeAB.IsEnabled = $true
    $chb_AC_SIZEBONUS.IsChecked = $false
    $chb_AC_SIZEBONUS.IsEnabled = $true
    $chb_AC_GNOME.IsChecked = $false
    $chb_AC_GNOME.IsEnabled = $true
    $chb_halfelfAB.IsChecked = $false
    $chb_halfelfAB.IsEnabled = $true

    $global:dwarf = 0
    $global:elf = 0
    $global:gnome = 0
    $global:halfling = 0 
    $global:he = 0
    $global:orc = 0
    $global:human = 0
    
    switch($cmb_RACE.selecteditem)
    {
        "dwarf" 
        {   
            $global:dwarf = 1
        }
        "elf" 
        {
            $global:elf = 1
        }
        "gnome" 
        { 
            $chb_gnomeAB.IsChecked = $true
            $chb_gnomeAB.IsEnabled = $false
            $chb_AC_SIZEBONUS.IsChecked = $true
            $chb_AC_SIZEBONUS.IsEnabled = $false
            $chb_AC_GNOME.IsChecked = $true
            $chb_AC_GNOME.IsEnabled = $false
            $global:gnome = 1
        }
        "halfling" 
        {
            $chb_gnomeAB.IsChecked = $true
            $chb_gnomeAB.IsEnabled = $false
            $chb_AC_SIZEBONUS.IsChecked = $true
            $chb_AC_SIZEBONUS.IsEnabled = $false
            $global:halfling = 1 
        }
        "half-elf" 
        {
            $chb_halfelfAB.IsChecked = $true
            $chb_halfelfAB.IsEnabled = $false
            $global:he = 1
            
        }
        "half-orc" 
        {
            $global:orc = 1
        }
        "human" 
        {
            $global:human = 1
            #+1skill
        }
    }
	Abilities_CALC
})

$BTN_PLUSES = $bt_STR_PLUS,$bt_DEX_PLUS,$bt_CON_PLUS,$bt_WIS_PLUS,$bt_INT_PLUS,$bt_CHA_PLUS
$BTN_MINUSES = $bt_STR_MINUS,$bt_DEX_MINUS,$bt_CON_MINUS,$bt_WIS_MINUS,$bt_INT_MINUS,$bt_CHA_MINUS
$TB_START = $tb_STR_START,$tb_DEX_START,$tb_CON_START,$tb_WIS_START,$tb_INT_START,$tb_CHA_START
$global:ABILITIES = [int]$str,[int]$dex,[int]$con,[int]$wis,[int]$int,[int]$cha
$ABILITIES_TB = $tb_STR,$tb_DEX,$tb_CON,$tb_WIS,$tb_INT,$tb_CHA
$EQUIP12 = $bt_STR12,$bt_DEX12,$bt_CON12,$bt_WIS12,$bt_INT12,$bt_CHA12
$global:start_abilities = @(8,8,8,8,8,8)
$global:lvlup_abilities = @(0,0,0,0,0,0)
$BTN_LVL_UP_PLUS = $bt_STR_PLUS_LVLUP,$bt_DEX_PLUS_LVLUP,$bt_CON_PLUS_LVLUP,$bt_WIS_PLUS_LVLUP,$bt_INT_PLUS_LVLUP,$bt_CHA_PLUS_LVLUP
$BTN_LVL_UP_MINUS = $bt_STR_MINUS_LVLUP,$bt_DEX_MINUS_LVLUP,$bt_CON_MINUS_LVLUP,$bt_WIS_MINUS_LVLUP,$bt_INT_MINUS_LVLUP,$bt_CHA_MINUS_LVLUP
function Abilities_CALC
{    
	for($count = 0; $count -lt 6; $count++)
	{
		switch ($global:start_abilities[$count])
		{
			8 {$__costStat = 0}
			9 {$__costStat = 1}
			10 {$__costStat = 2}
			11 {$__costStat = 3}
			12 {$__costStat = 4}
			13 {$__costStat = 5}
			14 {$__costStat = 6}
			15 {$__costStat = 8}
			16 {$__costStat = 10}
			17 {$__costStat = 13}
			18 {$__costStat = 16}
		}
		#$global:start_abilities[$count] = $__costStat
		$global:ABILITIES[$count] = $__costStat
	}
    $tb_ABILITY_POINTS.text = 30 - ($global:ABILITIES | Measure-Object -Sum).Sum
	$tb_ABILITY_POINTS_LEVELUP.text = 10 - ($global:lvlup_abilities | Measure-Object -Sum).Sum
    #$ABILITIES_TB[$count].text = $TB_START[$count].text +-race +-12 +-ups +- classes
    #$global:start_abilities[$count] = $__costStat
	#$rddSTR = 8; $rddCON = 2; $rddINT = 2; $rddCHA = 2
	[int]$tb_STR_START.text = [int]$global:start_abilities[0] - 2 * $global:gnome + 2 * $global:orc - 2 * $global:halfling
    [int]$tb_DEX_START.text = [int]$global:start_abilities[1] + 2 * $global:elf + 2 * $global:halfling
    [int]$tb_CON_START.text = [int]$global:start_abilities[2] + 2 * $global:dwarf - 2 * $global:elf + 2 * $global:gnome
    [int]$tb_WIS_START.text = [int]$global:start_abilities[3]
    [int]$tb_INT_START.text = [int]$global:start_abilities[4] - 2 * $global:orc
    [int]$tb_CHA_START.text = [int]$global:start_abilities[5] - 2 * $global:dwarf - 2 * $global:orc

	$tb_STR.text = [int]$tb_STR_START.text + [int]$EQUIP12[0].content + $global:lvlup_abilities[0] + $global:rddSTR
    $tb_DEX.text = [int]$tb_DEX_START.text + [int]$EQUIP12[1].content + $global:lvlup_abilities[1]
    $tb_CON.text = [int]$tb_CON_START.text + [int]$EQUIP12[2].content + $global:lvlup_abilities[2] + $global:rddCON
    $tb_WIS.text = [int]$tb_WIS_START.text + [int]$EQUIP12[3].content + $global:lvlup_abilities[3]
    $tb_INT.text = [int]$tb_INT_START.text + [int]$EQUIP12[4].content + $global:lvlup_abilities[4] + $global:rddINT
    $tb_CHA.text = [int]$tb_CHA_START.text + [int]$EQUIP12[5].content + $global:lvlup_abilities[5] + $global:rddCHA

}

for($count = 0; $count -lt 6; $count++)
{
    $BTN_PLUSES[$count].add_Click({
        if($global:start_abilities[$count] -in 8..17)
        {
            $global:start_abilities[$count] = $global:start_abilities[$count] + 1
        }
		Abilities_CALC
    }.GetNewClosure())

    $BTN_MINUSES[$count].add_Click({
        if($global:start_abilities[$count] -in 9..18)
        {
			$global:start_abilities[$count] = $global:start_abilities[$count] - 1
                     
        }
		Abilities_CALC
    }.GetNewClosure())
    
    $EQUIP12[$count].add_Click({
        if($EQUIP12[$count].content -eq "0")
        {
            $EQUIP12[$count].content = "12"
        }
        elseif($EQUIP12[$count].content -eq "12")
        {
            $EQUIP12[$count].content = "0"
        }
        Abilities_CALC
    }.GetNewClosure())

	$BTN_LVL_UP_PLUS[$count].add_Click({
		if($global:lvlup_abilities[$count] -in 0..9)
		{
			$global:lvlup_abilities[$count] = $global:lvlup_abilities[$count] + 1
		}Abilities_CALC
	}.GetNewClosure())
	
	$BTN_LVL_UP_MINUS[$count].add_Click({
		if($global:lvlup_abilities[$count] -in 1..10)
		{
			$global:lvlup_abilities[$count] = $global:lvlup_abilities[$count] - 1
		}Abilities_CALC
	}.GetNewClosure())
}




function cmb_filler
{
	param( 
		$__cmb
	)
	$__cmb.Items.Add("<none>") | Out-Null
	$classes | foreach {
		$__cmb.Items.Add($_)
		$__cmb.SelectedIndex = 0
	} | Out-Null
}

cmb_filler $cmb_class1
cmb_filler $cmb_class2
cmb_filler $cmb_class3
cmb_filler $cmb_class4
cmb_filler $cmb_class1_CR
cmb_filler $cmb_class2_CR
cmb_filler $cmb_class3_CR
cmb_filler $cmb_class4_CR

$__armor = @(0,1,2,3,4,5,6,7,8)
$__shield = @(0,1,2,3)

$__armor | foreach {
	$cmb_AC_armor_base.Items.Add($_)
	$cmb_AC_armor_base.SelectedIndex = 0
} | Out-Null

$__shield | foreach {
	$cmb_AC_shield_base.Items.Add($_)
	$cmb_AC_shield_base.SelectedIndex = 0
} | Out-Null

##################################################
function slider_combobox 
{
	param ($__comboBox,$__slider,$__tb_sld,$__tbF,$__tbR,$__tbW,$__tb_class_BAB)
	$__comboBox.add_SelectionChanged(
	{
		if($this.selecteditem -in $eClasses)
		{
			$__slider.IsEnabled = $true
			$__slider.minimum = "1"
			$__slider.maximum = "10"
		}
		elseif($this.selecteditem -in $nClasses)
		{
			$__slider.IsEnabled = $true
			$__slider.minimum = "1"
			$__slider.maximum = "20"
		}
		elseif($this.selecteditem -eq "<none>")
		{
			$__slider.IsEnabled = $false
			$__slider.value = 0
			$__tb_sld.text = 0
			$__tbF.text = 0
			$__tbR.text = 0
			$__tbW.text = 0
		}
	}.GetNewClosure())

	$__slider.add_valuechanged(
	{
		$__tb_sld.text = $__slider.value
		
		if($__comboBox.selecteditem -eq "<none>")
		{
			$tb_Sld1.text = 0
			$__tb_sld.text = 0

			$__tbF.text = 0
			$__tbR.text = 0
			$__tbW.text = 0
			
			$__tb_class_BAB.Text = 0
		}
		else
		{
			$__class = Get-Variable(($__comboBox.selecteditem))
			$__index = $__slider.value - 1
			$__tbF.text = $__class.value[$__index].fort
			$__tbR.text = $__class.value[$__index].ref
			$__tbW.text = $__class.value[$__index].will

			$__classBAB = Get-Variable( ($__comboBox.selecteditem) + "BAB")
			$__tb_class_BAB.Text = $__classBAB.value[$__index].BAB
		}

		$tb_lvlSum.text = [int]$tb_Sld1.text + [int]$tb_Sld2.text + [int]$tb_Sld3.text + [int]$tb_Sld4.text
		$tb_SUM_BAB.text = [int]$tb_class1_BAB.Text + [int]$tb_class2_BAB.Text + [int]$tb_class3_BAB.Text + [int]$tb_class4_BAB.Text
		#checkbox_calculation
	}.GetNewClosure())
}

function SldCMb_calculation 
{
	slider_combobox $cmb_class1 $sld_class1 $tb_Sld1 $tb_class1_f $tb_class1_r $tb_class1_w $tb_class1_BAB
	slider_combobox $cmb_class2 $sld_class2 $tb_Sld2 $tb_class2_f $tb_class2_r $tb_class2_w $tb_class2_BAB
	slider_combobox $cmb_class3 $sld_class3 $tb_Sld3 $tb_class3_f $tb_class3_r $tb_class3_w $tb_class3_BAB
	slider_combobox $cmb_class4 $sld_class4 $tb_Sld4 $tb_class4_f $tb_class4_r $tb_class4_w $tb_class4_BAB
}
SldCMb_calculation 
#####################################



function slider_combobox2 
{	
	param ($__comboBox,$__slider,$__tb_sld,$__skills,$__HP,$__comboBox2)
	$__comboBox.add_SelectionChanged(
	{
		set_default
		if($this.selecteditem -in $eClasses)
		{
			$__slider.IsEnabled = $true
			$__slider.minimum = "1"
			$__slider.maximum = "30"
		}
		elseif($this.selecteditem -in $nClasses)
		{
			$__slider.IsEnabled = $true
			$__slider.minimum = "1"
			$__slider.maximum = "40"
		}
		elseif($this.selecteditem -eq "<none>")
		{
			$__slider.IsEnabled = $false
			$__slider.value = 0
			$__tb_sld.text = 0
		}
        $__comboBox2.selecteditem = $this.selecteditem
	}.GetNewClosure())

	$__slider.add_valuechanged(
	{
		$__tb_sld.text = $__slider.value
		
		if($__comboBox.selecteditem -eq "<none>")
		{
			$tb_Sld1.text = 0
			$__tb_sld.text = 0
		}
		else
		{
			$__class = Get-Variable(($__comboBox.selecteditem))
			$__index = $__slider.value - 1

		}
		$__classSKILL = Get-Variable( ($__comboBox.selecteditem) + "SKILL")
		
		$__skills.text = $__classSKILL.value * 4 + ([int]$__tb_sld.text - 1 ) * $__classSKILL.value

		$tb_lvlSum_CR.text = [int]$tb_Sld1_CR.text + [int]$tb_Sld2_CR.text + [int]$tb_Sld3_CR.text + [int]$tb_Sld4_CR.text
		$tb_SKILLS_INT.text = [int]$tb_lvlSum_CR.text * ([math]::Floor(([int]$tb_INT_START.text - 10)/2) + $global:human ) + ([math]::Floor(([int]$tb_INT_START.text - 10)/2) ) * 4
		$tb_HP_CON.text = [int]$tb_lvlSum_CR.text * [int]$tb_modCON.text

		if($__comboBox.selecteditem -eq "rdd")
		{
			switch($__tb_sld.text)
			{
				{$_ -in 1..3} {$rddHP = 6 * $__tb_sld.text}
				{$_ -in 4..5} {$rddHP = 18 + (8 * ($__tb_sld.text -3))}
				{$_ -in 6..10} {$rddHP = 34 + (10 * ($__tb_sld.text -5))}
				{$_ -in 11..30} {$rddHP = 84 + (12 * ($__tb_sld.text -10))}
			}
			$__HP.text = $rddHP
		}
		else 
		{
			$__classHP = Get-Variable( ($__comboBox.selecteditem) + "HP")
			$__HP.text = [int]$__classHP.value * [int]$__tb_sld.text
		}

		$tb_SKILLS_SUM.text = [int]$tb_SKILLS1.text + [int]$tb_SKILLS2.text + [int]$tb_SKILLS3.text + [int]$tb_SKILLS4.text + [int]$tb_SKILLS_INT.text
		$tb_HP_SUM.text = [int]$tb_HP1.text + [int]$tb_HP2.text + [int]$tb_HP3.text + [int]$tb_HP4.text + [int]$tb_HP_CON.text

	}.GetNewClosure())
}


function SldCMb_calculation2 
{
	slider_combobox2 $cmb_class1_CR $sld_class1_CR $tb_Sld1_CR $tb_SKILLS1 $tb_HP1 $cmb_class1
	slider_combobox2 $cmb_class2_CR $sld_class2_CR $tb_Sld2_CR $tb_SKILLS2 $tb_HP2 $cmb_class2
	slider_combobox2 $cmb_class3_CR $sld_class3_CR $tb_Sld3_CR $tb_SKILLS3 $tb_HP3 $cmb_class3
	slider_combobox2 $cmb_class4_CR $sld_class4_CR $tb_Sld4_CR $tb_SKILLS4 $tb_HP4 $cmb_class4
}
SldCMb_calculation2
#####################################

$comboboxes_CR = $cmb_class1_CR,$cmb_class2_CR,$cmb_class3_CR,$cmb_class4_CR
$comboboxes = $cmb_class1,$cmb_class2,$cmb_class3,$cmb_class4
$slider_CR = $sld_class1_CR,$sld_class2_CR,$sld_class3_CR,$sld_class4_CR
$textboxes_CR = $tb_Sld1_CR,$tb_Sld2_CR,$tb_Sld3_CR,$tb_Sld4_CR
# sceial classes are: bg wm aa monk pm rdd shd bard |$classes = "barbarian","bard","cleric","druid","fighter","monk","paladin","ranger","rogue","sorcerer","wizard","shadowdancer","harperscout","arcanearcher","assassin","blackguard","championoftorm","weaponmaster","palemaster","shifter","dwarvendefender","rdd","pdk"
function set_default
{
	$tb_AC_BARDSONG.Text = "0"
	
	$tb_AC_MONK.text = "0"
	$tb_AC_MONK.IsEnabled = $true

	$tb_AC_SHADOWEVADE.text = "0"
	$tb_AC_SHADOWEVADE.IsEnabled = $true

	$tb_AAlvl.text = "0"
	$tb_AAlvl.IsEnabled  = $true

	$tb_BGlvl.text = "0"
	$tb_BGlvl.IsEnabled = $true

	$chb_DARKBLS.IsChecked = $false
	$chb_DARKBLS.IsEnabled = $true

	$tb_WMlvl.text = "0"
	$tb_WMlvl.IsEnabled = $true

	$tb_AC_PM.text = "0"
	$tb_AC_PM.IsEnabled = $true

	$tb_AC_RDD.text = "0"
	$tb_AC_RDD.IsEnabled = $true

	$chb_DIVINEBLS.IsChecked = $false
	$chb_DIVINEBLS.IsEnabled = $true
}

function special_classes_levels_summary
{
	for($__count = 0; $__count -lt 4;$__count++)
	{
		switch($comboboxes_CR[$__count].selecteditem)
		{	
			bard
			{
				$tb_AC_BARDSONG.Text = [int]$textboxes_CR[$__count].text
			}
			monk
			{
				$tb_AC_MONK.text = [int]$textboxes_CR[$__count].text
				$tb_AC_MONK.IsEnabled = $false
			}
			shadowdancer
			{
				$tb_AC_SHADOWEVADE.text = [int]$textboxes_CR[$__count].text
				$tb_AC_SHADOWEVADE.IsEnabled = $false
			}
			arcanearcher
			{
				$tb_AAlvl.text = [int]$textboxes_CR[$__count].text
				$tb_AAlvl.IsEnabled  = $false
			}
			blackguard
			{
				$tb_BGlvl.text = [int]$textboxes_CR[$__count].text
				$tb_BGlvl.IsEnabled = $false
				if([int]$textboxes_CR[$__count].text -gt 4)
				{
					$chb_DARKBLS.IsChecked = $true
					$chb_DARKBLS.IsEnabled = $false
				}
			}
			weaponmaster
			{
				$tb_WMlvl.text = [int]$textboxes_CR[$__count].text
				$tb_WMlvl.IsEnabled = $false
			}
			palemaster
			{
				$tb_AC_PM.text = [int]$textboxes_CR[$__count].text
				$tb_AC_PM.IsEnabled = $fasle
			}
			rdd
			{
				$tb_AC_RDD.text = [int]$textboxes_CR[$__count].text
				$tb_AC_RDD.IsEnabled = $false
				switch($tb_AC_RDD.text)
				{
					{$_ -in 2..3} {$global:rddSTR = 2}
					{$_ -in 4..6} {$global:rddSTR = 4}
					{$_ -in 7..8} {$global:rddSTR = 4;$global:rddCON = 2}
					{$_ -eq 9} {$global:rddSTR = 4;$global:rddCON = 2;$global:rddINT = 2}
					{$_ -in 10..30} {$global:rddSTR = 8; $global:rddCON = 2; $global:rddINT = 2; $global:rddCHA = 2}

				}

			}
			paladin
			{
				if([int]$textboxes_CR[$__count].text -gt 4)
				{
					$chb_DIVINEBLS.IsChecked = $true
					$chb_DIVINEBLS.IsEnabled = $false
				}
			}
		}
	}
}
function Sagra_Checker
{
	if(($comboboxes_CR[0].selectedvalue -in $sagraclasses) -AND ($comboboxes_CR[1].selectedvalue -in $sagraclasses) -and ($comboboxes_CR[2].selectedvalue -in $sagraclasses) -and ($comboboxes_CR[3].selectedvalue -in $sagraclasses) -and ($cmb_RACE.text -eq "half-elf"))
	{
		$chb_SagraHalfElf.IsChecked = $true
		$chb_halfelfAB.IsChecked = $false
		$chb_SagraHalfElf.IsEnabled = $false
		$chb_halfelfAB.IsEnabled = $false
		$chb_AC_SAGRA.IsChecked = $true
		$chb_AC_SAGRA.IsEnabled = $false
	}
	elseif(($comboboxes_CR[0].selectedvalue -in $sagraclasses) -AND ($comboboxes_CR[1].selectedvalue -in $sagraclasses) -and ($comboboxes_CR[2].selectedvalue -in $sagraclasses) -and ($comboboxes_CR[3].selectedvalue -in $sagraclasses))
	{
		$chb_AC_SAGRA.IsChecked = $true
		$chb_AC_SAGRA.IsEnabled = $false
	}
	else
	{
		$chb_SagraHalfElf.IsChecked = $false
		#$chb_halfelfAB.IsChecked = $false
		$chb_SagraHalfElf.IsEnabled = $true
		$chb_halfelfAB.IsEnabled = $true
		$chb_AC_SAGRA.IsChecked = $false
		$chb_AC_SAGRA.IsEnabled = $true
	}

}


#special_classes_levels_summary
$slider_CR | foreach-object {$_.add_valuechanged(
	{
		special_classes_levels_summary
	}.GetNewClosure())

}
#######################################
function checkbox_calculation
{
	if($chb_gFort.IsChecked){ $__gFort = 2 } else {	$__gFort = 0 }
	if($chb_gRef.IsChecked){ $__gRef = 2 } else {	$__gRef = 0 }
	if($chb_gWill.IsChecked){ $__gWill = 2 } else {	$__gWill = 0 }

	if($chb_eFort.IsChecked){ $__eFort = 4 } else {	$__eFort = 0 }
	if($chb_eRef.IsChecked){ $__eRef = 4 } else {	$__eRef = 0 }
	if($chb_eWill.IsChecked){ $__eWill = 4 } else {	$__eWill = 0 }

	if($chb_epicCAP.IsChecked){ $__epicCAP = 10 } else {	$__epicCAP = 0 }

	if($tb_CON.text -NE 0){$tb_modCON.text = [math]::Floor( ($tb_CON.text - 10)/2 )} else {$tb_modCON.text = 0}
	if($tb_DEX.text -NE 0){$tb_modDEX.text = [math]::Floor( ($tb_DEX.text - 10)/2 )} else {$tb_modDEX.text = 0}
	if($tb_WIS.text -NE 0){$tb_modWIS.text = [math]::Floor( ($tb_WIS.text - 10)/2 )} else {$tb_modWIS.text = 0}
	if($tb_STR.text -NE 0){$tb_modSTR.text = [math]::Floor( ($tb_STR.text - 10)/2 )} else {$tb_modSTR.text = 0}
	if($tb_INT.text -NE 0){$tb_modINT.text = [math]::Floor( ($tb_INT.text - 10)/2 )} else {$tb_modINT.text = 0}
	if($tb_CHA.text -NE 0){$tb_modCHA.text = [math]::Floor( ($tb_CHA.text - 10)/2 )} else {$tb_modCHA.text = 0}

	if($chb_DARKBLS.IsChecked){$__darkb = 1} else {$__darkb = 0}
	if($chb_DIVINEBLS.IsChecked){$__divb = 1} else {$__divb = 0}

    if($chb_LOH.IsChecked){$__LOH = 1} else {$__LOH = 0}
    if($chb_SS.IsChecked){$__SS = 1} else {$__SS = 0}

    if($chb_UNI20.IsChecked){$__UNI20 = 20} else {$__UNI20 = 0}

	$__baseFort = [int]$tb_modCON.text + $__gFort +  $__eFort + $__epicCAP + [int]$tb_class1_f.text + [int]$tb_class2_f.text + [int]$tb_class3_f.text + [int]$tb_class4_f.text + [int]$tb_modCHA.text * ($__darkb + $__divb) + $__LOH + $__SS + $__UNI20
	$__baseRef = [int]$tb_modDEX.text + $__gRef +  $__eRef + $__epicCAP + [int]$tb_class1_r.text + [int]$tb_class2_r.text + [int]$tb_class3_r.text + [int]$tb_class4_r.text + [int]$tb_modCHA.text * ($__darkb + $__divb) + $__LOH + $__UNI20
	$__baseWill = [int]$tb_modWIS.text + $__gWill +  $__eWill + $__epicCAP + [int]$tb_class1_w.text + [int]$tb_class2_w.text + [int]$tb_class3_w.text + [int]$tb_class4_w.text + [int]$tb_modCHA.text * ($__darkb + $__divb) + $__LOH + $__SS + $__UNI20

	$tb_SUM_f.text = $__baseFort
	$tb_SUM_r.text = $__baseRef
	$tb_SUM_w.text = $__baseWill

	##############################################################

	$tb_lvlSum.text = [int]$tb_Sld1.text + [int]$tb_Sld2.text + [int]$tb_Sld3.text + [int]$tb_Sld4.text
	$tb_SUM_BAB.text = [int]$tb_class1_BAB.Text + [int]$tb_class2_BAB.Text + [int]$tb_class3_BAB.Text + [int]$tb_class4_BAB.Text

	if($chb_gnomeAB.IsChecked){$__gnomeAB = 1} else {$__gnomeAB = 0}
	if($chb_halfelfAB.IsChecked){$__halfelfAB = 6} else {$__halfelfAB = 0}
	if($chb_SagraHalfElf.IsChecked){$__SagraHalfElf = 9} else {$__SagraHalfElf = 0}
	$__str = 1
	if($chb_finesse.IsChecked){	$__finesse = 1;	$__str = 0}	elseif((!$chb_finesse.IsChecked)) { $__finesse = 0 }
	elseif((!$chb_finesse.IsChecked) -and !($chb_zen.IsChecked)){ $__str = 1}

	if($chb_zen.IsChecked){$__zen = 1;$__str = 0} elseif((!($chb_zen.IsChecked))) {$__zen = 0}
	elseif ((!$chb_finesse.IsChecked) -and !($chb_zen.IsChecked)) {$__str = 1}

	if($chb_SialaMonk.IsChecked){ $global:monkBAB = $babHigh } else { $global:monkBAB = $babMid }
	
	switch($tb_WMlvl.text)
	{
		default {$__WMlvl = 0}
		{$_ -lt 5} {$__WMlvl = 0}
		{$_ -in 5..12} {$__WMlvl = 1}
		{$_ -in 13..15} {$__WMlvl = 2}
		{$_ -in 16..18} {$__WMlvl = 3}
		{$_ -in 19..21} {$__WMlvl = 4}
		{$_ -in 22..24} {$__WMlvl = 5}
		{$_ -in 25..27} {$__WMlvl = 6}
		{$_ -in 25..30} {$__WMlvl = 7}
	}

	if($tb_AAlvl.text -NE 0){$__AAlvl = [math]::ceiling( ($tb_AAlvl.text)/2 )} else {$__AAlvl = 0}

	switch($tb_BGlvl.text)
	{
		default {$__BGlvl = 0}
		{$_ -in 6..10}{$__BGlvl = 1}
		{$_ -in 11..20}{$__BGlvl = 2}
		{$_ -in 21..29}{$__BGlvl = 3}
		{$_ -eq 30}{$__BGlvl = 14}
	}

	if($chb_focus.IsChecked){$__focus = 1} else {$__focus = 0}
	if($chb_Efocus.IsChecked){$__Efocus = 2} else {$__Efocus = 0}
	if($chb_prowess.IsChecked){$__prowess = 1} else {$__prowess = 0}

	$tb_SUM_BA.text = 10 + [int]$tb_SUM_BAB.text + ($__str * [int]$tb_modSTR.text) + ($__finesse * [int]$tb_modDEX.text) + ($__zen * [int]$tb_modWIS.text) + $__gnomeAB + $__halfelfAB + $__SagraHalfElf + $__WMlvl + $__AAlvl + $__BGlvl + $__focus + $__Efocus + $__prowess + [int]$tb_abBuff.text

	$tb_free20cap.text = 20 - $__halfelfAB - $__SagraHalfElf - $__BGlvl - [int]$tb_abBuff.text
	#tb_SUM_BAB
	#tb_SUM_Attacks
	#tb_SUM_Monk_Attacks

	switch([int]$tb_SUM_BAB.text)
	{
		{$_ -in 0..5} {$tb_SUM_Attacks.text= $tb_SUM_BA.text}
		{$_ -in 6..10} {$tb_SUM_Attacks.text= $tb_SUM_BA.text +"/"+ $($tb_SUM_BA.text - 5)}
		{$_ -in 11..15} {$tb_SUM_Attacks.text= $tb_SUM_BA.text +"/"+ $($tb_SUM_BA.text - 5) +"/"+ $($tb_SUM_BA.text - 10)}
		{$_ -in 16..20} {$tb_SUM_Attacks.text= $tb_SUM_BA.text +"/"+ $($tb_SUM_BA.text - 5) +"/"+ $($tb_SUM_BA.text - 10) +"/"+ $($tb_SUM_BA.text - 15)}
	}

	switch([int]$tb_SUM_BAB.text)
	{
		{$_ -in 0..3} {$tb_SUM_Monk_Attacks.text= $tb_SUM_BA.text}
		{$_ -in 4..6} {$tb_SUM_Monk_Attacks.text= $tb_SUM_BA.text +"/"+ $($tb_SUM_BA.text - 3)}
		{$_ -in 7..9} {$tb_SUM_Monk_Attacks.text= $tb_SUM_BA.text +"/"+ $($tb_SUM_BA.text - 3) +"/"+ $($tb_SUM_BA.text - 6)}
		{$_ -in 10..12} {$tb_SUM_Monk_Attacks.text= $tb_SUM_BA.text +"/"+ $($tb_SUM_BA.text - 3) +"/"+ $($tb_SUM_BA.text - 6) +"/"+ $($tb_SUM_BA.text - 9)}
		{$_ -in 13..15} {$tb_SUM_Monk_Attacks.text= $tb_SUM_BA.text +"/"+ $($tb_SUM_BA.text - 3) +"/"+ $($tb_SUM_BA.text - 6) +"/"+ $($tb_SUM_BA.text - 9) +"/"+ $($tb_SUM_BA.text - 12)}
		{$_ -in 16..20} {$tb_SUM_Monk_Attacks.text= $tb_SUM_BA.text +"/"+ $($tb_SUM_BA.text - 3) +"/"+ $($tb_SUM_BA.text - 6) +"/"+ $($tb_SUM_BA.text - 9) +"/"+ $($tb_SUM_BA.text - 12) +"/"+ $($tb_SUM_BA.text - 15)}
	}
	####
	switch ([int]$cmb_AC_armor_base.SelectedIndex)
	{
		0 {$global:__maxDEXMOD = [int]$tb_modDEX.text}
		1 {$global:__maxDEXMOD = [math]::min(8,[int]$tb_modDEX.text)}
		2 {$global:__maxDEXMOD = [math]::min(7,[int]$tb_modDEX.text)}
		3 {$global:__maxDEXMOD = [math]::min(6,[int]$tb_modDEX.text)}
		4 {$global:__maxDEXMOD = [math]::min(5,[int]$tb_modDEX.text)}
		5 {$global:__maxDEXMOD = [math]::min(4,[int]$tb_modDEX.text)}
		6 {$global:__maxDEXMOD = [math]::min(3,[int]$tb_modDEX.text)}
		7 {$global:__maxDEXMOD = [math]::min(2,[int]$tb_modDEX.text)}
		8 {$global:__maxDEXMOD = [math]::min(1,[int]$tb_modDEX.text)}
	}
	
	if($chb_AC_BLADES.isChecked){$__AC_BLADES = 6} else {$__AC_BLADES = 0}
	if($chb_AC_GNOME.isChecked){$__AC_GNOME = 6} else {$__AC_GNOME = 0}
	if($chb_AC_SAGRA.isChecked){$__AC_SAGRA = 1.5} else {$__AC_SAGRA = 1}
	
	$__siala_ac = $__AC_SAGRA * ($__AC_GNOME + $__AC_BLADES)

	$tb_AC_SHIELD_BASE.text = [math]::max($tb_AC_SHIELD_BASE.text,$__siala_ac)
	#$tb_AC_SHIELD_BASE.text = $__siala_ac

	switch([int]$tb_AC_BARDSONG.text)
	{
		{$_ -in 0..10} {$__bardsong = 0}
		{$_ -in 11..13} {$__bardsong = 2}
		{$_ -eq 14} {$__bardsong = 3}
		{$_ -eq 15} {$__bardsong = 4}
		{$_ -in 16..24} {$__bardsong = 5}
		{$_ -in 25..29} {$__bardsong = 6}
		{$_ -in 30..40} {$__bardsong = 7}
	}
	$tb_AC_BARDSONG_MOD.text = $__bardsong
	switch([int]$tb_AC_SHADOWEVADE.text)
	{
		{$_ -in 0..3}{$__shadowevade = 0}
		{$_ -in 4..5}{$__shadowevade = 1}
		{$_ -in 6..7}{$__shadowevade = 3}
		{$_ -in 8..9}{$__shadowevade = 5}
		{$_ -in 10..24}{$__shadowevade = 7}
		{$_ -in 25..29}{$__shadowevade = 8}
		{$_ -eq 30}{$__shadowevade = 9}
	}
	$tb_AC_SHADOWEVADE_MOD.text = $__shadowevade
	if($chb_EMA.IsChecked)
	{	
		$__EMA_DODGE = 5
		$tb_AC_ARMOR_BASE.text = [math]::max(5,$tb_AC_ARMOR_BASE.text)
		$tb_AC_NATURAL_BASE.text = [math]::max(5,$tb_AC_NATURAL_BASE.text)
		$tb_AC_DEFLECT_BASE.text = [math]::max(5,$tb_AC_DEFLECT_BASE.text)
	}
	else{$__EMA_DODGE = 0}

	if($chb_DSH.IsChecked){$__DSH = $tb_modCHA.text}else{$__DSH = 0}
	if($chb_DS.IsChecked){$__DS = 4}else{$__DS = 0}
	if($chb_MA.IsChecked)
	{
		$__MA_DODGE = 1
		$tb_AC_ARMOR_BASE.text = [math]::max(1,$tb_AC_ARMOR_BASE.text)
		$tb_AC_NATURAL_BASE.text = [math]::max(1,$tb_AC_NATURAL_BASE.text)
		$tb_AC_DEFLECT_BASE.text = [math]::max(1,$tb_AC_DEFLECT_BASE.text)
	}
	else{$__MA_DODGE = 0}

	if($chb_AC_HASTE.IsChecked){$__AC_haste = 4}else {$__AC_haste = 0}

	$__raw_dodge = ([int]$tb_AC_DODGE_BASE.text + $__bardsong + $__shadowevade + $__EMA_DODGE + $__DSH + $__DS + $__MA_DODGE + $__AC_haste)
	$tb_AC_DODGE_SUM_BASE.text = [math]::min(20,$__raw_dodge)
	$tb_AC_DODGE_CAP.text = 20 - $__raw_dodge

	$tb_AC_DODGE_SUM_b.text = [math]::min(20,[int]$tb_AC_DODGE_SUM_BASE.text) + [int]$tb_AC_DODGE_b.Text
	$tb_AC_DODGE_SUM_p.text = [math]::min(20,[int]$tb_AC_DODGE_SUM_BASE.text) + [int]$tb_AC_DODGE_p.Text
	$tb_AC_DODGE_SUM_s.text = [math]::min(20,[int]$tb_AC_DODGE_SUM_BASE.text) + [int]$tb_AC_DODGE_s.Text
#
	if($tb_AC_MONK.Text -NE 0){$__monkAC = [math]::Floor( ($tb_AC_MONK.Text)/5 )} else {$__monkAC = 0}
	if($tb_AC_MONK.Text -GE 4){$__monkACWIS = 1} else {$__monkACWIS = 0}
	$tb_AC_MONK_MOD.text = $__monkAC
	if(($cmb_AC_shield_base.SelectedIndex -NE 0) -OR ($cmb_AC_armor_base.SelectedIndex -NE 0)){$__popysk_monka = 0}else{$__popysk_monka = 1}
	switch ($tb_AC_RDD.Text)
	{
		{$_ -eq 0} {$__rddAC = 0 }
		{$_ -in 1..4} {$__rddAC = 1 }
		{$_ -in 5..8} {$__rddAC = 2 }
		{$_ -in 8..9} {$__rddAC = 3 }
		{$_ -in 10..14} {$__rddAC = 4 }
		{$_ -in 15..19} {$__rddAC = 5 }
		{$_ -in 20..24} {$__rddAC = 6 }
		{$_ -in 25..29} {$__rddAC = 7 }
		{$_ -eq 30} {$__rddAC = 8 }
	}
	$tb_AC_RDD_MOD.text = $__rddAC
	switch ($tb_AC_PM.Text)
	{
		{$_ -eq 0} {$__pmAC = 0 }
		{$_ -in 1..3} {$__pmAC = 2}
		{$_ -in 4..7} {$__pmAC = 4}
		{$_ -in 8..11} {$__pmAC = 6}
		{$_ -in 12..15} {$__pmAC = 8}
		{$_ -in 16..19} {$__pmAC = 10}
		{$_ -in 20..23} {$__pmAC = 12}
		{$_ -in 24..27} {$__pmAC = 14}
		{$_ -in 28..30} {$__pmAC = 16}
	}
	$tb_AC_PM_MOD.text = $__pmAC
	if($chb_AC_AS.IsChecked){$__armorskin = 2}else{$__armorskin = 0}
	IF($chb_AC_EXP.IsChecked){$__exp = 5;$chb_AC_iEXP.IsChecked = 0}else{$__exp = 0}
	if($chb_AC_iEXP.IsChecked){$__iexp = 10;$chb_AC_EXP.IsChecked = 0}else{$__iexp = 0}

	if($tb_AC_thumble.Text -NE 0){$__thumbleAC = [math]::Floor( ($tb_AC_thumble.Text)/5 )} else {$__thumbleAC = 0}
	$tb_AC_thumble_MOD.text = $__thumbleAC
	if($chb_AC_DODGE.isChecked){$__ACDODGE = 1}else{$__ACDODGE = 0}

	$tb_AC_OTHER_SUM_ta.text = $global:__maxDEXMOD + $__exp + $__iexp + $__thumbleAC
	
	$tb_AC_OTHER_SUM_ff.text = $__monkAC + $__ACDODGE * $global:__maxDEXMOD + $__popysk_monka * $__monkACWIS * $tb_modWIS.text + $__rddAC + $__pmAC + $__armorskin + $__exp + $__iexp + $__ACDODGE * $__thumbleAC
	
	$tb_AC_OTHER_SUM.Text = $__monkAC + $global:__maxDEXMOD + $__popysk_monka * $__monkACWIS * $tb_modWIS.text + $__rddAC + $__pmAC + $__armorskin + $__exp + $__iexp + $__thumbleAC
#

	if($chb_AC_SIZEBONUS.isChecked){$__AC_SIZEBONUS = 1}else{$__AC_SIZEBONUS = 0}

	$tb_AC_SUM_TA.text = 10 + $__AC_SIZEBONUS + $tb_AC_ARMOR_BASE.text +  + $tb_AC_SHIELD_BASE.text + $tb_AC_NATURAL_BASE.text + $tb_AC_DEFLECT_BASE.text + $tb_AC_DODGE_SUM_BASE.Text + $tb_AC_OTHER_SUM_ta.Text

	$tb_AC_SUM_FF.text = 10 + $__AC_SIZEBONUS + $tb_AC_ARMOR_BASE.text + $tb_AC_SHIELD_BASE.text + $tb_AC_NATURAL_BASE.text + $tb_AC_DEFLECT_BASE.text + $tb_AC_OTHER_SUM_ff.text + $cmb_AC_shield_base.SelectedIndex + $cmb_AC_armor_base.SelectedIndex

	$tb_AC_SUM_BASE.text = 10 + $__AC_SIZEBONUS + $tb_AC_ARMOR_BASE.text + $cmb_AC_shield_base.SelectedIndex + $tb_AC_SHIELD_BASE.text + $tb_AC_NATURAL_BASE.text + $tb_AC_DEFLECT_BASE.text + $tb_AC_DODGE_SUM_BASE.Text + $tb_AC_OTHER_SUM.Text + $cmb_AC_armor_base.SelectedIndex
	
	$tb_AC_SUM_b.text = 10 + $__AC_SIZEBONUS + [math]::max($tb_AC_ARMOR_BASE.text,$tb_AC_ARMOR_b.text) + [math]::max($tb_AC_SHIELD_BASE.text,$tb_AC_SHIELD_b.text) + [math]::max($tb_AC_NATURAL_BASE.text,$tb_AC_NATURAL_b.text) + [math]::max($tb_AC_DEFLECT_BASE.text,$tb_AC_DEFLECT_b.text) + $tb_AC_DODGE_SUM_b.text + $tb_AC_OTHER_SUM.text + $cmb_AC_armor_base.SelectedIndex + $cmb_AC_shield_base.SelectedIndex
	$tb_AC_SUM_p.text = 10 + $__AC_SIZEBONUS + [math]::max($tb_AC_ARMOR_BASE.text,$tb_AC_ARMOR_p.text) + [math]::max($tb_AC_SHIELD_BASE.text,$tb_AC_SHIELD_p.text) + [math]::max($tb_AC_NATURAL_BASE.text,$tb_AC_NATURAL_p.text) + [math]::max($tb_AC_DEFLECT_BASE.text,$tb_AC_DEFLECT_p.text) + $tb_AC_DODGE_SUM_p.text + $tb_AC_OTHER_SUM.text + $cmb_AC_armor_base.SelectedIndex + $cmb_AC_shield_base.SelectedIndex
	$tb_AC_SUM_s.text = 10 + $__AC_SIZEBONUS + [math]::max($tb_AC_ARMOR_BASE.text,$tb_AC_ARMOR_s.text) + [math]::max($tb_AC_SHIELD_BASE.text,$tb_AC_SHIELD_s.text) + [math]::max($tb_AC_NATURAL_BASE.text,$tb_AC_NATURAL_s.text) + [math]::max($tb_AC_DEFLECT_BASE.text,$tb_AC_DEFLECT_s.text) + $tb_AC_DODGE_SUM_s.text + $tb_AC_OTHER_SUM.text + $cmb_AC_armor_base.SelectedIndex + $cmb_AC_shield_base.SelectedIndex

	$tb_AC_SUM_BASE_EQUIP.text = 10 + $tb_AC_ARMOR_BASE.text + $tb_AC_SHIELD_BASE.text + $tb_AC_NATURAL_BASE.text + $tb_AC_DEFLECT_BASE.text + $tb_AC_DODGE_BASE.text + $cmb_AC_shield_base.SelectedIndex + $cmb_AC_armor_base.SelectedIndex
	$tb_AC_SUM_BASE_EQUIP_DODGE.text = 10 + $tb_AC_ARMOR_BASE.text + $tb_AC_SHIELD_BASE.text + $tb_AC_NATURAL_BASE.text + $tb_AC_DEFLECT_BASE.text + $tb_AC_DODGE_SUM_BASE.text + $cmb_AC_shield_base.SelectedIndex + $cmb_AC_armor_base.SelectedIndex

	$tb_AC_SUM_FF_difference.text = [int]$tb_AC_SUM_BASE.text - [int]$tb_AC_SUM_FF.text
	######texts string
	$__STRING_DODGE = $null
	$__STRING_OTHER = $null
	$__STRING_SIZE = $null

	if($chb_EMA.ischecked){$__STRING_DODGE += " ЭМА 5;"}
	if($chb_DSH.isChecked){$__STRING_DODGE += " ДШ $($tb_modCHA.text);"}
	if($chb_DS.isChecked){$__STRING_DODGE += " ДС 4;"}
	if($chb_MA.isChecked){$__STRING_DODGE += " МА 1;"}
	if($chb_AC_HASTE.isChecked){$__STRING_DODGE += " ХАСТ 4;"}
	if([int]$tb_AC_BARDSONG.text -ge 1){$__STRING_DODGE += " ПЕСНЯ $($tb_AC_BARDSONG_MOD.text);"}
	if([int]$tb_AC_SHADOWEVADE.text -ge 1){$__STRING_DODGE += " ШАДОВ ИВЕЙД $($tb_AC_SHADOWEVADE_MOD.text);"}

	if([int]$tb_AC_MONK.text -ge 4){$__STRING_OTHER += " МОНК $($tb_AC_MONK_MOD.text) БОНУС ВИЗДЫ $($tb_modWIS.text);"}
	if([int]$tb_AC_RDD.text -ge 1){$__STRING_OTHER += " РДД $($tb_AC_RDD_MOD.text);"}
	if([int]$tb_AC_PM.text -ge 1){$__STRING_OTHER += " ПМ $($tb_AC_PM_MOD.text);"}
	if($chb_AC_AS.IsChecked){$__STRING_OTHER += " АрморСкин 2;"}
	if($chb_AC_EXP.IsChecked){$__STRING_OTHER += " Экспертиза 5;"}
	if($chb_AC_iEXP.IsChecked){$__STRING_OTHER += " иЭкспертиза 10;"}
	if([int]$tb_AC_thumble.text -ge 1){$__STRING_OTHER += " Кувырок $($tb_AC_thumble_MOD.text);"}

	if($chb_AC_SIZEBONUS.IsChecked){$__STRING_OTHER += " Размер 1;"}

	$__shield_siala_bonus = @()
	if($chb_AC_BLADES.isChecked){$__shield_siala_bonus += "КЛИНКОВОЕ"} else {}
	if($chb_AC_GNOME.isChecked){$__shield_siala_bonus += "КАРЛИК"} else {}
	if($chb_AC_SAGRA.isChecked){$__shield_siala_bonus += "САГРОВИК"} else {}

	$tb_AC_string.text = "Мой АЦ $($tb_AC_SUM_BASE.text). Из которых БАЗА 10; АРМОР $($cmb_AC_armor_base.SelectedIndex)+$($tb_AC_ARMOR_BASE.text); ЩИТ $($cmb_AC_shield_base.SelectedIndex)+$($tb_AC_SHIELD_BASE.text) ($__shield_siala_bonus); АМУЛЕТ $($tb_AC_NATURAL_BASE.text); ДЕФЛЕКТ $($tb_AC_DEFLECT_BASE.text); БОТИНКИ $($tb_AC_DODGE_BASE.text);$__STRING_DODGE; БОНУС ДЕКСЫ $($global:__maxDEXMOD);$__STRING_OTHER;$__STRING_SIZE"
	
	######
    $tb_CHA_MOD2.text = $tb_modCHA.text
	$tb_CON_MOD2.text = $tb_modCON.text
	$tb_DEX_MOD2.text = $tb_modDEX.text
	$tb_WIS_MOD2.text = $tb_modWIS.text

	Sagra_Checker
}	

$tb_lvlSum.Add_TextChanged({
	if([int]$tb_lvlSum.text -lt 20) {$tb_lvlSum.Background="Yellow"}
	elseif([int]$tb_lvlSum.text -eq 20) {$tb_lvlSum.Background="Green"}
	elseif([int]$tb_lvlSum.text -gt 20) {$tb_lvlSum.Background="Red"}
})

$tb_lvlSum_CR.Add_TextChanged({
	if([int]$tb_lvlSum_CR.text -lt 40) {$tb_lvlSum_CR.Background="Yellow"}
	elseif([int]$tb_lvlSum_CR.text -eq 40) {$tb_lvlSum_CR.Background="Green"}
	elseif([int]$tb_lvlSum_CR.text -gt 40) {$tb_lvlSum_CR.Background="Red"}
})

$chb_halfelfAB.Add_click({ 
	if($chb_halfelfAB.IsChecked)	{$chb_SagraHalfElf.IsChecked = $false}
})
$chb_SagraHalfElf.Add_click({ 
	if($chb_SagraHalfElf.IsChecked)	{$chb_halfelfAB.IsChecked = $false}
})
$chb_finesse.Add_click({
	if($chb_finesse.IsChecked)	{$chb_zen.IsChecked = $false}
})
$chb_zen.Add_click({ 
	if($chb_zen.IsChecked)	{$chb_finesse.IsChecked = $false}
})

$tb_free20cap.Add_TextChanged({
	if([int]$tb_free20cap.text -in 1..19) {$tb_free20cap.Background="Yellow";$tb_abBuff.Background="Yellow"}
	elseif([int]$tb_free20cap.text -eq 20) {$tb_free20cap.Background="Green";$tb_abBuff.Background="Green"}
	elseif([int]$tb_free20cap.text -lt 1) {$tb_free20cap.Background="Red";$tb_abBuff.Background="Red"}
})

foreach($__item in $tab1.children)
{
	if($__item.IsEnabled)
	{
		if($__item.gettype().name -eq "TextBox")
		{
			$__item.Add_TextChanged({ SldCMb_calculation; checkbox_calculation })
		}
		if($__item.gettype().name -eq "CheckBox")
		{
			$__item.Add_click({ SldCMb_calculation;	checkbox_calculation })
		}
		if($__item.gettype().name -eq "ComboBox")
		{
			$__item.add_SelectionChanged({ SldCMb_calculation; checkbox_calculation })
		}
		if($__item.gettype().name -eq "Slider")
		{
			$__item.add_valuechanged({ SldCMb_calculation; checkbox_calculation; })
		}
	}
}

#========================#

function Save-File([string] $initialDirectory)
{
    [System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null
    $OpenFileDialog = New-Object System.Windows.Forms.SaveFileDialog
    $OpenFileDialog.initialDirectory = $initialDirectory
    $OpenFileDialog.filter = "Save Throw Calc files (*.stcf)| *.stcf"
    $OpenFileDialog.ShowDialog() |  Out-Null

    return $OpenFileDialog.filename
}

$btn_Save.add_Click({
	#Save-File

	$global:__all_vars = @()
	foreach($__item in $tab1.children)
		{
			#if($__item.IsEnabled)
			#{
				$global:__all_vars += $__item
			#}
		}
	$SaveFile=Save-File "\"

	if ($SaveFile -ne "") 
	{
		echo "You choose FileName: $SaveFile" 
	} else {
		echo "No File was chosen"
	}

	$varType = "TextBox","CheckBox","ComboBox","Slider"
	$global:__all_vars | sort name | ? {$_.gettype().name -in $varType} | select name,text,isChecked,selecteditem,value | Export-Csv $SaveFile -Encoding utf8 -force -NoTypeInformation
    $global:__all_vars = @()

})

function Open-File([string] $initialDirectory){

    [System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null

    $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
    $OpenFileDialog.initialDirectory = $initialDirectory
    $OpenFileDialog.filter = "Save Throw Calc files (*.stcf)| *.stcf"
    $OpenFileDialog.ShowDialog() |  Out-Null
    return $OpenFileDialog.filename
} 

$btn_Load.add_Click({
	$global:__loadVars = @()
    $global:__all_vars = @()
	$OpenFile=Open-File "\" 

	if ($OpenFile -ne "") 
	{
		echo "You choose FileName: $OpenFile" 
	} 
	else 
	{
		echo "No File was chosen"
	}
	#Import-Clixml $OpenFile | %{ Set-Variable $_.Name $_.Value }
	$global:__loadVars = Import-Csv $OpenFile
	
	
	foreach($__item in $tab1.children)
		{
			#if($__item.IsEnabled)
			#{
				$global:__all_vars += $__item
			#}
		}

	foreach($loadItem in $global:__loadVars)
		{
            if($loadItem -ne "")
            {
                #$__object = ($global:__all_vars).Where({$_.name -eq $loadItem.name})
                $__object = $global:__all_vars | Where({$_.name -eq $loadItem.name})

                switch( $__object.gettype().name )
                {
                    TextBox 
                    {
                        $__object.text = $loadItem.text
                    }
                    CheckBox 
                    { 
                        if($loadItem.isChecked -eq "true") {$__object.isChecked = $true}
                        else {$__object.isChecked = $false}
                    }
                    ComboBox 
                    {
                        $__object.selecteditem = $loadItem.selecteditem
                    }
                    Slider 
                    {
                        $__object.value = $loadItem.value
                    }
                }
            }
		}
    checkbox_calculation
    $global:__loadVars = @()
    $global:__all_vars = @()
})


#========================#
$xamGUI.ShowDialog() | Out-Null