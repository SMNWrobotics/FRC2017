#tag IOSView
Begin iosView vwTeleopGears
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "Teleop Gears"
   Top             =   0
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 1, 1, 76, , True
      AutoLayout      =   Label1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, , True
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Acquired"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   73
      Visible         =   True
      Width           =   76.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 1, Label1, 1, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 1, 1, 76, , True
      AutoLayout      =   Label2, 3, Label1, 4, False, +1.00, 1, 1, *kStdControlGapV, , True
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Made"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   111
      Visible         =   True
      Width           =   76.0
   End
   Begin iOSLabel Label3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label3, 1, Label2, 1, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   Label3, 7, , 0, False, +1.00, 1, 1, 111, , True
      AutoLayout      =   Label3, 3, <Parent>, 3, False, +1.00, 1, 1, 173, , True
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 1, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Cycle Times:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   173
      Visible         =   True
      Width           =   111.0
   End
   Begin iOSTextField txtAcquired
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   txtAcquired, 1, Label2, 2, False, +1.00, 1, 1, *kStdControlGapH, , True
      AutoLayout      =   txtAcquired, 7, , 0, False, +1.00, 1, 1, 52, , True
      AutoLayout      =   txtAcquired, 8, , 0, True, +1.00, 1, 1, 31, , True
      AutoLayout      =   txtAcquired, 11, Label1, 11, False, +1.00, 1, 1, 0, , True
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "4"
      Left            =   104
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "0"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   72
      Visible         =   True
      Width           =   52.0
   End
   Begin iOSTextField txtMade
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   txtMade, 1, txtAcquired, 1, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   txtMade, 7, , 0, False, +1.00, 1, 1, 52, , True
      AutoLayout      =   txtMade, 11, Label2, 11, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   txtMade, 8, , 0, True, +1.00, 1, 1, 31, , True
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "4"
      Left            =   104
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "0"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   110
      Visible         =   True
      Width           =   52.0
   End
   Begin Extensions.UIStepper StepperAcquired
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   StepperAcquired, 4, txtMade, 3, False, +1.00, 1, 1, -*kStdControlGapV, , True
      AutoLayout      =   StepperAcquired, 1, txtAcquired, 2, False, +1.00, 1, 1, *kStdControlGapH, , True
      AutoLayout      =   StepperAcquired, 2, txtMade, 1, False, +1.00, 1, 1, 144, , True
      AutoLayout      =   StepperAcquired, 3, Label1, 3, False, +1.00, 1, 1, 0, , True
      autorepeat      =   False
      continuous      =   False
      Height          =   29.5
      Left            =   164
      LockedInPosition=   False
      maximumValue    =   100.0
      minimumValue    =   0.0
      Scope           =   1
      stepValue       =   1.0
      Top             =   73
      value           =   0.0
      Visible         =   True
      Width           =   84.0
      wraps           =   False
   End
   Begin Extensions.UIStepper StepperMade
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   StepperMade, 1, StepperAcquired, 1, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   StepperMade, 7, , 0, False, +1.00, 1, 1, 84, , True
      AutoLayout      =   StepperMade, 3, txtAcquired, 4, False, +1.00, 1, 1, *kStdControlGapV, , True
      AutoLayout      =   StepperMade, 8, , 0, False, +1.00, 1, 1, 29, , True
      autorepeat      =   False
      continuous      =   False
      Height          =   29.0
      Left            =   164
      LockedInPosition=   False
      maximumValue    =   100.0
      minimumValue    =   0.0
      Scope           =   1
      stepValue       =   1.0
      Top             =   111
      value           =   0.0
      Visible         =   True
      Width           =   84.0
      wraps           =   False
   End
   Begin iOSLabel Label4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label4, 9, <Parent>, 9, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   Label4, 7, , 0, False, +1.00, 1, 1, 76, , True
      AutoLayout      =   Label4, 3, Label3, 4, False, +1.00, 1, 1, *kStdControlGapV, , True
      AutoLayout      =   Label4, 8, , 0, False, +1.00, 1, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   122
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Attempts:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   211
      Visible         =   True
      Width           =   76.0
   End
   Begin iOSLabel Label5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label5, 1, Label4, 1, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   Label5, 7, , 0, False, +1.00, 1, 1, 76, , True
      AutoLayout      =   Label5, 3, <Parent>, 3, False, +1.00, 1, 1, 240, , True
      AutoLayout      =   Label5, 8, , 0, False, +1.00, 1, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   122
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Total Time:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   240
      Visible         =   True
      Width           =   76.0
   End
   Begin iOSLabel Label6
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label6, 1, Label5, 1, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   Label6, 7, , 0, False, +1.00, 1, 1, 76, , True
      AutoLayout      =   Label6, 3, <Parent>, 3, False, +1.00, 1, 1, 269, , True
      AutoLayout      =   Label6, 8, , 0, False, +1.00, 1, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   122
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Avg Time:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   269
      Visible         =   True
      Width           =   76.0
   End
   Begin iOSLabel Label7
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label7, 1, Label6, 1, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   Label7, 7, , 0, False, +1.00, 1, 1, 76, , True
      AutoLayout      =   Label7, 3, <Parent>, 3, False, +1.00, 1, 1, 297, , True
      AutoLayout      =   Label7, 8, , 0, False, +1.00, 1, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   122
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Current:"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   297
      Visible         =   True
      Width           =   76.0
   End
   Begin iOSLabel lblCurrentTime
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblCurrentTime, 1, lblTotalTime, 1, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   lblCurrentTime, 7, , 0, False, +1.00, 1, 1, 32, , True
      AutoLayout      =   lblCurrentTime, 11, Label7, 11, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   lblCurrentTime, 8, , 0, False, +1.00, 1, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   218
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "0"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   297
      Visible         =   True
      Width           =   32.0
   End
   Begin iOSLabel lblAvgTime
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblAvgTime, 1, lblTotalTime, 1, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   lblAvgTime, 7, , 0, False, +1.00, 1, 1, 32, , True
      AutoLayout      =   lblAvgTime, 11, Label6, 11, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   lblAvgTime, 8, , 0, False, +1.00, 1, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   218
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "0"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   269
      Visible         =   True
      Width           =   32.0
   End
   Begin iOSLabel lblAttempts
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblAttempts, 11, Label4, 11, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   lblAttempts, 8, , 0, False, +1.00, 1, 1, 30, , True
      AutoLayout      =   lblAttempts, 1, Label4, 2, False, +1.00, 1, 1, 20, , True
      AutoLayout      =   lblAttempts, 7, , 0, False, +1.00, 1, 1, 32, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   218
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "0"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   211
      Visible         =   True
      Width           =   32.0
   End
   Begin iOSLabel lblTotalTime
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblTotalTime, 11, Label5, 11, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   lblTotalTime, 8, , 0, False, +1.00, 1, 1, 30, , True
      AutoLayout      =   lblTotalTime, 1, lblAttempts, 1, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   lblTotalTime, 7, , 0, False, +1.00, 1, 1, 32, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   218
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "0"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   240
      Visible         =   True
      Width           =   32.0
   End
   Begin iOSButton btnStartStop
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnStartStop, 1, Label3, 1, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   btnStartStop, 7, , 0, False, +1.00, 1, 1, 100, , True
      AutoLayout      =   btnStartStop, 11, Label5, 11, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   btnStartStop, 8, , 0, False, +1.00, 1, 1, 30, , True
      Caption         =   "Start"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   240
      Visible         =   True
      Width           =   100.0
   End
   Begin xojo.Core.Timer Timer1
      Left            =   0
      LockedInPosition=   False
      Mode            =   "2"
      PanelIndex      =   -1
      Parent          =   ""
      Period          =   1000
      Scope           =   0
      Tolerance       =   0
      Top             =   0
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
		  
		  oGearCycleAverage = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "GearCycleAverage")
		  oGearCycleCount = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "GearCycleCount")
		  oGearCycleTotalTime = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "GearCycleTotalTime")
		  oGearsAcquired = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "GearsAcquired")
		  oGearsMade = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "GearsMade")
		  
		  StepperAcquired.value = integer.Parse(oGearsAcquired.sValue)
		  txtAcquired.text = oGearsAcquired.sValue
		  StepperMade.value = integer.parse(oGearsMade.sValue)
		  txtMade.text = oGearsMade.sValue
		  
		  lblAvgTime.text = oGearCycleAverage.sValue
		  lblAttempts.text = oGearCycleCount.sValue
		  lblTotalTime.text = oGearCycleTotalTime.sValue
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		bTiming As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		dtmStart As xojo.Core.Date
	#tag EndProperty

	#tag Property, Flags = &h0
		iAttempts As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iAverage As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iTotalTime As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		m_sMatchKey As text
	#tag EndProperty

	#tag Property, Flags = &h0
		m_sTeamNumber As text
	#tag EndProperty

	#tag Property, Flags = &h0
		oGearCycleAverage As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oGearCycleCount As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oGearCycleTotalTime As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oGearsAcquired As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oGearsMade As DataFile.T_Game
	#tag EndProperty


#tag EndWindowCode

#tag Events StepperAcquired
	#tag Event
		Sub ValueChanged()
		  dim value as Integer = me.value
		  txtAcquired.Text = value.ToText
		  
		  oGearsAcquired.sValue = txtAcquired.Text
		  oGearsAcquired.save
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events StepperMade
	#tag Event
		Sub ValueChanged()
		  dim value as Integer = me.value
		  txtMade.Text = value.ToText
		  
		  oGearsMade.sValue = txtAcquired.Text
		  oGearsMade.save
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnStartStop
	#tag Event
		Sub Action()
		  if bTiming then
		    //We are stopping
		    bTiming = false
		    dim d as Xojo.core.date = Xojo.core.date.now
		    
		    dim diff as xojo.Core.DateInterval = d - dtmStart
		    
		    dim iDiff as integer = diff.Seconds
		    self.iTotalTime = self.iTotalTime + iDiff
		    self.iAverage = self.iTotalTime/self.iAttempts
		    me.caption = "Start"
		    
		    lblTotalTime.text = iTotalTime.ToText + " s"
		    lblAttempts.text = iAttempts.ToText
		    lblAvgTime.text = iAverage.ToText + " s"
		    
		    oGearCycleCount.sValue =  iAttempts.ToText
		    oGearCycleCount.save
		    oGearCycleAverage.sValue = iAverage.ToText
		    oGearCycleAverage.save
		    oGearCycleTotalTime.sValue = iTotalTime.ToText
		    oGearCycleTotalTime.save
		    
		  else
		    //We are starting the timer
		    self.iAttempts = self.iAttempts + 1
		    dtmStart = Xojo.core.date.now
		    bTiming = true
		    me.Caption = "Stop"
		    lblAttempts.text = iAttempts.ToText
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Timer1
	#tag Event
		Sub Action()
		  if bTiming = false then 
		    lblCurrentTime.text = ""
		    return
		  end
		  
		  dim d as xojo.core.date = xojo.core.date.now
		  dim diff as xojo.Core.DateInterval = d - dtmStart
		  
		  dim iDiff as integer = diff.Seconds
		  
		  lblCurrentTime.text = iDiff.ToText + " s"
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
		Name="bTiming"
		Group="Behavior"
		Type="boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="iAttempts"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="iAverage"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="iTotalTime"
		Group="Behavior"
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
