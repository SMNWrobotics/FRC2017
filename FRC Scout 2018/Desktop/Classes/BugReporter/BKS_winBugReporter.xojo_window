#tag Window
Begin Window BKS_winBugReporter
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   True
   Height          =   288
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   3
   Resizeable      =   True
   Title           =   "#mStrings.Report_This_Error"
   Visible         =   True
   Width           =   480
   Begin Canvas iconCanvas
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   64
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   20
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   64
   End
   Begin Label stMessage
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   64
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   96
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "$ProductName$ has encountered a serious error.  Please e-mail $CompanyName$ with details of how and where this problem occurred, so that it can be fixed in a future release."
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   364
   End
   Begin Label stNote
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   32
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "What you were doing when the problem occurred?  Please be as detailed as possible:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   90
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   303
   End
   Begin TextArea userDescription
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   True
      BackColor       =   &cFFFF00FF
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   114
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   122
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   440
   End
   Begin PushButton ok
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Email Bug Report"
      Default         =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   262
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   248
      Underline       =   False
      Visible         =   True
      Width           =   198
   End
   Begin PushButton cancel
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   True
      Caption         =   "Cancel"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   181
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   248
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub askToSend(sErrorType as string)
		  askToSend(sErrorType, "", "")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub askToSend(sErrorType as string, location as string, sStack as string)
		  askToSend(sErrorType,location,"",sStack)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub askToSend(sErrorType as string, location as string, otherErr as string, sStack as string)
		  // Shows the user a dialog allowing him/her to (optionally) enter a description of what was
		  // happening when the RuntimeException occurred, and to decide whether to send the e-mail.
		  dim address, subject, body as string
		  
		  address = sEmailAddress
		  #if TargetMacOS then
		    subject = sProductName +  " v" + cstr(app.MajorVersion) + "." + cstr(app.MinorVersion) +  "." + cstr(app.BugVersion) + "Bug_Report (Mac)"
		  #elseif TargetWin32 then
		    subject = sProductName  + " v" + cstr(app.MajorVersion) + "." + cstr(app.MinorVersion) +  "." + cstr(app.BugVersion) + "Bug_Report (Windows)"
		  #elseif TargetLinux then
		    subject = sProductName  + " v" + cstr(app.MajorVersion) + "." + cstr(app.MinorVersion) +  "." + cstr(app.BugVersion) + "Bug_Report (Linux)"
		  #endif
		  subject = ReplaceAll(subject, " ", "")
		  
		  stMessage.Text = ReplaceAll(stMessage.Text,"$ProductName$",sProductName)
		  stMessage.Text = ReplaceAll(stMessage.Text,"$CompanyName$",sCompanyName)
		  
		  ShowModal
		  
		  if okayToSend then
		    body = sErrorType + EndOfLine
		    body = body + "Location: " + location + EndOfLine + EndOfLine
		    
		    body = body + GetSystemInformation + EndOfLine + EndOfLine
		    
		    body = body + "User Description: " + userDescription.text + EndOfLine + EndOfLine
		    body = body + "Stack " + EndOfLine + sStack + EndOfLine + EndOfLine
		    body = body + EndOfLine + "Other Messages: " + otherErr
		    
		    showURL "mailto:" + encodeURL(address) + "?subject=" + encodeURL(subject) + "&body=" + encodeURL(body)
		    
		  end if
		  
		  self.close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function EncodeURL(s as string) As string
		  dim result as string
		  
		  result = EncodingToURLMBS(s)
		  if result = "" then
		    result = s
		  end
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetSystemInformation() As string
		  dim sInfo as string
		  dim OS as string
		  dim result as integer
		  
		  #if TargetMacOS then
		    if System.gestalt("sysv", result) then
		      OS = hex(result)
		      OS = left(OS, len(OS) - 2) + "." + mid(OS, len(OS) - 1, 1) + "." + right(OS, 1)
		      sInfo = sInfo + "OS Version: " + OS + EndOfLine
		    end if
		    
		    if System.gestalt("cput", result) then
		      if sInfo<>"" then
		        sInfo = sInfo + EndOfLine
		      end if
		      sInfo = sInfo + "CPU Type: " + typeOfCPU(result)
		    end if
		    
		  #elseif TargetWin32 then
		    
		    sInfo = sInfo + "OS: " + GetWindowsVersion
		    
		  #elseif TargetLinux then
		    dim sh as new shell
		    sh.Execute "lsb_release -d"
		    dim s as string = sh.Result
		    
		    sInfo = sINfo + mStrings.OS + " Linux: " + s
		    
		  #endif
		  
		  return sInfo
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetWindowsVersion() As string
		  dim s as string
		  
		  #if TargetWin32 then
		    s =  OSVersionInformation.OSName + " " + OSVersionInformation.Mode
		    s = s +  Win32DeclareLibrary.OSVersionString
		  #endif
		  
		  return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function typeOfCPU(cpu as integer) As string
		  // Returns the CPU type of this machine (the machine you are currently using).
		  // List of CPU types is from <http://developer.apple.com/techpubs/macosx/Carbon/oss/GestaltManager/Gestalt_Manager/Gestalts/gestaltNativeCPUtype.html>.
		  dim result as string
		  
		  select case cpu
		  case 0
		    result = "68000"
		  case 1
		    result = "68010"
		  case 2
		    result = "68020"
		  case 3
		    result = "68030"
		  case 4
		    result = "68040"
		  case 257
		    result = "PowerPC 601"
		  case 259
		    result = "PowerPC 603"
		  case 260
		    result = "PowerPC 604"
		  case 262
		    result = "PowerPC 603e"
		  case 263
		    result = "PowerPC 603ev"
		  case 264
		    result = "G3"
		  case 265
		    result = "PowerPC 604e"
		  case 266
		    result = "PowerPC 604ev"
		  case 268
		    result = "G4"
		  case 272
		    result = "G4 Version 2.0"
		  case 316
		    result = "G5"
		  else
		    result = "unknown"
		  end select
		  
		  return result
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private okayToSend As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		sCompanyName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		sEmailAddress As string
	#tag EndProperty

	#tag Property, Flags = &h0
		sProductName As string
	#tag EndProperty


#tag EndWindowCode

#tag Events iconCanvas
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.drawCautionIcon 0, 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ok
	#tag Event
		Sub Action()
		  dim res as integer
		  
		  if TRIM(userDescription.text) = "" then
		    res = Alert( AlertTypes.kCaution, "No Description",  _
		    "To help improve our products, please help us out by telling us what you were doing leading up to the error.",  _
		    "Cancel", "Submit", "")
		    if res = 1 then return
		  end
		  
		  
		  okayToSend = true
		  self.hide
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cancel
	#tag Event
		Sub Action()
		  okayToSend = false
		  self.hide
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
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
		Name="CloseButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
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
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
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
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
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
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
