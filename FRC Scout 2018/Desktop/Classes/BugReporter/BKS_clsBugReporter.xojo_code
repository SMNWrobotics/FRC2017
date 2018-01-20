#tag Class
Protected Class BKS_clsBugReporter
	#tag Method, Flags = &h21
		Private Function ErrorMessage(Title as string, message as string) As integer
		  Dim d as New MessageDialog  //declare the MessageDialog object
		  Dim b as MessageDialogButton //for handling the result
		  
		  d.icon=MessageDialog.GraphicCaution   //display warning icon
		  d.ActionButton.Caption= "OK"
		  
		  d.CancelButton.Visible= false
		  
		  d.AlternateActionButton.Visible = true //Show the "Send Email Button"
		  d.AlternateActionButton.Caption = ErrorSendEmail
		  
		  d.Message = Title
		  d.Explanation = message
		  
		  b=d.ShowModal    //display the dialog
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

	#tag Method, Flags = &h21
		Private Sub LogEntry(err as RuntimeException, location as string, sOtherMsg as string, sStack as string)
		  dim f as folderitem = SpecialFolder.Desktop.child("FRC Scout Errors")
		  if f.Exists = false then
		    f.CreateAsFolder
		  end
		  
		  f = f.child("ErrorLog-FRCScout.txt")
		  
		  dim tos as TextOutputStream
		  dim d as new date
		  
		  if f.exists = false then
		    tos = TextOutputStream.Create(f)
		    tos.WriteLine "FRC Scout Error Log."
		    tos.WriteLine "Created: " + d.SQLDateTime
		    tos.WriteLine "Please Email this file to support@bkeeney.com.  Thank you."
		    tos.WriteLine "To help us fix this, please provide information on what led to this bug."
		    tos.WriteLine ""
		  else
		    tos = TextOutputStream.Append(f)
		  end
		  
		  tos.WriteLine d.SQLDateTime + " " + TypeOfException(err)
		  tos.WriteLine "Location: " + Location
		  tos.WriteLine sOtherMsg
		  tos.WriteLine "Stack:"
		  tos.Write sStack
		  tos.writeline "====================="
		  
		  tos.close
		  
		  f.Launch true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Report(err as RuntimeException, location as string, otherErr as string = "")
		  dim w as BKS_winBugReporter
		  dim res as integer
		  dim msgStr as string
		  dim sStack, s() as string
		  dim n, nMax as integer
		  
		  BKS_Debug.Assert(sCompanyName<>"")
		  BKS_Debug.Assert(sEmailAddress<>"")
		  BKS_Debug.Assert(sProductName<>"")
		  
		  if err isA EndException or err isa ThreadEndException then
		    //Not really a bug.
		    return
		  end
		  msgStr = TypeOfException(err) + " occurred in " + location
		  if otherErr<>"" then
		    msgStr = msgStr + ".  " + otherErr
		  end if
		  
		  if err isa BKS_Database.DatabaseException then
		    msgStr = msgstr + EndOfLine + err.Message
		  end
		  
		  res = ErrorMessage(ErrorUnknown, msgStr)
		  
		  sStack = ""
		  s = err.CleanStack
		  nMax = UBound(s)
		  for n = 0 to nMax
		    sStack = sStack + s(n) + EndOfLine
		  next
		  
		  dim sOtherMsg as string
		  if err isa BKS_Debug.BKS_AssertFailedException then
		    sOtherMsg = err.Message
		  end
		  
		  LogEntry err, location, sOtherMsg, sStack
		  
		  'if res = 3 then
		  'w = new BKS_winBugReporter
		  'w.sCompanyName = sCompanyName
		  'w.sProductName = sProductName
		  'w.sEmailAddress = sEmailAddress
		  '//sErrorType as string, location as string, otherErr as string, sStack as string
		  'w.askToSend( "RuntimeException: " + TypeOfException(err), location, sOtherMsg, sStack)
		  'end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Report(sErrorType as string, sMessage as string, sErrorDetails as string)
		  dim w as BKS_winBugReporter
		  dim res as integer
		  
		  BKS_Debug.Assert(sCompanyName<>"")
		  BKS_Debug.Assert(sEmailAddress<>"")
		  BKS_Debug.Assert(sProductName<>"")
		  
		  LogEntry nil, "Unknown", sErrorType + EndOfLine + endofline + sMessage + endofline + sErrorDetails, "NO STACK"
		  
		  '
		  'res = ErrorMessage(sErrorType, sMessage)
		  '
		  'if res = 3 then
		  'w = new BKS_winBugReporter
		  'w.sCompanyName = sCompanyName
		  'w.sProductName = sProductName
		  'w.sEmailAddress = sEmailAddress
		  'w.askToSend( sErrorType, sMessage, sErrorDetails)
		  'end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function TypeOfException(err as runtimeexception) As string
		  // Returns a text string indicating the type of RuntimeException passed in.
		  dim result as string
		  
		  if err isA IllegalCastException then
		    result = "IllegalCastException"
		  elseif err isA KeyNotFoundException then
		    result = "KeyNotFoundException"
		  elseif err isA OutOfBoundsException then
		    result = "OutOfBoundsException"
		  elseif err isA OutOfMemoryException then
		    result = "OutOfMemoryException"
		    ' elseif err isA RbScriptAlreadyRunningException then
		    ' result = "RbScriptAlreadyRunningException"
		    ' elseif err isA RbScriptException then
		    ' result = "RbScriptException"
		    ' elseif err isA RegExException then
		    ' result = "RegExException"
		  elseif err isA ShellNotAvailableException then
		    result = "ShellNotAvailableException"
		  elseif err isA ShellNotRunningException then
		    result = "ShellNotRunningException"
		  elseif err isA StackOverflowException then
		    result = "StackOverflowException"
		  elseif err isA TypeMismatchException then
		    result = "TypeMismatchException"
		  elseif err isA UnsupportedFormatException then
		    result = "UnsupportedFormatException"
		  elseif err isA NoOpenTransportException then
		    result = "NoOpenTransportException"
		  elseif err isA InvalidParentException then
		    result = "InvalidParentException"
		  elseif err isA EndException then
		    result = "EndException"
		  elseif err isA NilObjectException then
		    result = "NilObjectException"
		  elseif err isa BKS_Debug.BKS_AssertFailedException then
		    result = "BKS Assertion Failure"
		    ' uncomment these lines if you are using the Office Automation plug-ins
		    ' elseif err isA WordException then
		    ' result = "WordException"
		    ' elseif err isA ExcelException then
		    ' result = "ExcelException"
		    ' elseif err isA PowerPointException then
		    ' result = "PowerPointException"
		    
		  end if
		  
		  return result
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		sCompanyName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		sEmailAddress As string
	#tag EndProperty

	#tag Property, Flags = &h0
		sProductName As string
	#tag EndProperty


	#tag Constant, Name = ErrorSendEmail, Type = String, Dynamic = False, Default = \"Email Report...", Scope = Private
	#tag EndConstant

	#tag Constant, Name = ErrorUnknown, Type = String, Dynamic = False, Default = \"An Unknown Error Occurred", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="2147483648"
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
			Name="sCompanyName"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sEmailAddress"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sProductName"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
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
End Class
#tag EndClass
