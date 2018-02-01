#tag IOSView
Begin iosView vwAddTeam
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "Add Team"
   Top             =   0
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Label1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   Label1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Key"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   65
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSTextField txtKey
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   txtKey, 1, Label1, 1, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   txtKey, 2, Label1, 2, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   txtKey, 3, Label1, 4, False, +1.00, 1, 1, *kStdControlGapV, , True
      AutoLayout      =   txtKey, 8, , 0, True, +1.00, 1, 1, 31, , True
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Unique Key"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   103
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 1, txtKey, 1, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 1, 1, 280, , True
      AutoLayout      =   Label2, 3, txtKey, 4, False, +1.00, 1, 1, *kStdControlGapV, , True
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Team Number"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   142
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSTextField txtTeamNumber
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   txtTeamNumber, 1, Label2, 1, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   txtTeamNumber, 7, , 0, False, +1.00, 1, 1, 280, , True
      AutoLayout      =   txtTeamNumber, 3, Label2, 4, False, +1.00, 1, 1, *kStdControlGapV, , True
      AutoLayout      =   txtTeamNumber, 8, , 0, True, +1.00, 1, 1, 31, , True
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Team Number"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   180
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel Label3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label3, 1, txtTeamNumber, 1, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   Label3, 7, , 0, False, +1.00, 1, 1, 280, , True
      AutoLayout      =   Label3, 3, txtTeamNumber, 4, False, +1.00, 1, 1, *kStdControlGapV, , True
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 1, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Nick Name"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   219
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSTextField txtName
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   txtName, 1, Label3, 1, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   txtName, 7, , 0, False, +1.00, 1, 1, 280, , True
      AutoLayout      =   txtName, 3, Label3, 4, False, +1.00, 1, 1, *kStdControlGapV, , True
      AutoLayout      =   txtName, 8, , 0, True, +1.00, 1, 1, 31, , True
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Team Name"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   257
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSButton_BKS btnSave
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnSave, 7, , 0, False, +1.00, 1, 1, 100, , True
      AutoLayout      =   btnSave, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   btnSave, 3, txtName, 4, False, +1.00, 1, 1, *kStdControlGapV, , True
      AutoLayout      =   btnSave, 8, , 0, False, +1.00, 1, 1, 30, , True
      BackColor       =   &cCCCCCC00
      Caption         =   "Save"
      Enabled         =   True
      Height          =   30.0
      Left            =   200.0
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   296.0
      Visible         =   True
      Width           =   100.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Constructor(oTeam as DataFile.t_team)
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  
		  m_oTeam = oteam
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  m_oTeam.iEvent_ID = app.oSelectedEvent.ievent_ID
		  m_oteam.sKey = txtKey.text
		  m_oTeam.sTeam_Number  = txtTeamNumber.text
		  m_oTeam.sName = txtName.text
		  m_oTeam.sNickName = txtName.text
		  m_oTeam.save
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Validate() As boolean
		  if txtKey.text = "" then
		    MsgBox "Validate Error", "Key Cannot Be Blank"
		    return false
		  end
		  
		  if m_oTeam.IsKeyDuplicated(txtKey.Text) = true then
		    MsgBox "Validate Error", "That key already exists.  Choose again."
		    return false
		  end
		  
		  return true
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		m_oTeam As DataFile.t_team
	#tag EndProperty


#tag EndWindowCode

#tag Events btnSave
	#tag Event
		Sub Action()
		  if Validate = false then return
		  
		  Save
		  
		  Self.close
		  
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
