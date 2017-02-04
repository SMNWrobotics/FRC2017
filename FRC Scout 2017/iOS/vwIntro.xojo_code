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
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 1, , 0, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Label1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   Label1, 3, , 0, False, +1.00, 1, 1, 41, 
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "FRC Scouting App 2017"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   "System Bold		"
      TextSize        =   18
      Top             =   41
      Visible         =   True
      Width           =   335.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 1, Label1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label2, 2, Label1, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 51, 
      AutoLayout      =   Label2, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, 0, 
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
      Top             =   616
      Visible         =   True
      Width           =   335.0
   End
   Begin iOSImageView ImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ImageView1, 1, Label2, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ImageView1, 2, Label2, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ImageView1, 3, Label1, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   ImageView1, 8, , 0, False, +1.00, 1, 1, 286, 
      ContentMode     =   "0"
      Height          =   286.0
      Image           =   "1290786815"
      Image           =   "1290786815"
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      Top             =   79
      Visible         =   True
      Width           =   335.0
   End
   Begin iOSButton btnMatch
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnMatch, 1, <Parent>, 1, False, +1.00, 1, 1, 103, 
      AutoLayout      =   btnMatch, 7, , 0, False, +1.00, 1, 1, 171, 
      AutoLayout      =   btnMatch, 3, <Parent>, 3, False, +1.00, 1, 1, 382, 
      AutoLayout      =   btnMatch, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Setup"
      Enabled         =   True
      Height          =   30.0
      Left            =   103
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   382
      Visible         =   True
      Width           =   171.0
   End
   Begin iOSButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 1, <Parent>, 1, False, +1.00, 1, 1, 103, 
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 1, 1, 171, 
      AutoLayout      =   Button2, 3, <Parent>, 3, False, +1.00, 1, 1, 420, 
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Robot"
      Enabled         =   True
      Height          =   30.0
      Left            =   103
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   420
      Visible         =   True
      Width           =   171.0
   End
   Begin iOSButton Button3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button3, 1, Button2, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button3, 7, , 0, False, +1.00, 1, 1, 171, 
      AutoLayout      =   Button3, 3, <Parent>, 3, False, +1.00, 1, 1, 458, 
      AutoLayout      =   Button3, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Match"
      Enabled         =   True
      Height          =   30.0
      Left            =   103
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   458
      Visible         =   True
      Width           =   171.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events btnMatch
	#tag Event
		Sub Action()
		  self.PushTo new vwSetup
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Action()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button3
	#tag Event
		Sub Action()
		  
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
