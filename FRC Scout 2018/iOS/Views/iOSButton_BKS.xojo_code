#tag Class
Protected Class iOSButton_BKS
Inherits iOSButton
	#tag Event
		Sub Open()
		  SetColor
		  
		  ' &cCCCCCC00
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub SetColor()
		  Declare Function NSClassFromString Lib "Foundation" (className As CFStringRef) As Ptr
		  Declare Function colorWithRGBA Lib "UIKit" Selector "colorWithRed:green:blue:alpha:" ( UIColorClassRef As Ptr, red As CGFloat, green As CGFloat, blue As CGFloat, alpha As CGFloat) As Ptr
		  Declare Function view Lib "UIKit" Selector "view" (UIViewController As Ptr) As Ptr
		  Declare Sub setBackgroundColor Lib "UIKit" Selector "setBackgroundColor:" (UIView As Ptr, UIColor As Ptr)
		  
		  Dim UIColorClassPtr As Ptr =  NSClassFromString("UIColor")
		  
		  Dim r As Integer = BackColor.red
		  Dim g As Integer = BackColor.Green
		  Dim b As Integer = BackColor.blue
		  
		  Dim colorPtr As ptr = colorWithRGBA(UIColorClassPtr, (r / 255), (g/ 255), (b / 255), 1)
		  Dim viewPtr As Ptr = Me.Handle
		  setBackgroundColor(viewPtr, colorPtr)
		  
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mBackColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mBackColor = value
			  
			  SetColor
			End Set
		#tag EndSetter
		BackColor As color
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mBackColor As color = &cFFFFFF
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AccessibilityHint"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityLabel"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackColor"
			Visible=true
			Group="Behavior"
			InitialValue="&cCCCCCC"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Caption"
			Visible=true
			Group="Behavior"
			InitialValue="Untitled"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="30"
			Type="Double"
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
			Name="TextColor"
			Visible=true
			Group="Behavior"
			InitialValue="&c007AFF"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
