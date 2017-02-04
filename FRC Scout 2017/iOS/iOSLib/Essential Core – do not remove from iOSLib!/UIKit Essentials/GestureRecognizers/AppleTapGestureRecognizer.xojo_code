#tag Class
Protected Class AppleTapGestureRecognizer
Inherits AppleGestureRecognizer
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(target as AppleObject, SEL as ptr)
		  Super.Constructor (classptr, Target, SEL)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleTapGestureRecognizer
		  return if (aptr = nil, nil, new AppleTapGestureRecognizer (aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UITapGestureRecognizer")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return NumberOfTapsRequired
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SetNumberOfTapsRequired (value)
			End Set
		#tag EndSetter
		NumberOfTapsRequired As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return GetNumberOfTouchesRequired
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SetNumberOfTouchesRequired (value)
			End Set
		#tag EndSetter
		NumberOfTouchesRequired As UInteger
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
			Name="NumberOfTapsRequired"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberOfTouchesRequired"
			Group="Behavior"
			Type="UInteger"
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
