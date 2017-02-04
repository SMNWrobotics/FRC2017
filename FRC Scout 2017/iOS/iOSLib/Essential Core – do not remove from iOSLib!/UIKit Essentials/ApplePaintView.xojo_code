#tag Class
Protected Class ApplePaintView
Inherits AppleView
	#tag Method, Flags = &h0, Description = 437265617465732061206E6577207669657720696E2074686520737065636966696564206672616D652E
		Sub Constructor(Frame as FoundationFrameWork.nsrect)
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(UIKitFramework.initWithFrame(alloc(classptr), frame), true)
		  me.registerIdentity(self)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_DrawRect(pid as ptr, sel as ptr, rect as FoundationFramework.NSRect)
		  dim ego as ApplePaintView = applepaintview(InformInstance(pid))
		  if ego <> nil  then ego.informonDrawRect (rect)
		  
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDrawRect(Rect as FoundationFramework.NSRect)
		  RaiseEvent DrawRect (rect)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function MakefromPtr(aPtr as Ptr) As ApplePaintView
		  return if (aptr = nil, nil, new applepaintview(aptr))
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652072656374616E676C6520286F722077686F6C65206172656129206F662074686520766965772067657473207265647261776E
		Event DrawRect(Rect  as FoundationFramework.NSRect)
	#tag EndHook


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  // subclassing OSXLibView here with a DrawRect event handler
			  
			  static mClassPtr as ptr
			  if mClassPtr = Nil and appleview.classptr <> nil then
			    dim methods() as TargetClassMethodHelper
			    
			    // NSview additional "delegate" methods
			    methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect, "v@:{CGRect}")
			    
			    mClassPtr = BuildTargetClass ("iOSLibView", "iOSLibPaintView",methods)
			  end if
			  Return mClassPtr
			  
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty


	#tag ViewBehavior
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
End Class
#tag EndClass
