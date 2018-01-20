#tag Window
Begin ContainerControl ccList
   AcceptFocus     =   False
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   Compatibility   =   ""
   Enabled         =   True
   EraseBackground =   True
   HasBackColor    =   False
   Height          =   166
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
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  AdjustWidth false
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddRow(oRow as itrRowDesign)
		  if oRow = nil then return
		  
		  //Add to our Array
		  aroRows.Append oRow
		  
		  //Embed it into the container
		  dim cc as ContainerControl = ContainerControl(oRow)
		  
		  cc.EmbedWithin self, 0, 0, self.Width, cc.Height
		  
		  
		  
		  //Lock the control so it will resize with the parent.
		  cc.LockLeft = true
		  cc.LockRight = true
		  
		  'if oRow isa ccTimerRow then
		  'ccTimerRow(oRow).Setup
		  'dim oTimerRow as ccTimerRow = ccTimerRow(oRow)
		  'AddHandler oTimerRow.Remove, AddressOf RemoveRow
		  'end
		  
		  //Call the update method so it can put them in the proper location
		  //and resize this container appropriately.
		  Update
		  
		  RaiseEvent RowCountChange
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AdjustWidth(bScrollbarsVisible as boolean)
		  dim iWidth as integer
		  
		  if bScrollbarsVisible then
		    iWidth = self.parent.width - 15
		  else
		    iWidth = self.parent.width// - 2
		  end
		  
		  me.width = iWidth
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteAllRows()
		  for i as integer = aroRows.Ubound downto 0
		    ContainerControl(aroRows(i)).close
		    aroRows.Remove i
		  next
		  
		  Update
		  
		  ListIndex = -1
		  
		  RaiseEvent RowCountChange
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetRow(index as Integer) As itrRowDesign
		  if index < 0 or index > aroRows.Ubound then
		    return nil
		  end
		  
		  return aroRows(index)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HandleMouseDown(x as integer, y as Integer) As boolean
		  for i as integer = 0 to aroRows.Ubound
		    dim cc as ContainerControl = ContainerControl(aroRows(i))
		    dim iTop as integer = cc.top
		    dim iBottom as integer = cc.top + cc.Height
		    
		    if y >= itop and y < iBottom then
		      Selected aroRows(i)
		      return false
		    end
		  next
		  
		  '//If we get to here, nothing is selected
		  'for i as integer = 0 to aroRows.Ubound
		  '
		  'aroRows(i).Selected = false
		  '
		  'next
		  
		  me.ListIndex = -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveRow(Instance as itrRowDesign)
		  for i as integer = 0 to aroRows.Ubound
		    
		    if aroRows(i) is instance then
		      ContainerControl(aroRows(i)).visible = false
		      ContainerControl(aroRows(i)).close
		      aroRows.Remove i
		      exit
		    end
		    
		  next
		  
		  Update
		  
		  RaiseEvent RowCountChange
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowCount() As Integer
		  return aroRows.Ubound + 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Selected(oRow as itrRowDesign)
		  'for i as integer = 0 to aroRows.Ubound
		  '
		  'if aroRows(i) is oRow then
		  'ListIndex = i
		  'aroRows(i).Selected = true
		  'else
		  'aroRows(i).Selected = false
		  'end
		  '
		  'next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update()
		  dim iY as integer = 1
		  
		  for i as integer = 0 to aroRows.Ubound
		    ContainerControl(aroRows(i)).top = iY
		    
		    'aroRows(i).OddRow = i mod 2 = 0
		    
		    iY = iY + ContainerControl(aroRows(i)).Height
		  next
		  
		  self.Height = iY
		  
		  RaiseEvent ListResize
		End Sub
	#tag EndMethod


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
		Private aroRows() As itrRowDesign
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mListIndex
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if mListIndex = value then
			    return
			  end
			  
			  
			  mListIndex = value
			  
			  
			  'for i as integer = 0 to aroRows.Ubound
			  'aroRows(i).Selected = (i = mListIndex)
			  'next
			  
			  RaiseEvent Change
			End Set
		#tag EndSetter
		ListIndex As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mListIndex As Integer = -1
	#tag EndProperty


#tag EndWindowCode

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
		Name="ListIndex"
		Group="Behavior"
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
