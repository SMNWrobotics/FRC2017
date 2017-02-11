#tag IOSView
Begin iosView vwRobot
   BackButtonTitle =   "Back"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "Robot Scouting"
   Top             =   0
   Begin ccCamera ccCamera1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ccCamera1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   ccCamera1, 7, , 0, False, +1.00, 1, 1, 235, 
      AutoLayout      =   ccCamera1, 3, , 0, False, +1.00, 1, 1, 81, 
      AutoLayout      =   ccCamera1, 8, , 0, False, +1.00, 1, 1, 208, 
      Height          =   208.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      Top             =   81
      Visible         =   True
      Width           =   235.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events ccCamera1
	#tag Event
		Function GetView() As iOSView
		  return self
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackButtonTitle"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
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
		Name="NavigationBarVisible"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIcon"
		Group="Behavior"
		Type="iOSImage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabTitle"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
