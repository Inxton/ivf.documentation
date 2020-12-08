# fbVortexer Class
 _**\[This is preliminary documentation and is subject to change.\]**_

Root block for any vortex framework object.


## Inheritance Hierarchy
<a href="https://docs.microsoft.com/dotnet/api/system.object" target="_blank">System.Object</a><br />&nbsp;&nbsp;VortexBase.fbVortexer<br />&nbsp;&nbsp;&nbsp;&nbsp;<a href="#inheritance-hierarchy">More...</a>
**Namespace:**&nbsp;<a href="N_VortexBase.md">VortexBase</a><br />**Assembly:**&nbsp;VortexBaseConnector (in VortexBaseConnector.dll) Version: 0.101.0-dotnetcore.38+Branch.feature/dotnetcore.Sha.9184ded7250ef900bfdd1d83b2841836087bcfce

## Syntax

**C#**<br />
``` C#
public class fbVortexer : IVortexIdentity, IVortexer, 
	IVortexObject, ITwinObject, IVortexElement, IVortexOnlineObject, IVortexShadowObject
```

The fbVortexer type exposes the following members.


## Constructors
&nbsp;<table><tr><th></th><th>Name</th><th>Description</th></tr><tr><td>![Public method](media/pubmethod.gif "Public method")</td><td><a href="M_VortexBase_fbVortexer__ctor.md">fbVortexer()</a></td><td>
Initializes a new instance of the fbVortexer class</td></tr><tr><td>![Public method](media/pubmethod.gif "Public method")</td><td><a href="M_VortexBase_fbVortexer__ctor_1.md">fbVortexer(IVortexObject, String, String)</a></td><td>
Initializes a new instance of the fbVortexer class</td></tr></table>&nbsp;
<a href="#fbvortexer-class">Back to Top</a>

## Properties
&nbsp;<table><tr><th></th><th>Name</th><th>Description</th></tr><tr><td>![Public property](media/pubproperty.gif "Public property")</td><td><a href="P_VortexBase_fbVortexer__messenger.md">_messenger</a></td><td>
Provides messager for this instance.</td></tr><tr><td>![Public property](media/pubproperty.gif "Public property")</td><td><a href="P_VortexBase_fbVortexer_Analyzer.md">Analyzer</a></td><td /></tr><tr><td>![Public property](media/pubproperty.gif "Public property")</td><td><a href="P_VortexBase_fbVortexer_App.md">App</a></td><td>
Gets the application this with this object belongs.</td></tr><tr><td>![Public property](media/pubproperty.gif "Public property")</td><td><a href="P_VortexBase_fbVortexer_AttributeName.md">AttributeName</a></td><td /></tr><tr><td>![Public property](media/pubproperty.gif "Public property")</td><td><a href="P_VortexBase_fbVortexer_AttributeToolTip.md">AttributeToolTip</a></td><td /></tr><tr><td>![Protected property](media/protproperty.gif "Protected property")</td><td><a href="P_VortexBase_fbVortexer_Connector.md">Connector</a></td><td /></tr><tr><td>![Public property](media/pubproperty.gif "Public property")</td><td><a href="P_VortexBase_fbVortexer_HumanReadable.md">HumanReadable</a></td><td /></tr><tr><td>![Public property](media/pubproperty.gif "Public property")</td><td><a href="P_VortexBase_fbVortexer_Identity.md">Identity</a></td><td>
Unique identity of this instance.</td></tr><tr><td>![Public property](media/pubproperty.gif "Public property")</td><td><a href="P_VortexBase_fbVortexer_Mime.md">Mime</a></td><td>
Gets most important message holder of this fbVortexer.</td></tr><tr><td>![Protected property](media/protproperty.gif "Protected property")</td><td><a href="P_VortexBase_fbVortexer_Parent.md">Parent</a></td><td /></tr><tr><td>![Public property](media/pubproperty.gif "Public property")</td><td><a href="P_VortexBase_fbVortexer_Symbol.md">Symbol</a></td><td /></tr><tr><td>![Protected property](media/protproperty.gif "Protected property")</td><td><a href="P_VortexBase_fbVortexer_SymbolTail.md">SymbolTail</a></td><td /></tr></table>&nbsp;
<a href="#fbvortexer-class">Back to Top</a>

## Methods
&nbsp;<table><tr><th></th><th>Name</th><th>Description</th></tr><tr><td>![Public method](media/pubmethod.gif "Public method")</td><td><a href="M_VortexBase_fbVortexer_AddChild.md">AddChild</a></td><td /></tr><tr><td>![Public method](media/pubmethod.gif "Public method")</td><td><a href="M_VortexBase_fbVortexer_AddValueTag.md">AddValueTag</a></td><td /></tr><tr><td>![Public method](media/pubmethod.gif "Public method")</td><td><a href="M_VortexBase_fbVortexer_CopyPlainToShadow.md">CopyPlainToShadow</a></td><td /></tr><tr><td>![Public method](media/pubmethod.gif "Public method")</td><td><a href="M_VortexBase_fbVortexer_CreatePlainerType.md">CreatePlainerType()</a></td><td /></tr><tr><td>![Protected method](media/protmethod.gif "Protected method")</td><td><a href="M_VortexBase_fbVortexer_CreatePlainerType_1.md">CreatePlainerType(PlainfbVortexer)</a></td><td /></tr><tr><td>![Public method](media/pubmethod.gif "Public method")</td><td><a href="https://docs.microsoft.com/dotnet/api/system.object.equals#System_Object_Equals_System_Object_" target="_blank">Equals</a></td><td>
Determines whether the specified object is equal to the current object.
 (Inherited from <a href="https://docs.microsoft.com/dotnet/api/system.object" target="_blank">Object</a>.)</td></tr><tr><td>![Protected method](media/protmethod.gif "Protected method")</td><td><a href="https://docs.microsoft.com/dotnet/api/system.object.finalize#System_Object_Finalize" target="_blank">Finalize</a></td><td>
Allows an object to try to free resources and perform other cleanup operations before it is reclaimed by garbage collection.
 (Inherited from <a href="https://docs.microsoft.com/dotnet/api/system.object" target="_blank">Object</a>.)</td></tr><tr><td>![Public method](media/pubmethod.gif "Public method")</td><td><a href="M_VortexBase_fbVortexer_FlushOnlineToPlain.md">FlushOnlineToPlain</a></td><td /></tr><tr><td>![Public method](media/pubmethod.gif "Public method")</td><td><a href="M_VortexBase_fbVortexer_FlushOnlineToShadow.md">FlushOnlineToShadow</a></td><td /></tr><tr><td>![Public method](media/pubmethod.gif "Public method")</td><td><a href="M_VortexBase_fbVortexer_FlushPlainToOnline.md">FlushPlainToOnline</a></td><td /></tr><tr><td>![Public method](media/pubmethod.gif "Public method")</td><td><a href="M_VortexBase_fbVortexer_FlushShadowToOnline.md">FlushShadowToOnline</a></td><td /></tr><tr><td>![Public method](media/pubmethod.gif "Public method")</td><td><a href="M_VortexBase_fbVortexer_GetChildren.md">GetChildren</a></td><td /></tr><tr><td>![Public method](media/pubmethod.gif "Public method")</td><td><a href="M_VortexBase_fbVortexer_GetConnector.md">GetConnector</a></td><td /></tr><tr><td>![Public method](media/pubmethod.gif "Public method")</td><td><a href="https://docs.microsoft.com/dotnet/api/system.object.gethashcode#System_Object_GetHashCode" target="_blank">GetHashCode</a></td><td>
Serves as the default hash function.
 (Inherited from <a href="https://docs.microsoft.com/dotnet/api/system.object" target="_blank">Object</a>.)</td></tr><tr><td>![Public method](media/pubmethod.gif "Public method")</td><td><a href="M_VortexBase_fbVortexer_GetParent.md">GetParent</a></td><td /></tr><tr><td>![Public method](media/pubmethod.gif "Public method")</td><td><a href="M_VortexBase_fbVortexer_GetSymbolTail.md">GetSymbolTail</a></td><td /></tr><tr><td>![Public method](media/pubmethod.gif "Public method")</td><td><a href="https://docs.microsoft.com/dotnet/api/system.object.gettype#System_Object_GetType" target="_blank">GetType</a></td><td>
Gets the <a href="https://docs.microsoft.com/dotnet/api/system.type" target="_blank">Type</a> of the current instance.
 (Inherited from <a href="https://docs.microsoft.com/dotnet/api/system.object" target="_blank">Object</a>.)</td></tr><tr><td>![Public method](media/pubmethod.gif "Public method")</td><td><a href="M_VortexBase_fbVortexer_GetValueTags.md">GetValueTags</a></td><td /></tr><tr><td>![Public method](media/pubmethod.gif "Public method")</td><td><a href="M_VortexBase_fbVortexer_LazyOnlineToShadow.md">LazyOnlineToShadow</a></td><td /></tr><tr><td>![Public method](media/pubmethod.gif "Public method")</td><td><a href="M_VortexBase_fbVortexer_LazyShadowToOnline.md">LazyShadowToOnline</a></td><td /></tr><tr><td>![Protected method](media/protmethod.gif "Protected method")</td><td><a href="https://docs.microsoft.com/dotnet/api/system.object.memberwiseclone#System_Object_MemberwiseClone" target="_blank">MemberwiseClone</a></td><td>
Creates a shallow copy of the current <a href="https://docs.microsoft.com/dotnet/api/system.object" target="_blank">Object</a>.
 (Inherited from <a href="https://docs.microsoft.com/dotnet/api/system.object" target="_blank">Object</a>.)</td></tr><tr><td>![Public method](media/pubmethod.gif "Public method")</td><td><a href="https://docs.microsoft.com/dotnet/api/system.object.tostring#System_Object_ToString" target="_blank">ToString</a></td><td>
Returns a string that represents the current object.
 (Inherited from <a href="https://docs.microsoft.com/dotnet/api/system.object" target="_blank">Object</a>.)</td></tr></table>&nbsp;
<a href="#fbvortexer-class">Back to Top</a>

## Fields
&nbsp;<table><tr><th></th><th>Name</th><th>Description</th></tr><tr><td>![Protected field](media/protfield.gif "Protected field")</td><td><a href="F_VortexBase_fbVortexer__humanReadable.md">_humanReadable</a></td><td /></tr></table>&nbsp;
<a href="#fbvortexer-class">Back to Top</a>

## Extension Methods
&nbsp;<table><tr><th></th><th>Name</th><th>Description</th></tr><tr><td>![Public Extension Method](media/pubextension.gif "Public Extension Method")</td><td><a href="M_VortexBase_Extensions_IVortexObjectExtensions_GetParentOfType__1.md">GetParentOfType(T)</a></td><td>
Searches recursively the parents of this IVortexObject until encounters object of given type. When the root object IConnector is hit climbing up the hierarchy the method returns pre-existing parent.
 (Defined by <a href="T_VortexBase_Extensions_IVortexObjectExtensions.md">IVortexObjectExtensions</a>.)</td></tr></table>&nbsp;
<a href="#fbvortexer-class">Back to Top</a>

## See Also


#### Reference
<a href="N_VortexBase.md">VortexBase Namespace</a><br /><a href="T_VortexBase_fbVortexer_PlcfbVortexer.md">VortexBase.fbVortexer.PlcfbVortexer</a><br />

## Inheritance Hierarchy<a href="https://docs.microsoft.com/dotnet/api/system.object" target="_blank">System.Object</a><br />&nbsp;&nbsp;VortexBase.fbVortexer<br />&nbsp;&nbsp;&nbsp;&nbsp;<a href="T_VortexBase_fbChild.md">VortexBase.fbChild</a><br />&nbsp;&nbsp;&nbsp;&nbsp;<a href="T_VortexBase_fbCommand.md">VortexBase.fbCommand</a><br />&nbsp;&nbsp;&nbsp;&nbsp;<a href="T_VortexBase_fbCommandHolder.md">VortexBase.fbCommandHolder</a><br />&nbsp;&nbsp;&nbsp;&nbsp;<a href="T_VortexBase_fbComponent.md">VortexBase.fbComponent</a><br />&nbsp;&nbsp;&nbsp;&nbsp;<a href="T_VortexBase_fbFather.md">VortexBase.fbFather</a><br />&nbsp;&nbsp;&nbsp;&nbsp;<a href="T_VortexBase_fbGrandChild.md">VortexBase.fbGrandChild</a><br />&nbsp;&nbsp;&nbsp;&nbsp;<a href="T_VortexBase_fbInPeripheryItem.md">VortexBase.fbInPeripheryItem</a><br />&nbsp;&nbsp;&nbsp;&nbsp;<a href="T_VortexBase_fbInPeripheryItemChars.md">VortexBase.fbInPeripheryItemChars</a><br />&nbsp;&nbsp;&nbsp;&nbsp;<a href="T_VortexBase_fbInPeripheryItemDateTime.md">VortexBase.fbInPeripheryItemDateTime</a><br />&nbsp;&nbsp;&nbsp;&nbsp;<a href="T_VortexBase_fbInPeripheryItemNumerical.md">VortexBase.fbInPeripheryItemNumerical</a><br />&nbsp;&nbsp;&nbsp;&nbsp;<a href="T_VortexBase_fbOutPeripheryItem.md">VortexBase.fbOutPeripheryItem</a><br />&nbsp;&nbsp;&nbsp;&nbsp;<a href="T_VortexBase_fbOutPeripheryItemChars.md">VortexBase.fbOutPeripheryItemChars</a><br />&nbsp;&nbsp;&nbsp;&nbsp;<a href="T_VortexBase_fbOutPeripheryItemDateTime.md">VortexBase.fbOutPeripheryItemDateTime</a><br />&nbsp;&nbsp;&nbsp;&nbsp;<a href="T_VortexBase_fbOutPeripheryItemNumerical.md">VortexBase.fbOutPeripheryItemNumerical</a><br />&nbsp;&nbsp;&nbsp;&nbsp;<a href="T_VortexBase_fbRemoteExec.md">VortexBase.fbRemoteExec</a><br />&nbsp;&nbsp;&nbsp;&nbsp;<a href="T_VortexBase_fbVortexApp.md">VortexBase.fbVortexApp</a><br />