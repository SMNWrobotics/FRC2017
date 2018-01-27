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
      AutoLayout      =   lblTitle, 1, , 0, False, +1.00, 1, 1, 20, 
      AutoLayout      =   lblTitle, 7, , 0, False, +1.00, 1, 1, 1.48e+2, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Climbing"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   18
      Top             =   0
      Visible         =   True
      Width           =   148.0
   End
   Begin iOSSwitch chkAttemped
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   chkAttemped, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   chkAttemped, 1, Label1, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   chkAttemped, 3, <Parent>, 3, False, +1.00, 1, 1, 45, 
      AutoLayout      =   chkAttemped, 7, , 0, True, +1.00, 1, 1, 51, 
      Enabled         =   True
      Height          =   31.0
      Left            =   110
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
		  chkAttemped.value = cBool(m_oClimbingAttempted.sValue)
		  chkMade.value = cBool(m_oClimbingMade.sValue)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  m_oClimbingAttempted.sValue = chkAttemped.value.BoolToText
		  m_oClimbingAttempted.save
		  
		  m_oClimbingMade.sValue = chkMade.value.BoolToText
		  m_oClimbingMade.save
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetGame(oClimbingAttempted as DataFile.T_Game, oClimbingMade as DataFile.T_Game)
		  m_oClimbingAttempted = oClimbingAttempted
		  m_oClimbingMade = oClimbingMade
		  
		  Load
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		m_oClimbingAttempted As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		m_oClimbingMade As DataFile.T_Game
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
