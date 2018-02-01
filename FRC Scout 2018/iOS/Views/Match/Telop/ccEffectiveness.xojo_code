#tag IOSContainerControl
Begin iOSCustomTableCell ccEffectiveness
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Height          =   66.0
   Left            =   0.0
   Top             =   0.0
   Visible         =   True
   Width           =   321.0
   Begin iOSSegmentedControl SegmentedControl1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SegmentedControl1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   SegmentedControl1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   SegmentedControl1, 8, , 0, True, +1.00, 1, 1, 29, , True
      AutoLayout      =   SegmentedControl1, 4, <Parent>, 4, False, +1.00, 1, 1, -10, , True
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Segments        =   "Bad\n\nFalse\rOkay\n\nFalse\rGood\n\nFalse"
      Top             =   35
      Value           =   -1
      Visible         =   True
      Width           =   281.0
   End
   Begin iOSLabel lblTitle
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblTitle, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   lblTitle, 7, , 0, False, +1.00, 1, 1, 281, , True
      AutoLayout      =   lblTitle, 8, , 0, False, +1.00, 1, 1, 30, , True
      AutoLayout      =   lblTitle, 4, <Parent>, 4, False, +1.00, 1, 1, -39, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Title"
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
		  Select Case m_oGame.sValue
		  Case "Bad", ""
		    SegmentedControl1.item(0).Selected = true
		  Case "Okay"
		    SegmentedControl1.item(1).Selected = true
		  Case "Good"
		    SegmentedControl1.item(2).Selected = true
		  case else
		    break
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  Select Case SegmentedControl1.value
		  case 0
		    m_oGame.sValue = "Bad"
		  Case 1
		    m_oGame.sValue = "Okay"
		  Case 2
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
