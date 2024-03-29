
### Presentation type

The content can be rendered in different ways (Read/Write or ReadOnly, Online/Offline data etc.). The layout of the rendered UI can be orchestrated by directives from PLC code (panels, UI elements arrangement, etc.).

### Built-in presentation types

Built-in presentation types are reserved for the use with PrimitiveTwins or IValueTag objects. These objects are mediating values between the application and the controller.

| PresentationType |   | Meaning                                                         |
|------------------|---|-----------------------------------------------------------------|
| Control          |   | Renders controls that allow editing of online values            |
| Display          |   | Renders controls that display read-only access to online values |
| ShadowControl    |   | Renders controls that allow editing of shadow values            |
| ShadowDisplay    |   | Renders controls that display read-only access to shadow values |

When you omit ```PresentationType``` parameter, it will default to ```Display```.
