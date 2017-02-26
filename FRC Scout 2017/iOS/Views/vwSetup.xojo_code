#tag IOSView
Begin iosView vwSetup
   BackButtonTitle =   "Back"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "Setup"
   Top             =   0
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Label2, 2, Label3, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label2, 3, Label3, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Name"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   164
      Visible         =   True
      Width           =   58.0
   End
   Begin iOSTextField txtName
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   txtName, 1, <Parent>, 1, False, +1.00, 1, 1, 86, 
      AutoLayout      =   txtName, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   txtName, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   txtName, 3, , 0, False, +1.00, 1, 1, 163, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   86
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Your Name"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   163
      Visible         =   True
      Width           =   234.0
   End
   Begin iOSLabel Label3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label3, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Label3, 7, , 0, False, +1.00, 1, 1, 58, 
      AutoLayout      =   Label3, 3, <Parent>, 3, False, +1.00, 1, 1, 126, 
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Team"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   126
      Visible         =   True
      Width           =   58.0
   End
   Begin iOSButton btnSave
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnSave, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   btnSave, 9, <Parent>, 9, False, +1.00, 1, 1, 0, 
      AutoLayout      =   btnSave, 3, <Parent>, 3, False, +1.00, 1, 1, 212, 
      AutoLayout      =   btnSave, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Save"
      Enabled         =   True
      Height          =   30.0
      Left            =   110
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   212
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSButton btnIMport
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnIMport, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   btnIMport, 9, <Parent>, 9, False, +1.00, 1, 1, 0, 
      AutoLayout      =   btnIMport, 3, <Parent>, 3, False, +1.00, 1, 1, 379, 
      AutoLayout      =   btnIMport, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Import Data"
      Enabled         =   True
      Height          =   30.0
      Left            =   110
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   379
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSTextField txtTeamNumber
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   txtTeamNumber, 1, Label3, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   txtTeamNumber, 7, , 0, False, +1.00, 1, 1, 234, 
      AutoLayout      =   txtTeamNumber, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   txtTeamNumber, 3, , 0, False, +1.00, 1, 1, 125, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "4"
      Left            =   86
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Team Number"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   125
      Visible         =   True
      Width           =   234.0
   End
   Begin iOSLabel lblInstructions1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblInstructions1, 1, Label3, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   lblInstructions1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   lblInstructions1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   lblInstructions1, 4, Label3, 3, False, +1.00, 1, 1, -*kStdControlGapV, 
      Enabled         =   True
      Height          =   45.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Tell us who you are and what team you're scouting for.  Thanks for helping!"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      Top             =   73
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel lblInstructions2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblInstructions2, 1, lblInstructions1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   lblInstructions2, 7, , 0, False, +1.00, 1, 1, 280, 
      AutoLayout      =   lblInstructions2, 4, btnIMport, 3, False, +1.00, 1, 1, -*kStdControlGapV, 
      AutoLayout      =   lblInstructions2, 8, , 0, False, +1.00, 1, 1, 89, 
      Enabled         =   True
      Height          =   89.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Import Data imports Event, Team, and Match information from The Blue Alliance website.  You can also setup manual events here too."
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      Top             =   282
      Visible         =   True
      Width           =   280.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Activate()
		  dim s as Text = Foundation.NSUserDefaults.StandardUserDefaults.TextForKey("TeamNumber")
		  if s <> "" then
		    txtTeamNumber.text = s
		  end
		  
		  s = Foundation.NSUserDefaults.StandardUserDefaults.TextForKey("ScoutName")
		  if s <> "" then
		    txtName.text = s
		  end
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events btnSave
	#tag Event
		Sub Action()
		  Foundation.NSUserDefaults.StandardUserDefaults.SetTextForKey(txtTeamNumber.text, "TeamNumber")
		  
		  Foundation.NSUserDefaults.StandardUserDefaults.SetTextForKey(txtName.text, "ScoutName")
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnIMport
	#tag Event
		Sub Action()
		  self.PushTo new vwImportData
		End Sub
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
