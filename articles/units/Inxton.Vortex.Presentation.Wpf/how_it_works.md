## How it works

Let's define a simple structure  and create an instance in `MAIN`

~~~ 
TYPE stProduct :
    STRUCT
        Name  : STRING;
        Color : enumColors;
        Price : REAL;
    END_STRUCT
END_TYPE
~~~

After you run Inxton.Builder you should see in your `[PlcProjectName]Connector` project generated class `stProduct.g.cs`. This class contains :

~~~ C#
public Vortex.Connector.ValueTypes.OnlinerString Name { get ;}
[Vortex.Connector.EnumeratorDiscriminatorAttribute(typeof (enumColors))]
public Vortex.Connector.ValueTypes.OnlinerInt Color { get ;}
public Vortex.Connector.ValueTypes.OnlinerReal Price { get ;}
~~~

In your Wpf project, add this line of code to the XAML definition.

~~~XML
xmlns:vortex="http://vortex.mts/xaml"
~~~

So it looks like this.

```
<Window
    x:Class="MainHmi.MainWindow"
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
    xmlns:local="clr-namespace:MainHmi"
    xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
    Title="Inxton.Package.Vortex.Essentials"
    xmlns:vortex="http://vortex.mts/xaml"
>
```

>your definition may vary

Setup your  `[PlcProjectName]Connector` - [example](https://github.com/Inxton/Examples-Inxton.Package.Vortex.Core#set-up-hansplccontroller-project)

- We created `MainWindowViewModel`

~~~ C#
namespace MainHmi
public class MainWindowViewModel
{
    public MAIN MAIN { get; }

    public MainWindowViewModel()
    {
        var plc = new MainPlc.MainPlcTwinController(Tc3ConnectorAdapter.Create(null, 851)); // "null" for localhost TwinCAT3 runtime
        plc.Connector.BuildAndStart();
        MAIN = plc.MAIN;
    }
}
~~~

- Add this ViewModel as DataContext for the view

~~~ xml
<Window.DataContext>
    <local:MainWindowViewModel />
</Window.DataContext>
~~~

- Apply INXTON magic

~~~ xml
<vortex:RenderableContentControl DataContext="{Binding MAIN.product}" />
~~~



## What's going on?

Inxton will parse your PLC project and create C# objects of your PLC objects (structures, function blocks, enums ...). 

- `Name  : STRING;` → INXTON → `OnlinerString Name`
- `Color : enumColors;` → INXTON → `OnlinerInt Color`
- `Price : REAL;` → INXTON → `OnlinerReal Price`

When you Bind to a specific object using ```RenderableContentControl```, Inxton will look into the C# class, and it will find ```Name```, ```Color``` and ```Price``` attributes.

Now Inxton will create an appropriate view for every type and inject ViewModel.

## How is Inxton looking for views

Let's take
-  PLC ................ → INXTON → ....................... → PC
- `Name:  STRING;` → INXTON → `OnlinerString Name;`

Inxton will try to find `OnlinerBaseTypeControlView` which translates into `OnlinerString` + `Control` + ` View`.  

*Inxton will not find this view because it doesn't exist.* 
But when you look at the definition of `OnlinerString` 

```csharp
public class OnlinerString : OnlinerBaseType<string>, ..., 
```

It inherits from `OnlinerBaseType`, so Inxton has few more options. It will try to find `OnlinerBaseTypeControlView` 

Inxton will find this View in assembly `Vortex.Presentation.Controls.Wpf` and namespace `Vortex.Connector.ValueTypes`, and it will create it.
