#tag Window
Begin ContainerControl ccRepeatingList
   AcceptFocus     =   False
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   Compatibility   =   ""
   Enabled         =   True
   EraseBackground =   True
   HasBackColor    =   False
   Height          =   300
   HelpTag         =   ""
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   False
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Top             =   0
   Transparent     =   False
   UseFocusRing    =   False
   Visible         =   True
   Width           =   300
   Begin ccRepeatingRows ccRepeatingRows1
      AcceptFocus     =   False
      AcceptTabs      =   True
      AutoDeactivate  =   True
      BackColor       =   &cFFFF00FF
      Backdrop        =   0
      Enabled         =   True
      EraseBackground =   True
      HasBackColor    =   False
      Height          =   300
      HelpTag         =   ""
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Transparent     =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   300
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  ccRepeatingRows1.top = 1
		  ccRepeatingRows1.left = 1
		  
		  ccRepeatingRows1.width = self.width - 2
		  ccRepeatingRows1.height = self.Height - 2
		  
		  Me.DeleteAllRows
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  'g.ForeColor = &cFFFFFF
		  'g.FillRect 0, 0, g.Width, g.Height
		  g.ClearRect 0, 0, g.Width, g.Height
		  
		  'g.ForeColor = &c000000
		  'g.PenWidth = 1
		  'g.PenHeight = 1
		  'g.DrawRect 0, 0, g.Width, g.Height
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  self.Refresh true
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  self.Refresh false
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddNewRow()
		  ' ccList1.AddRow oRow
		  
		  //Raise the AddRow Event
		  
		  dim oRow as itrRowDesign = AddRow
		  
		  bks_debug.Assert oRow <> nil, "Could not create list row."
		  
		  ccRepeatingRows1.AddRow oRow
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteAllRows()
		  ccRepeatingRows1.DeleteAllRows
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetListHeight() As integer
		  return ccRepeatingRows1.GetListHeight
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetRow(index as Integer) As itrRowDesign
		  return ccRepeatingRows1.GetRow(index)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ListIndex() As Integer
		  return ccRepeatingRows1.ListIndex
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ListIndex(assigns Value as Integer)
		  ccRepeatingRows1.ListIndex = Value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowCount() As Integer
		  return ccRepeatingRows1.RowCount
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event AddRow() As itrRowDesign
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Change()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event RowCountChange()
	#tag EndHook


#tag EndWindowCode

#tag Events ccRepeatingRows1
	#tag Event
		Function AddRow() As itrRowDesign
		  dim oRow as itrRowDesign = AddRow
		  
		  ccRepeatingRows1.AddRow oRow
		End Function
	#tag EndEvent
	#tag Event
		Sub Change()
		  RaiseEvent Change
		End Sub
	#tag EndEvent
	#tag Event
		Sub RowCountChange()
		  Self.refresh false
		  
		  RaiseEvent RowCountChange
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="AcceptFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AcceptTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Appearance"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="EraseBackground"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HelpTag"
		Visible=true
		Group="Appearance"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Group="Position"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabPanelIndex"
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabStop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="UseFocusRing"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
