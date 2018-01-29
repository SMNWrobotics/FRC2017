#tag IOSContainerControl
Begin iOSContainerControl ccMisc
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Height          =   480.0
   Left            =   0.0
   Top             =   0.0
   Visible         =   True
   Width           =   320.0
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 4, 1, 88, , True
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Label1, 3, <Parent>, 3, False, +1.00, 4, 1, 157, , True
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   88
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Misc"
      TextAlignment   =   "0"
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   157
      Visible         =   True
      Width           =   100.0
   End
End
#tag EndIOSContainerControl

#tag WindowCode
#tag EndWindowCode

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
