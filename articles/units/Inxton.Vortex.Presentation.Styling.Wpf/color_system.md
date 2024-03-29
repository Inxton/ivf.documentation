

## Color system

Inxton is inspired by color system by [Material design](https://www.material.io/design/color/the-color-system.html#color-theme-creation)

| Color             | Default color | Wpf SolidColorBrush |
| -------------     | -----         |-----                |
| PrimaryColor      | #C4D93F       |Primary              |
| SecondaryColor    | #5F6371       |Secondary            |
| BackgroundColor   | #FFFFFF       |Background           |
| SurfaceColor      | #F1F1F1       |Surface              |
| ErrorColor        | #FF4B27       |Error                |
| AccentColor       | #FF4B27       |Accent               |
| AlertColor        | #CA2F14       |Alert                |
| WarningColor      | #FF4B27       |Warning              |
| SignalOffColor    | #5F6371       |SignalOff            |
| SignalOnColor     | #C4D93F       |SingalOn             |
| IntermediateColor | #TODO         |Intermediate         |

For every `Color` there is an `OnColor` - Used mainly for text color. 

| Color               | Default color | Wpf SolidColorBrush |
| -------------       | -----:        |-----                |
| OnPrimaryColor      | #FFFFFF       |OnPrimary            |
| OnSecondaryColor    | #FFFFFF       |OnSecondary          |
| OnBackgroundColor   | #000000       |OnBackground         |
| OnSurfaceColor      | #000000       |OnSurface            |
| OnErrorColor        | #FFFFFF       |OnError              |
| OnAccentColor       | #FFFFFF       |OnAccent             |
| OnAlertColor        | #FFFF00       |OnAlert              |
| OnWarningColor      | #FFFFFF       |OnWarning            |
| OnSignalOffColor    | #FFFFFF       |OnSignalOff          |
| OnSignalOnColor     | #FFFFFF       |OnSingalOn           |
| OnIntermediateColor | #FFFFFF       |OnIntermediate       |




### Create responsive applicatons

Thanks to WPF your app can work on any screen!

![buttons](./assets/responsive_design.gif)

~~~xml
<WrapPanel>
    <StackPanel
        Margin="10"
        Orientation="Horizontal"
        Style="{DynamicResource Card}">
        <StackPanel>
            <Label FontWeight="Bold">Control voltage</Label>
            <Label>Card A2 Signal 4</Label>
        </StackPanel>
        <Ellipse
            Width="50"
            Height="50"
            Margin="50,5,5,0"
            Fill="{DynamicResource SignalOn}" />
    </StackPanel>

    <StackPanel
        Margin="10"
        Orientation="Horizontal"
        Style="{DynamicResource Card}">
        <StackPanel>
            <Label FontWeight="Bold">Pressure OK</Label>
            <Label>Card A2 Signal 5</Label>
        </StackPanel>
        <Ellipse
            Width="50"
            Height="50"
            Margin="50,5,5,0"
            Fill="{DynamicResource SignalOn}" />
    </StackPanel>

    <StackPanel
        Margin="10"
        Orientation="Horizontal"
        Style="{DynamicResource Card}">
        <StackPanel>
            <Label FontWeight="Bold">Safety OK</Label>
            <Label>Card A2 Signal 6</Label>
        </StackPanel>
        <Ellipse
            Width="50"
            Height="50"
            Margin="50,5,5,0"
            Fill="{DynamicResource SignalOff}" />
    </StackPanel>

</WrapPanel>
~~~

