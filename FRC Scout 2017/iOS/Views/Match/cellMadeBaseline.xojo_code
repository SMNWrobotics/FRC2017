#tag IOSContainerControl
Begin iOSCustomTableCell cellMadeBaseline
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Height          =   48.0
   Left            =   0.0
   Top             =   0.0
   Visible         =   True
   Width           =   320.0
   Begin iOSLabel lblTitle
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblTitle, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   lblTitle, 7, , 0, False, +1.00, 1, 1, 221, 
      AutoLayout      =   lblTitle, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   lblTitle, 3, chkData, 3, False, +1.00, 1, 1, 0, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Made Baseline"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   10
      Visible         =   True
      Width           =   221.0
   End
   Begin iOSSwitch chkData
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   chkData, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   chkData, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   chkData, 3, <Parent>, 3, False, +1.00, 1, 1, 10, 
      AutoLayout      =   chkData, 7, , 0, True, +1.00, 1, 1, 51, 
      Enabled         =   True
      Height          =   31.0
      Left            =   249
      LockedInPosition=   False
      Scope           =   0
      Top             =   10
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
End
#tag EndIOSContainerControl

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Load()
		  chkData.value = cBool(m_oBaseline.svalue)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  m_oBaseline.svalue = chkData.value.BoolToText
		  
		  m_oBaseline.save
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetGame(oBaseLine as DataFile.T_Game)
		  m_oBaseline = oBaseLine
		  
		  Load
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		m_oBaseline As DataFile.T_Game
	#tag EndProperty


#tag EndWindowCode

#tag Events chkData
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
