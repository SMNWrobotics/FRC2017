#tag IOSContainerControl
Begin iOSCustomTableCell cellDriverSkill
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
      AutoLayout      =   lblTitle, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   lblTitle, 7, , 0, False, +1.00, 1, 1, 1.48e+2, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Driver Skill"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   18
      Top             =   0
      Visible         =   True
      Width           =   148.0
   End
   Begin iOSSegmentedControl segEffectiveness
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   segEffectiveness, 1, <Parent>, 1, False, +1.00, 1, 1, 8, , True
      AutoLayout      =   segEffectiveness, 2, <Parent>, 2, False, +1.00, 1, 1, -13, , True
      AutoLayout      =   segEffectiveness, 3, <Parent>, 3, False, +1.00, 1, 1, 38, , True
      AutoLayout      =   segEffectiveness, 8, , 0, True, +1.00, 1, 1, 29, , True
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   8
      LockedInPosition=   False
      Scope           =   0
      Segments        =   "Bad\n\nFalse\rOkay\n\nTrue\rGood\n\nFalse"
      Top             =   38
      Value           =   1
      Visible         =   True
      Width           =   299.0
   End
End
#tag EndIOSContainerControl

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Load()
		  select case m_oGame.sValue
		  case "Bad"
		    segEffectiveness.value = 0
		  case "Okay", ""
		    segEffectiveness.value = 1
		  case "Good"
		    segEffectiveness.value = 2
		  case else
		    break
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  select case segEffectiveness.value
		  case 0
		    m_oGame.sValue = "Bad"
		  case 1
		    m_oGame.sValue = "Okay"
		  case 2
		    m_oGame.sValue = "Good"
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
