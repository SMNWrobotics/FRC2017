#tag IOSView
Begin iosView vwGameScouting
   BackButtonTitle =   "Match"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSSegmentedControl seg
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   seg, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   seg, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   seg, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   seg, 8, , 0, True, +1.00, 1, 1, 29, 
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Segments        =   "Autonomous\n\nTrue\rTeleop\n\nFalse"
      Top             =   73
      Value           =   0
      Visible         =   True
      Width           =   280.0
   End
   Begin ccAutonomous ccAutonomous1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ccAutonomous1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ccAutonomous1, 2, <Parent>, 2, False, +1.00, 1, 1, -0, 
      AutoLayout      =   ccAutonomous1, 3, seg, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   ccAutonomous1, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      Height          =   370.0
      Left            =   0
      LockedInPosition=   False
      m_sMatchKey     =   ""
      m_sTeamNumber   =   ""
      Scope           =   0
      Top             =   110
      Visible         =   True
      Width           =   320.0
   End
   Begin ccTeleop ccTeleop1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ccTeleop1, 4, BottomLayoutGuide, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ccTeleop1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ccTeleop1, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ccTeleop1, 3, seg, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      Height          =   -1110.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      Top             =   110
      Visible         =   True
      Width           =   320.0
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
		  
		  seg.value = 0
		  
		  ccAutonomous1.Visible = true
		  ccAutonomous1.SetGame(m_sMatchKey, m_sTeamNumber)
		  ccTeleop1.visible = false
		  ccTeleop1.setGame(m_sMatchKey, m_sTeamNumber)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		m_sMatchKey As text
	#tag EndProperty

	#tag Property, Flags = &h0
		m_sTeamNumber As text
	#tag EndProperty


#tag EndWindowCode

#tag Events seg
	#tag Event
		Sub ValueChanged()
		  if me.value = 0 then
		    ccAutonomous1.Visible = true
		    ccTeleop1.visible = false
		  else
		    ccAutonomous1.Visible = false
		    ccTeleop1.visible = true
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ccAutonomous1
	#tag Event
		Function GetView() As iOSView
		  return self
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events ccTeleop1
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
