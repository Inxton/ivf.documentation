# Inxton.vortex.compiler.console

Inxton.vortex.compiler.console(compiler) is a Command line interface (CLI) implementation of Inxton.Vortex.Compiler that trans-piles TwinCat 3 PLC's program data into C# classes making the PLC's data accessible to .net environment in a structured way.

## Compiler

### Compiler's output project **ConnectorProject**

Connector project is a C# library project that contains the mirror (twin) representation of the PLC.

Compiler outputs C# source code which is located in the solution folder '_Vortex/out/[PlcProjectName]/src/singles/'. The content of this folder is then linked to the project in your solution that follows this naming convention: **[PlcProjectName]Connector**. For example if your PLC project is named 'MyPlc' then the connector project must be named 'MyPlcConnector'.

### Type of emitted objects

Compiled entities are called [*Twins*](Conceptual/Twins.md). There are three main groups of twin entities:

* [**Twin Controller**](Conceptual/TwinController.md) represents mirror of PLC controller and it is the root entry point for all twin objects. The name of TwinController class is '[PlcProjectName]TwinController'.

* [**Twin Object**](Conceptual/TwinObjects.md) represent a twin of a complex PLC type (STRUCT, FB, PRG, GVL, ENUM, UNION). The representation type of TwinObject is simply BlockName.

* [**Twin Primitive**](../Inxton.Vortex.Connector/Conceptual/PrimitiveTwins.md) represents twin of a base/elementary PLC type (BOOL, BYTE, WORD, DWORD, INT, TIME, ..., DATE, DATE_TIME, ..., STRING, WSTRING etc) [more].


## Getting more from the compiler

* [Attributes](Conceptual/Attributes.md) to enhance the capabilities twin objects.
* [Added Properties](Conceptual/AddedProperties.md) to add properties to C# classes directly from PLC code.

## Troubleshooting compiler

* [Ignoring unknown syntax constructions](Conceptual/IgnoringPartsOfCode.md)
* [Fake attribute commenting](Conceptual/FakeComments.md)

## Specific behavior

### Case sensitivity

In contrast to TwinCat3 project, inxton compiler takes into account letter casing. Take this fact into consideration, in particular when declaring variables, extending types. Declarations with inconsistent letter casing are considered unknown.

### Arrays

Compiler supports (uni-dimensional and multidimensional) arrays of which size is given by a *numerical literal* or a *constant* and is zero-based ([0..10] or [0..cMaxArraySize]). Arrays must be zero-based in order to maintain consistency with the C# code. Jagged arrays are not supported at this time.

### Unknown types

Whenever the compiler encounters a type that is unknown, it will not transpile that variable or extending type into the twin.

Types implicitly known to the compiler are all primitive types, the types defined in the same project, and all those types that are added to the project as a library with its own .net twin library.

Type `ANY` and `BIT` are considered unknown at this time.

### Namespaces

For types defined in external libraries, it is necessary to use namespace when declaring variables or when extending a type.

The types external to the project must be declared with their respective namespace; otherwise, they are considered unknown.

## Getting started

The best way to get started with the compiler is to use examples form [Inxton.Package.Vortex.Core](~/articles/01core/getting_started/getting_started.MD).

### Pre-requisites check [here](../../common/PREREQUISITES.md) please

### First project

1. Open Visual Studio
1. Create new **TwinCAT Project** (name it e.g. XAE)
1. Create new **TwinCAT PLC project** in TwinCAT project under **PLC** branch (name it e.g MainPlc)
1. Create new C# library project (from version v1.9.3 use [NET SDK projects format](https://docs.microsoft.com/en-us/dotnet/core/project-sdk/msbuild-props), netcore/netstadard) and name it {PlcProjectName}Connector (e.g. MainPlcConnector).
1. Add NuGet package Inxton.Vortex.Core to newly created C# library project. (this package contains the compiler and supporting libraries) [nuget](https://www.nuget.org/packages/Inxton.Package.Vortex.Core).

   ~~~ PowerShell
       PM> Install-Package Inxton.Package.Vortex.Core
   ~~~

The solution is ready at this point.

Now there are two options to run the compiler:

#### Visual Studio Extension
Inxton provides Visual Studio extension so builder is every time just one click away.
You can download Visual Studio Extension directly from [Visual Studio marketplace](https://marketplace.visualstudio.com/items?itemName=Inxton.InxtonVortexBuilderExtensionPre).

##### To install extension follow easy step by step video turorial below. 
[![Video instruction here](https://img.youtube.com/vi/seL77D0eykI/0.jpg)](https://www.youtube.com/watch?v=seL77D0eykI&feature=youtu.be "Run builder.")

Or follow few easy installation steps [here](../../common/ExtensionInstalation.md).


#### Command line interface (CLI)

CLI can be used as an alternative. Run the compiler from the '_Vortex' folder in the solution folder. The '_Vortex' folder will be created when the *Inxton.Package.Vortex.Core* is installed.
Follwing lines of code have to be executed either in Windows command line or Powershell.

**Command line:**
~~~ CMD
C:> CD C:\[YourSolutionFolder]\_Vortex\
C:\[YourSolutionFolder]\_Vortex> builder\vortex.compiler.console.exe
~~~

**Powershel:**
~~~ PowerShell
PS C:\[YourSolutionFolder]\_Vortex>
PS C:\[YourSolutionFolder]\_Vortex> .\builder\vortex.compiler.console.exe
~~~


**Compiler options**

-c --config       file; defaults to 'vortex_config.json' from the current directory

-d --directives   compiler directives; defaults 'wpf+clr'

-o --output       sets output directory for source files; default is currentDirectory/out/

-p --publish      true/(default)false; in addition to clr twin compilation the plc library is compiled (files are places into Release configuration directory of the twinController project)

-q --quit_on_done true/(default)false; closes VS studion upon task completion

i --update_controller_version true/(default)false; updates the version of the plc library to match twins version info attribute located in twin connector projects' Property/AssemblyInfo.cs

-v                versbosity 'Info/Verbose/Warning/Debug' (default Info)

-b                builds twin connector projects



><strong style="color:orange">NOTE</strong>: <span style="color:orange">
Compiler collects strings from the PLC program that can be later localized. 
This feature is available and will be documented soon. 
At this point localization file needs to be modified inside PlcConnector project at location Properties/Localizations.resx. 
Setting has to be performed only once in newly created project.
Please keep in mind that following is applicable only to .net framework project.</span>

<p><strong style="color:orange">Please follow these simple steps:</strong>
<ol style="color:orange">
<li>Open Localizations.resx within Visual Studio.</li>
<li>Set *'Access modifier'* in the upper part of the editor to *'internal'*.</li>
</ol></p>

<p style="color:orange">Resources for localization will be generated as a result.</p>

<strong style="color:orange">Or follow simple video guide:</strong>

[![Video instruction here](https://img.youtube.com/vi/K02ic222EE4/0.jpg)](https://www.youtube.com/watch?v=K02ic222EE4&feature=youtu.be "Video Title")

### How to access TwinController

You can reference Connector project in any .net framework v4.8 project. Here is an example how to create an instance of TwinController and how to access variable.

~~~ C#
// Creates an adapter for connecting to TwinCat 3 PLC with AMS ID '172.20.10.102.1.1' and port '851'
var adapter = Vortex.Adapters.Connector.Tc3.Adapter.Tc3ConnectorAdapter.Create("172.20.10.102.1.1", 851);

// Creates an instance of TwinController for 'Plc' project
var plc = new Plc.PlcTwinController();

// Starts operations with the TwinController.
plc.Connector.BuildAndStart();

// Accessing '_counter' variable from PRG 'MAIN'.
var counter = plc.MAIN._counter;

Console.WriteLine($"{counter.Symbol}: '{counter.Cyclic}'");
~~~
