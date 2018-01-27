#tag IOSView
Begin iosView vwAddEvent
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "Add Event"
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
      Text            =   "Year"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   142
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSTextField txtYear
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   txtYear, 1, Label2, 1, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   txtYear, 7, , 0, False, +1.00, 1, 1, 280, , True
      AutoLayout      =   txtYear, 3, Label2, 4, False, +1.00, 1, 1, *kStdControlGapV, , True
      AutoLayout      =   txtYear, 8, , 0, True, +1.00, 1, 1, 31, , True
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "2018"
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
      AutoLayout      =   Label3, 1, txtYear, 1, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   Label3, 7, , 0, False, +1.00, 1, 1, 280, , True
      AutoLayout      =   Label3, 3, txtYear, 4, False, +1.00, 1, 1, *kStdControlGapV, , True
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 1, 1, 30, , True
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
      PlaceHolder     =   "Event Name"
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
   Begin iOSButton btnSave
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnSave, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   btnSave, 7, , 0, False, +1.00, 1, 1, 100, , True
      AutoLayout      =   btnSave, 8, , 0, False, +1.00, 1, 1, 30, , True
      AutoLayout      =   btnSave, 3, txtName, 4, False, +1.00, 1, 1, *kStdControlGapV, , True
      Caption         =   "Save"
      Enabled         =   True
      Height          =   30.0
      Left            =   200
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   296
      Visible         =   True
      Width           =   100.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Constructor(oEvent as DataFile.t_event)
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  
		  m_oEvent = oEvent
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  m_oEvent.skey = txtKey.text
		  m_oEvent.iYear = Integer.Parse(txtYear.text)
		  m_oEvent.sName = txtName.text
		  m_oEvent.dtStart_Date = Xojo.Core.Date.now
		  m_oEvent.dtend_date = Xojo.Core.Date.now
		  m_oEvent.sEvent_Type_String = "99"
		  
		  m_oEvent.save
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Validate() As boolean
		  if txtKey.text = "" then
		    MsgBox "Validate Error", "Key Cannot Be Blank"
		    return false
		  end
		  
		  if m_oEvent.IsKeyDuplicated(txtKey.Text) = true then
		    MsgBox "Validate Error", "That key already exists.  Choose again."
		    return false
		  end
		  
		  return true
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		m_oEvent As DataFile.t_event
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
