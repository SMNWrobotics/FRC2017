#tag Class
Protected Class App
Inherits IOSApplication
	#tag CompatibilityFlags = TargetIOS
	#tag Event
		Sub Open()
		  dim f as xojo.IO.FolderItem = SpecialFolder.Documents.child("frc 2017 data.sqlite")
		  
		  if DataFile.OpenDB(f) = false then
		    msgbox "Can't open the data file."
		  end
		End Sub
	#tag EndEvent

	#tag Event
		Function UnhandledException(exc As RuntimeException) As Boolean
		  MsgBox "Exception", exc.Reason
		  Return True
		End Function
	#tag EndEvent


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
