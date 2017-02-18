#tag IOSView
Begin iosView vwRobot
   BackButtonTitle =   "Back"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   "Robot Design"
   Title           =   "Robot Design"
   Top             =   0
   Begin iOSTable tbl
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   tbl, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   tbl, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   tbl, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   tbl, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      EditingEnabled  =   False
      EditingEnabled  =   False
      EstimatedRowHeight=   -1
      Format          =   "0"
      Height          =   415.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      SectionCount    =   0
      Top             =   65
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Activate()
		  LoadList
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AskBoolean()
		  if oData = nil then return
		  
		  using UIKit
		  dim alert as UIAlertAction
		  
		  oAlertController = UIAlertController.AlertControllerWithTitleMessagePreferredStyle("Please select an option", oData.sVariable, _
		  UIAlertController.UIAlertControllerStyle.ActionSheet)
		  
		  
		  alert = UIAlertAction.ActionWithTitleStyleHandler("True", UIAlertAction.UIAlertActionStyle.Default, AddressOf CompHandler)
		  oAlertController.AddAction alert
		  
		  alert = UIAlertAction.ActionWithTitleStyleHandler("False", UIAlertAction.UIAlertActionStyle.Default, AddressOf CompHandler)
		  oAlertController.AddAction alert
		  
		  
		  oAlertController.PresentInView(self)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AskPopup()
		  if oData = nil then return
		  
		  using UIKit
		  dim alert as UIAlertAction
		  
		  oAlertController = UIAlertController.AlertControllerWithTitleMessagePreferredStyle("Please select an option", oData.sVariable, _
		  UIAlertController.UIAlertControllerStyle.ActionSheet)
		  
		  if oDesignVariables.sList <> "" then
		    dim ars() as Text = oDesignVariables.sList.split(";")
		    alert = UIAlertAction.ActionWithTitleStyleHandler("Cancel", UIAlertAction.UIAlertActionStyle.Cancel, AddressOf CompHandler)
		    oAlertController.AddAction alert
		    
		    for each s as text in ars
		      alert = UIAlertAction.ActionWithTitleStyleHandler(s, UIAlertAction.UIAlertActionStyle.Default, AddressOf CompHandler)
		      oAlertController.AddAction alert
		    next
		    
		  else
		    
		    'alert = UIAlertAction.ActionWithTitleStyleHandler("Cancel", UIAlertAction.UIAlertActionStyle.Cancel, AddressOf CompHandler)
		    'oAlertController.AddAction alert
		    '
		    'dim sql as text = "Select * from " + oDesignVariables.sForeignTable
		    '
		    'dim rs as iOSSQLiteRecordSet = DataFile.gDB.SQLSelect(sql)
		    '
		    'while rs.eof = false
		    'dim s as text = rs.Field(oDesignVariables.sForeignField).TextValue
		    'alert = UIAlertAction.ActionWithTitleStyleHandler(s, UIAlertAction.UIAlertActionStyle.Default, AddressOf CompHandler)
		    'oAlertController.AddAction alert
		    '
		    'rs.MoveNext
		    'wend
		    
		    
		  end
		  
		  
		  
		  
		  oAlertController.PresentInView(self)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CompHandler(sender as UIKit.UIAlertAction)
		  oData.sValue = Sender.title
		  oData.save
		  
		  
		  oAlertController.Dismiss
		  
		  LoadList
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(oTeam as DataFile.t_team)
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  m_oTeam = oTeam
		  
		  Self.Title = "Robot - Team: " + m_oTeam.sTeam_Number
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadList()
		  tbl.RemoveAll
		  
		  tbl.AddSection ""
		  
		  for each oDesignVariables as DataFile.T_DesignVariables in DataFile.T_DesignVariables.List
		    Dim cell As iOSTableCellData = tbl.CreateCell
		    cell.text = oDesignVariables.sVariableName
		    dim oData as DataFile.T_Design = oDesignVariables.GetValue(m_oTeam.sTeam_Number)
		    if oData.sValue = "" then
		      if oDesignVariables.sDataType = "CheckBox" then
		        cell.DetailText = "False"
		      else
		        cell.DetailText = "Not specified"
		      end
		    else
		      cell.DetailText = oData.sValue
		    end
		    
		    cell.Tag = oDesignVariables
		    
		    
		    
		    if oDesignVariables.sDataType = "Image" then
		      if oData.sValue.Length = 0 then
		        cell.DetailText = "No Picture"
		      else
		        cell.DetailText = "Image Available"
		      end
		    end
		    
		    select case oDesignVariables.sDataType
		    case "CheckBox"
		      cell.AccessoryType = iOSTableCellData.AccessoryTypes.none
		      
		    case "Popup"
		      if oDesignVariables.sList <> "" then
		        cell.AccessoryType = iOSTableCellData.AccessoryTypes.none
		      else
		        cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		      end
		    case else
		      cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		    end
		    
		    tbl.AddRow 0, cell
		    
		    
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		m_oTeam As DataFile.t_team
	#tag EndProperty

	#tag Property, Flags = &h21
		Private oAlertController As UIKit.UIAlertController
	#tag EndProperty

	#tag Property, Flags = &h0
		oData As DataFile.T_Design
	#tag EndProperty

	#tag Property, Flags = &h21
		Private oDesignVariables As DataFile.T_DesignVariables
	#tag EndProperty


#tag EndWindowCode

#tag Events tbl
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  dim oCell as iOSTableCellData = me.RowData(section, row)
		  
		  oDesignVariables = oCell.Tag
		  oData = oDesignVariables.GetValue(m_oTeam.sTeam_Number)
		  
		  select case oDesignVariables.sDataType
		  case "Checkbox"
		    'dim vwCheckBox as new vwCheckBox(oData)
		    'self.PushTo(vwCheckBox)
		    
		    AskBoolean
		  case "Text"
		    dim vwText as new vwTextField(oData)
		    self.PushTo(vwText)
		    
		  case "Numbers"
		    dim vwNumb as new vwNumbers(oData)
		    self.PushTo(vwNumb)
		    
		  case "TextArea"
		    dim vwtA as new vwTextArea(oData)
		    self.PushTo(vwTa)
		    
		  case "Popup"
		    
		    if oDesignVariables.sList <> "" then
		      AskPopup
		    else
		      dim vwPop as new vwPopup(oData, oDesignVariables)
		      self.PushTo(vwPop)
		    end
		    
		  case "Image"
		    #if DebugBuild
		      msgbox "Camera only works on real device."
		      return
		    #Endif
		    
		    dim vwImg as new vwImage(oData)
		    self.PushTo(vwImg)
		    
		  case else
		    break
		  end
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
