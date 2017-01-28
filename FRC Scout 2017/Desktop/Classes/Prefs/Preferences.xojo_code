#tag Module
Protected Module Preferences
	#tag Method, Flags = &h1
		Protected Function BooleanValue(Key As String, Default As Boolean = False) As Boolean
		  testsetup
		  if mydict.haskey(key) and mydict.value(key).type = TransportManager.kTransportableBoolean then
		    return TransportableBoolean(mydict.value(key)).Value
		  else
		    return default
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub BooleanValue(Key As String, Assigns TheValue As Boolean)
		  testsetup
		  mydict.value(key) = new TransportableBoolean(thevalue)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ColorValue(Key As String, Default As Color = &c000000) As Color
		  testsetup
		  if mydict.haskey(key) and mydict.value(key).type = TransportManager.kTransportableColor then
		    return TransportableColor(mydict.value(key)).Value
		  else
		    return Default
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ColorValue(Key As String, Assigns TheValue As Color)
		  testsetup
		  mydict.value(key) = new TransportableColor(thevalue)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DoubleValue(Key As String, Default As Double = 0) As Double
		  testsetup
		  if mydict.haskey(key) and mydict.value(key).type = TransportManager.kTransportableDouble then
		    return TransportableDouble(mydict.value(key)).Value
		  else
		    return Default
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub DoubleValue(Key As String, Assigns TheValue As Double)
		  testsetup
		  mydict.value(key) = new TransportableDouble(thevalue)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FolderItemValue(Key As String, Default As FolderItem = Nil) As FolderItem
		  testsetup
		  if mydict.haskey(key) and mydict.value(key).type = TransportManager.kTransportableFolderItem then
		    return TransportableFolderItem(mydict.value(key)).Value
		  else
		    return Default
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub FolderItemValue(Key As String, Assigns TheFolderItem As FolderItem)
		  testsetup
		  mydict.value(key) = new TransportableFolderItem(TheFolderItem)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetBackupFile() As FolderItem
		  dim f as FolderItem
		  
		  f = modGlobals.GetPrefsFolder
		  
		  dim sName as string = "com.frcteam1982.frcscout.bak"
		  return f.Child(sName)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetPreferenceFile() As FolderItem
		  dim f as FolderItem
		  
		  f = modGlobals.GetPrefsFolder
		  
		  dim sName as string = "com.frcteam1982.frcscout." + FileExtension
		  return f.Child(sName)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetTempPreferenceFile() As FolderItem
		  dim f as FolderItem
		  
		  f = modGlobals.GetPrefsFolder
		  
		  dim sName as string = "com.wxline.strikeviewserver_temp"
		  return f.Child(sName)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IntegerValue(Key As String, Default As Integer = 0) As Integer
		  testsetup
		  if mydict.haskey(key) and mydict.value(key).type = TransportManager.kTransportableInteger then
		    return TransportableInteger(mydict.value(key)).Value
		  else
		    return Default
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub IntegerValue(Key As String, Assigns TheValue As Integer)
		  testsetup
		  mydict.value(key) = new TransportableInteger(thevalue)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function LastError() As Integer
		  return pLastError
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Load()
		  dim f as folderitem
		  dim t as textinputstream
		  dim s as string
		  
		  f = GetPreferenceFile
		  if f.exists = false then
		    //No prefs file.  See if we have a backup
		    f = GetBackupFile
		  end
		  
		  if f.exists then
		    t = TextInputStream.Open(f)
		    if t = nil then
		      msgbox "error Opening prefs file."
		      f.Delete
		      pLastError = -2
		    else
		      s = t.readall(encodings.utf8)
		      t.close
		      
		      dim oDoc as XmlDocument = LoadXMLDocument(s)
		      if oDoc = nil then
		        msgbox "error Opening prefs file."
		      else
		        mydict = TransportableDictionary(DecodeTransportableItem(oDoc))
		      end
		    end
		  else
		    plasterror = -1
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function LoadXMLDocument(s as String) As XmlDocument
		  dim oDoc as XmlDocument
		  try
		    oDoc = new XmlDocument(s)
		  catch
		    //Error in the original.  Try the backup if there is one.
		    dim fOld as folderitem = GetBackupFile
		    if fOld.exists = true then
		      dim sRead as string
		      dim t as TextInputStream = TextInputStream.Open(fOld)
		      if t = nil then
		        msgbox "error Opening prefs XML file."
		        pLastError = -2
		      else
		        sRead = t.readall(encodings.utf8)
		        t.close
		        oDoc = new XmlDocument(sRead)
		      end
		    end
		  end
		  
		  return oDoc
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ObjectValue(Key As String) As TransportableItem
		  testsetup
		  if mydict.haskey(key) then
		    return mydict.value(key)
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ObjectValue(Key As String, Assigns TheValue As TransportableItem)
		  testsetup
		  mydict.value(key) = thevalue
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Save()
		  
		  if mydict = nil then
		    pLastError = -1
		    return
		  end
		  
		  dim fPrefs as folderitem = GetPreferenceFile
		  dim fTemporary as FolderItem = GetTempPreferenceFile
		  dim fBackup as folderitem = GetBackupFile
		  
		  dim s as string = MyDict.Save
		  
		  dim t as textoutputstream = TextOutputStream.create(fTemporary)
		  BKS_Debug.Assert t <> nil, CurrentMethodName + "-cannot create text output stream"
		  if t = nil then
		    //do we need to error out?
		    pLastError = -1
		    return
		  end
		  t.write s
		  
		  if t.LastErrorCode <> 0 then
		    t.close
		    pLastError = -3
		    return
		  end
		  t.close
		  
		  //Temporary file was written.
		  if fTemporary.LastErrorCode = 0 and fBackup.exists = true then
		    //Backup Exists.  Delete it
		    fBackup.Delete
		  end
		  
		  //Rename .xml to .bak
		  dim bBackupExists as boolean
		  if fPrefs.exists then
		    fPrefs.name = "com.frcteam1982.frcscout.bak"
		    bBackupExists = true
		  end
		  
		  //Rename temp to .xml
		  fTemporary.name = "com.frcteam1982.frcscout.xml"
		  
		  if bBackupExists = false then
		    //Make a backup copy
		    fTemporary.CopyFileTo fBackup
		  end
		  
		  pLastError = 0
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function StringValue(Key As String, Default As String = "") As String
		  testsetup
		  if mydict.haskey(key) and mydict.value(key).type = TransportManager.kTransportableString then
		    return TransportableString(mydict.value(key)).Value
		  else
		    return Default
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub StringValue(Key As String, Assigns TheValue As String)
		  testsetup
		  mydict.value(key) = new transportablestring(thevalue)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TestSetup()
		  if mydict = nil then
		    mydict = new transportabledictionary
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub WindowValue(Key as string, assigns win as window)
		  dim sTemp as string
		  
		  #if TargetWin32 then
		    if win.IsIconicMBS then 
		      Return //Don't save the settings if the window is minimized
		    end
		  #endif
		  
		  sTemp = cstr(win.left) + ";" + cstr(win.top) + ";" + cstr(win.Height) + ";" + cstr(win.Width)
		  
		  StringValue(key) = sTemp
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function WindowValue(Key as string, w as window) As string
		  dim sTemp as string
		  
		  if w <> nil then
		    sTemp = cstr(w.left) + ";" + cstr(w.top) + ";" + cstr(w.Height) + ";" + cstr(w.Width)
		  end
		  
		  return StringValue(key, sTemp)
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private MyDict As TransportableDictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private pLastError As Integer
	#tag EndProperty


	#tag Constant, Name = FileExtension, Type = String, Dynamic = False, Default = \"xml", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"xml"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"xml"
	#tag EndConstant

	#tag Constant, Name = kCheckUpdatesAtStartup, Type = String, Dynamic = False, Default = \"kCheckUpdatesAtStartup", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kCompletedInitialSetup, Type = String, Dynamic = False, Default = \"kCompletedInitialSetup", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDatetrialbegan, Type = String, Dynamic = False, Default = \"kDatetrialbegan", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kName, Type = String, Dynamic = False, Default = \"kName", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPrintSettings, Type = String, Dynamic = False, Default = \"kPrintSettings", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kRegistrationCode, Type = String, Dynamic = False, Default = \"kRegistrationCode", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kRegistrationID, Type = String, Dynamic = False, Default = \"ServerID", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ksoftwareUpdateIgnoreVersion, Type = String, Dynamic = False, Default = \"ksoftwareUpdateIgnoreVersion", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
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
