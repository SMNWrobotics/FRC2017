#tag IOSView
Begin iosView vwPopup
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "Popup Selection"
   Top             =   0
   Begin iOSLabel lblVariableName
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblVariableName, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   lblVariableName, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   lblVariableName, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   lblVariableName, 8, , 0, False, +1.00, 1, 1, 30, 
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
   Begin Extensions.PickerView oPicker
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   oPicker, 1, lblVariableName, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   oPicker, 2, lblVariableName, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   oPicker, 3, lblVariableName, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   oPicker, 8, , 0, False, +1.00, 1, 1, 96, 
      Height          =   96.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   1
      Top             =   111
      Visible         =   True
      Width           =   280.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Activate()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor(oDesign as DataFile.T_Design, oVariable as DataFile.T_DesignVariables)
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  m_oVariable = oVariable
		  m_oDesign = oDesign
		  
		  lblVariableName.text = m_oDesign.sVariable
		  
		  if m_oVariable.sList <> "" then
		    LoadFromLIst
		  end
		  
		  if m_oVariable.sForeignTable <> "" then
		    LoadFromQuery
		  end
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadFromLIst()
		  dim ars() as Text = m_oVariable.sList.split(";")
		  oPicker.AddColumn ars
		  
		  dim iIndex as integer = ars.IndexOf(m_oDesign.sValue)
		  oPicker.SelectedRow(0) = iIndex
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadFromQuery()
		  dim ars() as Text 
		  
		  dim sql as text = "Select * from " + m_oVariable.sForeignTable
		  
		  dim rs as iOSSQLiteRecordSet = DataFile.gDB.SQLSelect(sql)
		  
		  while rs.eof = false
		    ars.Append rs.Field(m_oVariable.sForeignField).TextValue
		    
		    rs.MoveNext
		  wend
		  
		  oPicker.AddColumn ars
		  
		  dim iIndex as integer = ars.IndexOf(m_oDesign.sValue)
		  oPicker.SelectedRow(0) = iIndex
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		m_oDesign As DataFile.T_Design
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected m_oVariable As DataFile.T_DesignVariables
	#tag EndProperty


#tag EndWindowCode

#tag Events oPicker
	#tag Event
		Sub SelectionChanged(row as integer, column as integer)
		  m_oDesign.sValue = me.text(row, column)
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
