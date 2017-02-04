#tag Class
Protected Class AppleRotationGestureRecognizer
Inherits AppleGestureRecognizer
	#tag Method, Flags = &h1000
		Sub Constructor(target as AppleObject, SEL as ptr)
		  Super.Constructor (classptr, Target, SEL)
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UIRotationGestureRecognizer")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function rotation lib UIKitLibname selector "rotation" (id as ptr) as double
			  #elseif Target32Bit
			    Declare function rotation lib UIKitLibname selector "rotation" (id as ptr) as single
			  #endif
			  return Rotation (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setRotation lib UIKitLibname selector "setRotation:" (id as ptr, value as double)
			  #elseif Target32Bit
			    Declare Sub setRotation lib UIKitLibname selector "setRotation:" (id as ptr, value as single)
			  #endif
			  setrotation id, value
			End Set
		#tag EndSetter
		Rotation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function velocity lib UIKitLibname selector "velocity" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare function velocity lib UIKitLibname selector "velocity" (id as ptr) as single
			  #endif
			  return velocity (id)
			  
			End Get
		#tag EndGetter
		Velocity As Double
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
			Name="Rotation"
			Group="Behavior"
			Type="Double"
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
		#tag ViewProperty
			Name="Velocity"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
