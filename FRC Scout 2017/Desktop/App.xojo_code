#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub Close()
		  Preferences.save
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  dim x as integer = 100
		  dim s as string = "MBS "
		  dim n as string = decodeBase64("QktlZW5leSBTb2Z0d2FyZSBJbmMu", encodings.UTF8)
		  dim y as integer = 34
		  
		  if not registerMBSPlugin(n, s+"Complete", 2017*x+11, 12490929*x+y) then  
		    MsgBox "MBS Plugin serial not valid?"  
		  end if  
		  
		  Preferences.load
		  
		  dim f as FolderItem
		  
		  '#if DebugBuild 
		  'f = GetFolderItem("frc.sqlite")
		  '#else
		  dim fDir as FolderItem = SpecialFolder.ApplicationData.child("FRC Scout 2017")
		  if fDir.Directory = false then
		    fDir.CreateAsFolder
		  end
		  
		  f = fDir.child("frc 2017 data.sqlite")
		  '#Endif
		  
		  if data.OpenDB(f) = false then
		    quit
		  end
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function UnhandledException(error As RuntimeException) As Boolean
		  static bAppCrashed as Boolean
		  
		  If Not bAppCrashed Then //Prevent it from being shown twice in a row since we force a quit anyway
		    bAppCrashed = True
		    
		    dim oReporter as new BKS_clsBugReporter
		    oReporter.sCompanyName = "Team FRC 1982"
		    oReporter.sProductName = "FRC Scouting App"
		    oReporter.sEmailAddress = "support@bkeeney.com"
		    
		    oReporter.Report(error,"UnhandledException")
		  End If
		  
		  Return True
		End Function
	#tag EndEvent


	#tag MenuHandler
		Function FileShowDataFile() As Boolean Handles FileShowDataFile.Action
			dim f as FolderItem = gDB.DatabaseFile.parent
			
			f.launch
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function HelpAboutFRCScoutingApp() As Boolean Handles HelpAboutFRCScoutingApp.Action
			dim w as new winSplash
			w.Display
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function HelpBKeeneySoftwareInc() As Boolean Handles HelpBKeeneySoftwareInc.Action
			showURL "http://www.bkeeney.com"
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function HelpCougarRobotics() As Boolean Handles HelpCougarRobotics.Action
			showURL "http://nwcougarrobotics.com"
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function HelpSupport() As Boolean Handles HelpSupport.Action
			showurl "mailto:support@bkeeney.com?subject=FRC_Scout"
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function HelpXojo() As Boolean Handles HelpXojo.Action
			showURL "http://www.xojo.com"
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
