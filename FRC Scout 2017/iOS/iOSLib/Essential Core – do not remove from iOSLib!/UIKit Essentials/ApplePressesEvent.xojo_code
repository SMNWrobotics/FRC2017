#tag Class
Protected Class ApplePressesEvent
Inherits AppleNSEvent
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getAllPresses Lib UIKitLibname Selector "allPresses" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getPressesForGestureRecognizer Lib UIKitLibname Selector "pressesForGestureRecognizer:" (id as ptr, recognizer as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As ApplePressesEvent
		  return if (aptr = nil, nil, new ApplePressesEvent (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865207374617465206F6620616C6C20706879736963616C20627574746F6E7320696E20746865206576656E74207468617420617265206173736F6369617465642077697468206120706172746963756C61722067657374757265207265636F676E697A65722E
		Function PressesForGestureRecognizer(recognizer as AppleGestureRecognizer) As Appleset
		  return AppleSet.MakefromPtr (getpressesForGestureRecognizer(id, recognizer.id))
		End Function
	#tag EndMethod


	#tag Note, Name = Status completed & documented
		
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 52657475726E7320746865207374617465206F6620616C6C20706879736963616C20627574746F6E7320696E20746865206576656E742E
		#tag Getter
			Get
			  return appleset.MakefromPtr (getAllPresses(id))
			End Get
		#tag EndGetter
		AllPresses As AppleSet
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UIPressesEvent")
			  return mClassPtr
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
