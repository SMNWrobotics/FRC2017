#tag Window
Begin ContainerControl ccRepeatingRows
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
   Begin ScrollBar vScroll
      AcceptFocus     =   True
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   300
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   285
      LineStep        =   1
      LiveScroll      =   True
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Maximum         =   100
      Minimum         =   0
      PageStep        =   20
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Value           =   0
      Visible         =   False
      Width           =   15
   End
   Begin ccList ccList1
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
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Transparent     =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   287
   End
   Begin Timer tmrRefresh
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Mode            =   0
      Period          =   100
      Scope           =   0
      TabPanelIndex   =   0
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  if ccList1.HandleMousedown(x, y) then
		    return true
		  end
		End Function
	#tag EndEvent

	#tag Event
		Function MouseWheel(X As Integer, Y As Integer, DeltaX as Integer, DeltaY as Integer) As Boolean
		  vScroll.value = vScroll.value + deltaY
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  vScroll.top = 0
		  vScroll.Height = self.Height
		  vScroll.left = self.width - vScroll.Width
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.ClearRect 0, 0, g.Width, g.Height
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  HandleResize
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  HandleResize
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Action(oRow as itrRowDesign)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRow(oRow as itrRowDesign)
		  ccList1.AddRow oRow
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteAllRows()
		  ccList1.DeleteAllRows
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetRow(index as Integer) As itrRowDesign
		  return ccList1.GetRow(index)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub HandleResize()
		  if ccList1.Height > self.Height then
		    vScroll.Visible = true
		    
		    vScroll.Maximum = ccList1.Height - self.Height
		    vScroll.PageStep = vScroll.Maximum/20
		  else
		    vScroll.Visible = false
		    ccList1.top = 0
		  end
		  
		  
		  if bScrollLastState <> vScroll.Visible then
		    bScrollLastState = vScroll.Visible
		    
		    ccList1.AdjustWidth bScrollLastState
		    
		  end
		  
		  RaiseEvent ListResize
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub HandleScroll()
		  ccList1.top = -vScroll.value
		  
		  self.Invalidate false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ListIndex() As Integer
		  return ccList1.ListIndex
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ListIndex(assigns Value as Integer)
		  ccList1.ListIndex = Value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowCount() As Integer
		  return ccList1.RowCount
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event AddRow() As itrRowDesign
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Change()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ListResize()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event RowCountChange()
	#tag EndHook


	#tag Property, Flags = &h21
		Private bScrollLastState As boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events vScroll
	#tag Event
		Sub ValueChanged()
		  HandleScroll
		  
		  ' if tmrRefresh.mode = timer.ModeOff then
		  ' tmrRefresh.mode = timer.ModeSingle
		  ' else
		  ' tmrRefresh.Reset
		  ' end
		  
		  self.Invalidate false
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ccList1
	#tag Event
		Sub RowCountChange()
		  RaiseEvent RowCountChange
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  RaiseEvent Change
		End Sub
	#tag EndEvent
	#tag Event
		Sub ListResize()
		  HandleResize
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tmrRefresh
	#tag Event
		Sub Action()
		  me.mode = timer.ModeOff
		  
		  
		  self.Refresh false
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
