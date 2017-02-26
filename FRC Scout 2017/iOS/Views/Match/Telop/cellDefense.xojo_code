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
      AutoLayout      =   lblTitle, 1, , 0, False, +1.00, 1, 1, 20, 
      AutoLayout      =   lblTitle, 7, , 0, False, +1.00, 1, 1, 1.48e+2, 
      AutoLayout      =   lblTitle, 3, , 0, False, +1.00, 1, 1, 1, 
      AutoLayout      =   lblTitle, 8, , 0, False, +1.00, 1, 1, 3.0e+1, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Defense"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   18
      Top             =   1
      Visible         =   True
      Width           =   148.0
   End
   Begin iOSSwitch chkPlayedDefense
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   chkPlayedDefense, 1, <Parent>, 1, False, +1.00, 1, 1, 249, 
      AutoLayout      =   chkPlayedDefense, 7, , 0, True, +1.00, 1, 1, 51, 
      AutoLayout      =   chkPlayedDefense, 3, <Parent>, 3, False, +1.00, 1, 1, 5, 
      AutoLayout      =   chkPlayedDefense, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      Left            =   249
      LockedInPosition=   False
      Scope           =   0
      Top             =   5
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label1, 2, chkPlayedDefense, 1, False, +1.00, 1, 1, -*kStdControlGapH, 
      AutoLayout      =   Label1, 3, <Parent>, 3, False, +1.00, 1, 1, 6, 
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 1, 1, 52, 
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
      Top             =   6
      Visible         =   True
      Width           =   52.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label2, 1, <Parent>, 1, False, +1.00, 2, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Label2, 3, Label1, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 1, 1, 94, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Effectiveness:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   44
      Visible         =   True
      Width           =   94.0
   End
   Begin iOSSegmentedControl segEffectiveness
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   segEffectiveness, 11, Label2, 11, False, +1.00, 1, 1, 0, 
      AutoLayout      =   segEffectiveness, 8, , 0, True, +1.00, 1, 1, 29, 
      AutoLayout      =   segEffectiveness, 1, Label2, 2, False, +1.00, 1, 1, 10, 
      AutoLayout      =   segEffectiveness, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   124
      LockedInPosition=   False
      Scope           =   0
      Segments        =   "Bad\n\nFalse\rOkay\n\nTrue\rGood\n\nFalse"
      Top             =   44
      Value           =   1
      Visible         =   True
      Width           =   176.0
   End
End
#tag EndIOSContainerControl

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Load()
		  chkPlayedDefense.value = cbool(m_oDefense.svalue)
		  
		  select case m_oDefenseEffectiveness.sValue
		  case "Bad", ""
		    segEffectiveness.value = 0
		  case "Okay"
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
		  
		  
		  m_oDefense.svalue = chkPlayedDefense.value.BoolToText
		  m_oDefense.save
		  
		  select case segEffectiveness.value
		  case 0
		    m_oDefenseEffectiveness.sValue = "Bad"
		  case 1
		    m_oDefenseEffectiveness.sValue = "Okay"
		  case 2
		    m_oDefenseEffectiveness.sValue = "Good"
		  case else
		    break
		  end
		  
		  m_oDefenseEffectiveness.save
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetGame(oDefense as DataFile.T_Game, oDefenseEffectiveness as DataFile.T_Game)
		  m_oDefense = oDefense
		  m_oDefenseEffectiveness = oDefenseEffectiveness
		  
		  Load
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		m_oDefense As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		m_oDefenseEffectiveness As DataFile.T_Game
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
