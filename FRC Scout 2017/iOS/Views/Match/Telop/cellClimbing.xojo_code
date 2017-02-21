#tag IOSContainerControl
Begin iOSCustomTableCell cellClimbing
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Height          =   84.0
   Left            =   0.0
   Top             =   0.0
   Visible         =   True
   Width           =   320.0
   Begin iOSLabel lblTitle
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   30.0
      Left            =   0
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Climbing"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   0
      Visible         =   True
      Width           =   148.0
   End
   Begin iOSSwitch chkAttemped
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   chkAttemped, 2, <Parent>, 2, False, +1.00, 1, 1, -166, 
      AutoLayout      =   chkAttemped, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   chkAttemped, 3, <Parent>, 3, False, +1.00, 1, 1, 45, 
      AutoLayout      =   chkAttemped, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      Left            =   103
      LockedInPosition=   False
      Scope           =   0
      Top             =   45
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSSwitch chkMade
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   chkMade, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   chkMade, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   chkMade, 3, <Parent>, 3, False, +1.00, 1, 1, 45, 
      AutoLayout      =   chkMade, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      Left            =   249
      LockedInPosition=   False
      Scope           =   0
      Top             =   45
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 1, 1, 82, 
      AutoLayout      =   Label1, 3, chkMade, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      PanelIndex      =   -1
      Parent          =   "nil"
      Scope           =   0
      Text            =   "Attempted:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   45
      Visible         =   True
      Width           =   82.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 2, chkMade, 1, False, +1.00, 1, 1, -2, 
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 1, 1, 45, 
      AutoLayout      =   Label2, 11, Label1, 11, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   202
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Made:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   45
      Visible         =   True
      Width           =   45.0
   End
End
#tag EndIOSContainerControl

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Load()
		  select case m_oGame.sValue
		  case "Not Attempted", ""
		    SegmentedControl1.value = 0
		  case "Attempted"
		    SegmentedControl1.value = 1
		  case "Made"
		    SegmentedControl1.value = 2
		  case else
		    break
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  select case SegmentedControl1.value
		  case 0
		    m_oGame.sValue = "Not Attempted"
		  case 1
		    m_oGame.sValue = "Attempted"
		  case 2
		    m_oGame.sValue = "Made"
		  case else
		    break
		  end
		  m_oGame.save
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetGame(oGame as DataFile.T_Game)
		  m_oGame = oGame
		  
		  select case m_oGame.sVariable
		  case "Gear 1"
		    lblTitle.text = "Gear 1 (Left)"
		  case "Gear 2"
		    lblTitle.text = "Gear 2 (Middle)"
		  case "Gear 3"
		    lblTitle.text = "Gear 3 (Right)"
		  end
		  
		  Load
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		m_oGame As DataFile.T_Game
	#tag EndProperty


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
