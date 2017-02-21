#tag IOSView
Begin iosView vwGoals
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSLabel lblHighGoal
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblHighGoal, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   lblHighGoal, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   lblHighGoal, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   lblHighGoal, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   0
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "High Goal:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      Top             =   73
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label2, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Label2, 3, lblHighGoal, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 1, 1, 60, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Cycles:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   103
      Visible         =   True
      Width           =   60.0
   End
   Begin iOSTextField txtHighCycles
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   txtHighCycles, 1, Label2, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   txtHighCycles, 7, , 0, False, +1.00, 1, 1, 45, 
      AutoLayout      =   txtHighCycles, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   txtHighCycles, 3, StepperHigh, 3, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "4"
      Left            =   88
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "0"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   103
      Visible         =   True
      Width           =   45.0
   End
   Begin Extensions.UIStepper StepperHigh
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   StepperHigh, 1, <Parent>, 1, False, +1.00, 1, 1, 141, 
      AutoLayout      =   StepperHigh, 7, , 0, False, +1.00, 1, 1, 84, 
      AutoLayout      =   StepperHigh, 3, Label2, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   StepperHigh, 8, , 0, False, +1.00, 1, 1, 29, 
      autorepeat      =   False
      continuous      =   False
      Height          =   29.0
      Left            =   141
      LockedInPosition=   False
      maximumValue    =   100.0
      minimumValue    =   0.0
      Scope           =   1
      stepValue       =   1.0
      Top             =   103
      value           =   0.0
      Visible         =   True
      Width           =   84.0
      wraps           =   False
   End
   Begin iOSLabel Label3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label3, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Label3, 3, StepperHigh, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label3, 7, , 0, False, +1.00, 1, 1, 95, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Effectiveness:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   132
      Visible         =   True
      Width           =   95.0
   End
   Begin iOSSegmentedControl segHighGoal
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   segHighGoal, 8, , 0, True, +1.00, 1, 1, 29, 
      AutoLayout      =   segHighGoal, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   segHighGoal, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   segHighGoal, 3, Label3, 4, False, +1.00, 1, 1, 0, 
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      Segments        =   "\n\nTrue\rBad\n\nFalse\rOkay\n\nFalse\rGood\n\nFalse"
      Top             =   162
      Value           =   0
      Visible         =   True
      Width           =   300.0
   End
   Begin iOSLabel Label4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label4, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label4, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Label4, 3, segHighGoal, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label4, 7, , 0, False, +1.00, 1, 1, 95, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Percentage:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   191
      Visible         =   True
      Width           =   95.0
   End
   Begin iOSSlider sldHigh
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   sldHigh, 8, , 0, True, +1.00, 1, 1, 23, 
      AutoLayout      =   sldHigh, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   sldHigh, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   sldHigh, 3, Label4, 4, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   23.0
      Left            =   20
      LockedInPosition=   False
      MaxValue        =   100.0
      MinValue        =   0.0
      Scope           =   2
      Top             =   221
      Value           =   0.0
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel Label5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label5, 1, lblHighGoal, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label5, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   Label5, 3, <Parent>, 3, False, +1.00, 1, 1, 270, 
      AutoLayout      =   Label5, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   0
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Low Goal:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      Top             =   270
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSLabel Label6
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label6, 1, <Parent>, 1, False, +1.00, 1, 1, 25, 
      AutoLayout      =   Label6, 7, , 0, False, +1.00, 1, 1, 60, 
      AutoLayout      =   Label6, 3, Label5, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Label6, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   25
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Cycles:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   308
      Visible         =   True
      Width           =   60.0
   End
   Begin iOSTextField txtLowCycles
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   txtLowCycles, 1, <Parent>, 1, False, +1.00, 1, 1, 88, 
      AutoLayout      =   txtLowCycles, 7, , 0, False, +1.00, 1, 1, 45, 
      AutoLayout      =   txtLowCycles, 3, <Parent>, 3, False, +1.00, 1, 1, 307, 
      AutoLayout      =   txtLowCycles, 8, , 0, True, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "4"
      Left            =   88
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   2
      Text            =   "0"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   307
      Visible         =   True
      Width           =   45.0
   End
   Begin Extensions.UIStepper StepperLow
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   StepperLow, 1, txtLowCycles, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   StepperLow, 7, , 0, False, +1.00, 1, 1, 84, 
      AutoLayout      =   StepperLow, 8, , 0, False, +1.00, 1, 1, 29, 
      AutoLayout      =   StepperLow, 4, txtLowCycles, 4, False, +1.00, 1, 1, 0, 
      autorepeat      =   False
      continuous      =   False
      Height          =   29.0
      Left            =   141
      LockedInPosition=   False
      maximumValue    =   100.0
      minimumValue    =   0.0
      Scope           =   1
      stepValue       =   1.0
      Top             =   309
      value           =   0.0
      Visible         =   True
      Width           =   84.0
      wraps           =   False
   End
   Begin iOSLabel Label7
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label7, 1, Label6, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label7, 7, , 0, False, +1.00, 1, 1, 95, 
      AutoLayout      =   Label7, 3, <Parent>, 3, False, +1.00, 1, 1, 339, 
      AutoLayout      =   Label7, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   25
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Effectiveness:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   339
      Visible         =   True
      Width           =   95.0
   End
   Begin iOSSegmentedControl segLowGoal
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   segLowGoal, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   segLowGoal, 7, , 0, False, +1.00, 1, 1, 300, 
      AutoLayout      =   segLowGoal, 3, <Parent>, 3, False, +1.00, 1, 1, 369, 
      AutoLayout      =   segLowGoal, 8, , 0, True, +1.00, 1, 1, 29, 
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      Segments        =   "\n\nTrue\rBad\n\nFalse\rOkay\n\nFalse\rGood\n\nFalse"
      Top             =   369
      Value           =   0
      Visible         =   True
      Width           =   300.0
   End
   Begin iOSLabel Label8
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label8, 1, segLowGoal, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label8, 7, , 0, False, +1.00, 1, 1, 95, 
      AutoLayout      =   Label8, 3, segLowGoal, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Label8, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Percentage:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   406
      Visible         =   True
      Width           =   95.0
   End
   Begin iOSSlider sldLow
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   sldLow, 8, , 0, True, +1.00, 1, 1, 23, 
      AutoLayout      =   sldLow, 1, Label8, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   sldLow, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   sldLow, 3, <Parent>, 3, False, +1.00, 1, 1, 432, 
      Enabled         =   True
      Height          =   23.0
      Left            =   20
      LockedInPosition=   False
      MaxValue        =   100.0
      MinValue        =   0.0
      Scope           =   2
      Top             =   432
      Value           =   0.0
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel lblHighPercentage
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblHighPercentage, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   lblHighPercentage, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   lblHighPercentage, 3, Label4, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   lblHighPercentage, 7, , 0, False, +1.00, 1, 1, 31, 
      Enabled         =   True
      Height          =   30.0
      Left            =   269
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "0"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   191
      Visible         =   True
      Width           =   31.0
   End
   Begin iOSLabel lblLowPercentage
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblLowPercentage, 7, , 0, False, +1.00, 1, 1, 32, 
      AutoLayout      =   lblLowPercentage, 2, sldLow, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   lblLowPercentage, 3, <Parent>, 3, False, +1.00, 1, 1, 406, 
      AutoLayout      =   lblLowPercentage, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   268
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "0"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   406
      Visible         =   True
      Width           =   32.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Constructor(sMatchKey as text, sTeamNumber as text)
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  m_sMatchKey = sMatchKey
		  m_sTeamNumber = sTeamNumber
		  
		  oHighGoalCycles = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "HighGoalCycles")
		  oHighGoalPercentage = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "HighGoalPercentage")
		  oHighGoalEffectiveness = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "HighGoalEffectiveness")
		  
		  
		  oLowGoalCycles = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "LowGoalCycles")
		  oLowGoalPercentage = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "LowGoalPercentage")
		  oLowGoalEffectiveness = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "LowGoalEffectiveness")
		  
		  //High
		  StepperHigh.value = integer.Parse(oHighGoalCycles.sValue)
		  txtHighCycles.text = oHighGoalCycles.sValue
		  
		  sldHigh.value = integer.parse(oHighGoalPercentage.sValue)
		  lblHighPercentage.text = oHighGoalPercentage.sValue + "%"
		  
		  select case oHighGoalEffectiveness.svalue
		  case ""
		    segHighGoal.value = 0
		  case "Bad"
		    segHighGoal.value = 1
		  case "Okay"
		    segHighGoal.value = 2
		  case "Good"
		    segHighGoal.value = 3
		  end
		  
		  //Low
		  StepperLow.value = integer.Parse(oLowGoalCycles.sValue)
		  txtLowCycles.text = oLowGoalCycles.sValue
		  
		  sldLow.value = integer.parse(oLowGoalPercentage.sValue)
		  lblLowPercentage.text = oLowGoalPercentage.sValue + "%"
		  
		  select case oLowGoalEffectiveness.svalue
		  case ""
		    segLowGoal.value = 0
		  case "Bad"
		    segLowGoal.value = 1
		  case "Okay"
		    segLowGoal.value = 2
		  case "Good"
		    segLowGoal.value = 3
		  end
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		m_sMatchKey As text
	#tag EndProperty

	#tag Property, Flags = &h0
		m_sTeamNumber As text
	#tag EndProperty

	#tag Property, Flags = &h0
		oHighGoalCycles As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oHighGoalEffectiveness As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oHighGoalPercentage As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oLowGoalCycles As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oLowGoalEffectiveness As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oLowGoalPercentage As DataFile.T_Game
	#tag EndProperty


#tag EndWindowCode

#tag Events StepperHigh
	#tag Event
		Sub ValueChanged()
		  dim value as Integer = me.value
		  txtHighCycles.Text = value.ToText(Locale.Current, "###")
		  
		  oHighGoalCycles.sValue = txtHighCycles.Text
		  oHighGoalCycles.save
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events segHighGoal
	#tag Event
		Sub ValueChanged()
		  select case me.value
		  case 0
		    oHighGoalEffectiveness.sValue = ""
		  case 1
		    oHighGoalEffectiveness.sValue = "Bad"
		  case 2
		    oHighGoalEffectiveness.sValue = "Okay"
		  case 3
		    oHighGoalEffectiveness.sValue = "Good"
		  end
		  
		  oHighGoalEffectiveness.save
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events sldHigh
	#tag Event
		Sub ValueChanged()
		  oHighGoalPercentage.sValue = sldHigh.value.ToText(Locale.Current, "###")
		  lblHighPercentage.text = oHighGoalPercentage.sValue + "%"
		  
		  oHighGoalPercentage.save
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events StepperLow
	#tag Event
		Sub ValueChanged()
		  dim value as Integer = me.value
		  txtLowCycles.Text = value.ToText(Locale.Current, "###")
		  
		  oLowGoalCycles.sValue = txtLowCycles.Text
		  oLowGoalCycles.save
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events segLowGoal
	#tag Event
		Sub ValueChanged()
		  select case me.value
		  case 0
		    oLowGoalEffectiveness.sValue = ""
		  case 1
		    oLowGoalEffectiveness.sValue = "Bad"
		  case 2
		    oLowGoalEffectiveness.sValue = "Okay"
		  case 3
		    oLowGoalEffectiveness.sValue = "Good"
		  end
		  
		  oLowGoalEffectiveness.save
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events sldLow
	#tag Event
		Sub ValueChanged()
		  oLowGoalPercentage.sValue = sldHigh.value.ToText(Locale.Current, "###")
		  lblLowPercentage.text = oLowGoalPercentage.sValue + "%"
		  
		  oLowGoalPercentage.save
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
		Name="m_sMatchKey"
		Group="Behavior"
		Type="text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="m_sTeamNumber"
		Group="Behavior"
		Type="text"
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
		Name="oHighGoalCycles"
		Group="Behavior"
		Type="Integer"
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
