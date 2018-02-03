#tag Module
Protected Module modGlobals
	#tag Method, Flags = &h0
		Function BoolToText(extends b as Boolean) As text
		  if b = true then
		    return "True"
		  else
		    Return "False"
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function cBool(t as Text) As Boolean
		  select case t
		  case "1", "True", "T"
		    return true
		  else
		    return false
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setNavBarColor(v as iOSView, barColor as color, buttonColor as color, translucent as boolean = false)
		  
		  
		  declare function NSClassFromString      lib "Foundation" (classname as CFStringRef) as ptr
		  declare function keyWindow              lib "UIKit" selector "keyWindow"  (obj_ref as ptr) as ptr
		  declare function sharedApplication      lib "UIKit" selector "sharedApplication"  (obj_ref as ptr) as ptr
		  declare function rootViewController      lib "UIKit" selector "rootViewController"  (obj_ref as ptr) as ptr
		  declare function navigationBar          lib "UIKit" selector "navigationBar"  (obj_ref as ptr) as ptr
		  
		  declare function navigationController lib "UIKit" selector "navigationController" (viewController as ptr) as ptr
		  dim navigationControllerRef as ptr = navigationController(v.ViewControllerHandle)
		  dim sApp as ptr = sharedApplication(NSClassFromString("UIApplication"))
		  dim navBar as ptr = navigationBar(navigationControllerRef)
		  
		  declare sub setTintColor lib UIKitLib selector "setTintColor:" (id as ptr, UIColor as Ptr)
		  setTintColor navBar, new UIColor(buttonColor)
		  
		  declare sub setBarTintColor lib UIKitLib selector "setBarTintColor:" (id as ptr, UIColor as Ptr)
		  setBarTintColor navBar, new UIColor(barColor)
		  
		  if translucent then
		    declare sub setTranslucent lib UIKitLib selector "setTranslucent:" (id as ptr)
		    setTranslucent navBar
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToDataMB(extends Image as iOSImage) As xojo.Core.MemoryBlock
		  Declare function UIImageJPEGRepresentation lib UIKitLib (obj_id as ptr) as ptr
		  dim d as new Foundation.NSData(UIImageJPEGRepresentation(image.Handle))
		  
		  dim mb as MemoryBlock
		  mb = d.DataMb
		  
		  return mb
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		iCurrentGameSeconds As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iTeamIndex As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="iCurrentGameSeconds"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
