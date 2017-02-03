#tag Module
Protected Module modGlobals
	#tag Method, Flags = &h0
		Sub addRowAndTag(extends pm as PopupMenu, sText as string, Tag as Variant)
		  pm.addRow sText
		  
		  pm.RowTag(pm.ListCount-1) = Tag
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Alert(Type as AlertTypes, Title as string, msg as string, btn1txt as string, btn2txt as string, btn3txt as string, w as window = nil)
		  
		  dim i as integer =  Alert(type, title, msg, btn1txt, btn2txt, btn3txt, w)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Alert(Type as AlertTypes, Title as string, msg as string, btn1txt as string, btn2txt as string, btn3txt as string, w as window = nil) As integer
		  Dim d as New MessageDialog  //declare the MessageDialog object
		  Dim b as MessageDialogButton //for handling the result
		  
		  select case Type
		  case AlertTypes.kCaution
		    d.icon=MessageDialog.GraphicCaution   //display warning icon
		  case AlertTypes.kNote
		    d.icon = MessageDialog.GraphicNote
		  case AlertTypes.kStop
		    d.icon = MessageDialog.GraphicStop
		  case AlertTypes.kPlain
		    d.icon = MessageDialog.GraphicNone
		  case AlertTypes.kQuestion
		    d.icon = MessageDialog.GraphicQuestion
		  end
		  
		  
		  d.ActionButton.Caption= btn1txt
		  
		  if btn2txt <> "" then
		    d.CancelButton.Visible= True     //show the Cancel button
		    d.CancelButton.Caption = btn2txt
		  else
		    d.CancelButton.Visible = false
		  end
		  
		  if btn3txt <> "" then
		    d.AlternateActionButton.Visible= True   //show the "Don't Save" button
		    d.AlternateActionButton.Caption = btn3txt
		  else
		    d.AlternateActionButton.Visible = false
		  end
		  
		  d.Message = Title
		  d.Explanation = msg
		  if w = nil  or TargetWin32 then
		    b=d.ShowModal    //display the dialog
		  else
		    b = d.ShowModalWithin( w.trueWindow )
		  end
		  
		  Select Case b //determine which button was pressed.
		  Case d.ActionButton
		    return 1
		  Case d.AlternateActionButton
		    return 3
		  Case d.CancelButton
		    return 2
		  End select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function cBool(s as String) As boolean
		  if s = "True" or s = "1" then
		    return true
		  else
		    return false
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetGUID() As string
		  dim rs as RecordSet = gDB.SQLSelect("SELECT lower(hex(randomblob(16)))")
		  return rs.IdxField(1).StringValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetPrefsFolder() As FolderItem
		  dim f as folderitem = SpecialFolder.Preferences
		  return f
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetRowTag(extends pm as Popupmenu) As Variant
		  dim v as variant
		  
		  if pm.ListIndex <> -1 then
		    v = pm.RowTag(pm.ListIndex)
		  end
		  return v
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsConnected() As boolean
		  Dim http As New HTTPSocket
		  http.yield = True
		  dim ih as InternetHeaders = (http.GetHeaders("http://www.google.com", 1))
		  return (ih <> nil)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetRowID(extends pm as PopupMenu, iValue as Integer)
		  for i as integer = 0 to pm.ListCount-1
		    if pm.RowTag(i) = iValue then
		      pm.ListIndex = i
		      return
		    end
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetRowID(extends pm as PopupMenu, sValue as String)
		  for i as integer = 0 to pm.ListCount-1
		    if pm.RowTag(i) = sValue then
		      pm.ListIndex = i
		      return
		    end
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetText(extends pm as PopupMenu, assigns sValue as String)
		  for i as integer = 0 to pm.ListCount-1
		    if pm.list(i) = sValue then
		      pm.ListIndex = i
		      return
		    end
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString(Extends b as Boolean) As String
		  if b= true then
		    return "Yes"
		  else
		    Return "No"
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString(Extends c as Currency) As String
		  return str(c)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString(Extends d as Double) As String
		  return format(d, "#.0#")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString(Extends i as Int64) As String
		  return str(i)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString(Extends i as Integer) As String
		  return str(i)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		iLastAlliance As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iLastAlliancePosition As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h0
		iLastLevel As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		iLastMatch As Integer = 0
	#tag EndProperty


	#tag Constant, Name = kXTBAAppId, Type = String, Dynamic = False, Default = \"X-TBA-App-Id", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kXTBAAppId_Value, Type = String, Dynamic = False, Default = \"frc1982:scouting-app:2017.1", Scope = Public
	#tag EndConstant


	#tag Enum, Name = AlertTypes, Flags = &h0
		kCaution = 2
		  kNote = 1
		  kPlain = 3
		  kStop = 0
		kQuestion = 4
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="iLastAlliance"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iLastLevel"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iLastMatch"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
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
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
