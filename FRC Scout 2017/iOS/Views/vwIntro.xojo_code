#tag IOSView
Begin iosView vwIntro
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 51, 
      AutoLayout      =   Label2, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Label2, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      Enabled         =   True
      Height          =   51.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "© 2017 FRC Team 1982.  Written by BKeeney Software Inc."
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   "System		"
      TextSize        =   0
      Top             =   429
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSImageView ImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ImageView1, 4, lblDefaultEvent, 3, False, +1.00, 1, 1, -*kStdControlGapV, 
      AutoLayout      =   ImageView1, 8, , 0, False, +1.00, 1, 1, 286, 
      AutoLayout      =   ImageView1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   ImageView1, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      ContentMode     =   "1"
      Height          =   286.0
      Image           =   "1290786815"
      Image           =   "1290786815"
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      Top             =   108
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel lblDefaultEvent
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblDefaultEvent, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   lblDefaultEvent, 2, <Parent>, 2, False, +1.00, 1, 1, 20, 
      AutoLayout      =   lblDefaultEvent, 3, <Parent>, 3, False, +1.00, 1, 1, 402, 
      AutoLayout      =   lblDefaultEvent, 8, , 0, False, +1.00, 1, 1, 62, 
      Enabled         =   True
      Height          =   62.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Default Event Not Setup - Use Setup"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      Top             =   402
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Label1, 1, lblDefaultEvent, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   Label1, 3, <Parent>, 3, False, +1.00, 1, 1, 63, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "FRC 2017 Scouting App"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      Top             =   63
      Visible         =   True
      Width           =   280.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Activate()
		  dim sEventKey as Text = Foundation.NSUserDefaults.StandardUserDefaults.TextForKey("EventKey")
		  
		  if sEventKey <> "" then
		    app.oSelectedEvent = DataFile.t_event.FindByKey(sEventKey)
		  end
		  
		  if app.oSelectedEvent <> nil then
		    lblDefaultEvent.text = app.oSelectedEvent.sName + &ua + _
		    app.oSelectedEvent.sLocation + &ua + _
		    app.oSelectedEvent.dtStart_Date.ToText(Locale.Current, xojo.core.Date.FormatStyles.Short, Date.FormatStyles.None)
		  end
		End Sub
	#tag EndEvent


#tag EndWindowCode

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