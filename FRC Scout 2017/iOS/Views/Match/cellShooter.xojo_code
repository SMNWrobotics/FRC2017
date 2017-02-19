#tag IOSContainerControl
Begin iOSCustomTableCell cellShooter
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Height          =   84.0
   Left            =   0.0
   Top             =   0.0
   Visible         =   True
   Width           =   320.0
   Begin iOSSegmentedControl SegmentedControl1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SegmentedControl1, 8, , 0, True, +1.00, 1, 1, 29, 
      AutoLayout      =   SegmentedControl1, 1, Label1, 2, False, +1.00, 1, 1, 20, 
      AutoLayout      =   SegmentedControl1, 2, <Parent>, 2, False, +1.00, 1, 1, -2, 
      AutoLayout      =   SegmentedControl1, 3, <Parent>, 3, False, +1.00, 1, 1, 2, 
      AutoLayout      =   SegmentedControl1, 7, , 0, False, +1.00, 1, 1, 200, 
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   118
      LockedInPosition=   False
      Scope           =   0
      Segments        =   "Not Attempted\n\nTrue\rAttempted\n\nFalse"
      Top             =   2
      Value           =   0
      Visible         =   True
      Width           =   200.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 1, Slider1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 1, 1, 80, 
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label1, 11, SegmentedControl1, 11, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   30.0
      Left            =   18
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "High Shooter"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   1
      Visible         =   True
      Width           =   80.0
   End
   Begin iOSSlider Slider1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Slider1, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Slider1, 2, lblPercentage, 1, False, +1.00, 1, 1, -20, 
      AutoLayout      =   Slider1, 3, lblPercentage, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Slider1, 8, , 0, True, +1.00, 1, 1, 23, 
      Enabled         =   True
      Height          =   23.0
      Left            =   18
      LockedInPosition=   False
      MaxValue        =   100.0
      MinValue        =   0.0
      Scope           =   0
      Top             =   45
      Value           =   0.0
      Visible         =   True
      Width           =   257.0
   End
   Begin iOSLabel lblPercentage
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblPercentage, 7, , 0, False, +1.00, 1, 1, 25, 
      AutoLayout      =   lblPercentage, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   lblPercentage, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   lblPercentage, 4, <Parent>, 4, False, +1.00, 1, 1, -9, 
      Enabled         =   True
      Height          =   30.0
      Left            =   295
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "0"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   45
      Visible         =   True
      Width           =   25.0
   End
End
#tag EndIOSContainerControl

#tag WindowCode
#tag EndWindowCode

#tag Events Slider1
	#tag Event
		Sub ValueChanged()
		  lblPercentage.text = me.value.ToText
		End Sub
	#tag EndEvent
#tag EndEvents
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
		Name="Height"
		InitialValue="480"
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
		InitialValue="iOSCustomTableCell"
		Type="String"
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
		InitialValue="320"
		Type="Double"
	#tag EndViewProperty
#tag EndViewBehavior
