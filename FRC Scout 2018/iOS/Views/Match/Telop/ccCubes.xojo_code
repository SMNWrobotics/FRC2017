#tag IOSContainerControl
Begin iOSContainerControl ccCubes
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Height          =   480.0
   Left            =   0.0
   Top             =   0.0
   Visible         =   True
   Width           =   320.0
   Begin iOSTable tbl
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   tbl, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   tbl, 7, , 0, False, +1.00, 4, 1, 320, , True
      AutoLayout      =   tbl, 3, <Parent>, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   tbl, 8, , 0, False, +1.00, 4, 1, 400, , True
      EditingEnabled  =   False
      EstimatedRowHeight=   -1
      Format          =   "0"
      Height          =   400.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      Top             =   0
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSContainerControl

#tag WindowCode
	#tag Event
		Sub Open()
		  LoadList
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub LoadList()
		  Dim cell As iOSTableCellData
		  
		  If bDestination = False Then
		    //Source
		    tbl.RemoveAll
		    
		    tbl.AddSection "Cube Source"
		    
		    cell = tbl.CreateCell("Floor")
		    cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		    tbl.addRow 0, cell
		    
		    cell = tbl.CreateCell("Portal Cubes")
		    cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		    tbl.addRow 0, cell
		    
		    cell = tbl.CreateCell("Portal Transfer")
		    cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		    tbl.addRow 0, cell
		    
		    cell = tbl.CreateCell("Pyramid")
		    cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		    tbl.addRow 0, cell
		    
		    cell = tbl.CreateCell("Robot")
		    cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		    tbl.addRow 0, cell
		    
		    cell = tbl.CreateCell("Switch Opponent")
		    cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		    tbl.addRow 0, cell
		    
		    cell = tbl.CreateCell("Switch Ours")
		    cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		    tbl.addRow 0, cell
		    
		  Else
		    
		    tbl.RemoveAll
		    
		    tbl.AddSection "Cube Destination"
		    
		    cell = tbl.CreateCell("Lost")
		    tbl.addRow 0, cell
		    
		    cell = tbl.CreateCell("Portal Intake")
		    tbl.addRow 0, cell
		    
		    cell = tbl.CreateCell("Scale")
		    tbl.addRow 0, cell
		    
		    cell = tbl.CreateCell("Switch Opponent")
		    tbl.addRow 0, cell
		    
		    cell = tbl.CreateCell("Switch Ours")
		    tbl.addRow 0, cell
		    
		    
		  end
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		bDestination As boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events tbl
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  Dim s As Text = Me.SectionTitle(section)
		  
		  If s = "Cube Source" Then
		    bDestination = True
		    loadList
		  Else
		    bDestination = False
		    LoadList
		  End
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
		Name="bDestination"
		Group="Behavior"
		Type="boolean"
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
