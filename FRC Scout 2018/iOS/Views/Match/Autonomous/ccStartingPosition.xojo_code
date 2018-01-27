#tag IOSContainerControl
Begin iOSCustomTableCell ccStartingPosition
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Height          =   84.0
   Left            =   0.0
   Top             =   0.0
   Visible         =   True
   Width           =   320.0
   Begin iOSSegmentedControl SegmentedControl1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SegmentedControl1, 4, <Parent>, 4, False, +1.00, 1, 1, -12, , True
      AutoLayout      =   SegmentedControl1, 8, , 0, True, +1.00, 1, 1, 29, , True
      AutoLayout      =   SegmentedControl1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   SegmentedControl1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, , True
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Segments        =   "Left\n\nFalse\rCenter\n\nFalse\rRight\n\nFalse"
      Top             =   43
      Value           =   -1
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel lblTitle
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblTitle, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   lblTitle, 7, , 0, False, +1.00, 1, 1, 281, , True
      AutoLayout      =   lblTitle, 8, , 0, False, +1.00, 1, 1, 30, , True
      AutoLayout      =   lblTitle, 4, SegmentedControl1, 3, False, +1.00, 1, 1, -*kStdControlGapV, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Gear"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   5
      Visible         =   True
      Width           =   281.0
   End
End
#tag EndIOSContainerControl

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Load()
		  select case m_oGame.sValue
		  case "A", ""
		    SegmentedControl1.item(0).Selected = true
		  case "B"
		    SegmentedControl1.item(1).Selected = true
		  case "C"
		    SegmentedControl1.item(2).Selected = true
		  case else
		    break
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  select case SegmentedControl1.value
		  case 0
		    m_oGame.sValue = "A"
		  case 1
		    m_oGame.sValue = "B"
		  case 2
		    m_oGame.sValue = "C"
		  case else
		    break
		  end
		  m_oGame.save
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetGame(oGame as DataFile.T_Game)
		  m_oGame = oGame
		  
		  lblTitle.text = m_oGame.sVariable
		  
		  Load
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		m_oGame As DataFile.T_Game
	#tag EndProperty


#tag EndWindowCode

#tag Events SegmentedControl1
	#tag Event
		Sub ValueChanged()
		  Save
		End Sub
	#tag EndEvent
#tag EndEvents
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
