#tag IOSContainerControl
Begin iOSCustomTableCell cellDefense
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
      Text            =   "Defense"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   0
      Visible         =   True
      Width           =   148.0
   End
   Begin iOSSwitch chkPlayedDefense
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   chkPlayedDefense, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   chkPlayedDefense, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   chkPlayedDefense, 3, lblTitle, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   chkPlayedDefense, 1, , 0, False, +1.00, 1, 1, 249, 
      Enabled         =   True
      Height          =   31.0
      Left            =   249
      LockedInPosition=   False
      Scope           =   0
      Top             =   0
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 1, 1, 52, 
      AutoLayout      =   Label1, 2, <Parent>, 2, False, +1.00, 1, 1, -79, 
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label1, 11, lblTitle, 11, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   30.0
      Left            =   189
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Played:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   0
      Visible         =   True
      Width           =   52.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 1, lblTitle, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 1, 1, 94, 
      AutoLayout      =   Label2, 3, <Parent>, 3, False, +1.00, 1, 1, 47, 
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   0
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Effectiveness:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   47
      Visible         =   True
      Width           =   94.0
   End
   Begin iOSSegmentedControl segEffectiveness
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   segEffectiveness, 1, <Parent>, 1, False, +1.00, 1, 1, 112, 
      AutoLayout      =   segEffectiveness, 7, , 0, False, +1.00, 1, 1, 200, 
      AutoLayout      =   segEffectiveness, 11, Label2, 11, False, +1.00, 1, 1, 0, 
      AutoLayout      =   segEffectiveness, 8, , 0, True, +1.00, 1, 1, 29, 
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   112
      LockedInPosition=   False
      Scope           =   0
      Segments        =   "Bad\n\nFalse\rOkay\n\nFalse\rGood\n\nFalse"
      Top             =   47
      Value           =   -1
      Visible         =   True
      Width           =   200.0
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
