#tag IOSContainerControl
Begin iOSCustomTableCell ccBoolean
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Height          =   46.0
   Left            =   0.0
   Top             =   0.0
   Visible         =   True
   Width           =   324.0
   Begin iOSLabel lblTitle
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblTitle, 1, <Parent>, 1, False, +1.00, 4, 1, 11, , True
      AutoLayout      =   lblTitle, 7, , 0, False, +1.00, 4, 1, 239, , True
      AutoLayout      =   lblTitle, 3, <Parent>, 3, False, +1.00, 4, 1, 7, , True
      AutoLayout      =   lblTitle, 8, , 0, False, +1.00, 4, 1, 3.0e+1, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   11
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Gear"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   7
      Visible         =   True
      Width           =   239.0
   End
   Begin iOSSwitch Switch1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Switch1, 1, <Parent>, 1, False, +1.00, 4, 1, 253, , True
      AutoLayout      =   Switch1, 7, , 0, True, +1.00, 4, 1, 51, , True
      AutoLayout      =   Switch1, 8, , 0, True, +1.00, 4, 1, 31, , True
      AutoLayout      =   Switch1, 4, lblTitle, 4, False, +1.00, 4, 1, 0, , True
      Enabled         =   True
      Height          =   31.0
      Left            =   253
      LockedInPosition=   False
      Scope           =   0
      Top             =   6
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
End
#tag EndIOSContainerControl

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Load()
		  select case m_oGame.sValue
		  case "False", "0", ""
		    switch1.value = false
		  case else
		    switch1.value = true
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  if Switch1.value then
		    m_oGame.sValue = "True"
		  else
		    m_oGame.sValue = "False"
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
