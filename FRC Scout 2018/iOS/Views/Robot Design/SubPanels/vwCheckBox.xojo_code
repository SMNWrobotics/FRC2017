#tag IOSView
Begin iosView vwCheckBox
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "Boolean Value"
   Top             =   0
   Begin iOSLabel lblVariableName
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblVariableName, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   lblVariableName, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   lblVariableName, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, , True
      AutoLayout      =   lblVariableName, 8, , 0, False, +1.00, 1, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   73
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSSwitch chkValue
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   chkValue, 2, lblVariableName, 2, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   chkValue, 7, , 0, True, +1.00, 1, 1, 51, , True
      AutoLayout      =   chkValue, 3, lblVariableName, 4, False, +1.00, 1, 1, *kStdControlGapV, , True
      AutoLayout      =   chkValue, 8, , 0, True, +1.00, 1, 1, 31, , True
      Enabled         =   True
      Height          =   31.0
      Left            =   249
      LockedInPosition=   False
      Scope           =   0
      Top             =   111
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Constructor(oDesign as DataFile.T_Design)
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  m_oDesign = oDesign
		  lblVariableName.text = m_oDesign.sVariable
		  chkValue.value = cbool(m_oDesign.sValue)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		m_oDesign As DataFile.T_Design
	#tag EndProperty


#tag EndWindowCode

#tag Events chkValue
	#tag Event
		Sub ValueChanged()
		  m_oDesign.sValue = me.value.BoolToText
		  m_oDesign.save
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
