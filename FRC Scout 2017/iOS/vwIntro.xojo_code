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
   Begin iOSLibButton btnSetup
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alpha           =   1.0
      AutoLayout      =   btnSetup, 8, , 0, False, +1.00, 1, 1, 32, 
      AutoLayout      =   btnSetup, 3, Label1, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   btnSetup, 9, <Parent>, 9, False, +1.00, 1, 1, 0, 
      AutoLayout      =   btnSetup, 7, , 0, False, +1.00, 1, 1, 224, 
      AutoresizesSubviews=   True
      BackgroundColor =   &c66FF6600
      CanBecomeFocused=   False
      ClearsContextBeforeDrawing=   False
      ClipsToBounds   =   True
      ContentMode     =   ""
      ContentScaleFactor=   1.0
      DisabledTitle   =   ""
      ExclusiveTouch  =   False
      Focused         =   False
      HasAmbiguousLayout=   False
      Height          =   32.0
      Hidden          =   False
      HighlightedTitle=   ""
      Left            =   48
      LockedInPosition=   False
      MultipleTouchEnabled=   False
      NormalTitle     =   "Setup"
      Opaque          =   False
      PreservesSuperviewLayoutMargins=   False
      Scope           =   0
      SelectedTitle   =   ""
      Tag             =   0
      TintAdjustmentMode=   ""
      Top             =   287
      TranslatesAutoresizingMaskIntoConstraints=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   224.0
   End
   Begin iOSLIbImageView iOSLIbImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alpha           =   1.0
      Animating       =   False
      AnimationDuration=   0.0
      AnimationRepeatCount=   0
      AutoLayout      =   iOSLIbImageView1, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   iOSLIbImageView1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   iOSLIbImageView1, 3, <Parent>, 3, False, +1.00, 1, 1, 41, 
      AutoLayout      =   iOSLIbImageView1, 8, , 0, False, +1.00, 1, 1, 200, 
      AutoresizesSubviews=   True
      BackgroundColor =   &cFFFFFF00
      CanBecomeFocused=   False
      ClearsContextBeforeDrawing=   False
      ClipsToBounds   =   True
      ContentMode     =   ""
      ContentScaleFactor=   1.0
      ExclusiveTouch  =   False
      Focused         =   False
      HasAmbiguousLayout=   False
      Height          =   200.0
      Hidden          =   False
      Highlighted     =   False
      HighlightedImage=   ""
      Image           =   ""
      Left            =   20
      LockedInPosition=   False
      MultipleTouchEnabled=   False
      Opaque          =   False
      PreservesSuperviewLayoutMargins=   False
      Scope           =   0
      Tag             =   0
      TintAdjustmentMode=   ""
      Top             =   41
      TranslatesAutoresizingMaskIntoConstraints=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 1, iOSLIbImageView1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 2, iOSLIbImageView1, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label1, 3, iOSLIbImageView1, 4, False, +1.00, 1, 1, *kStdControlGapV, 
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
      Top             =   249
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 1, Label1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 1, 1, 280, 
      AutoLayout      =   Label2, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 1, 1, 51, 
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
   Begin iOSLibButton btnRobotScouting
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alpha           =   1.0
      AutoLayout      =   btnRobotScouting, 8, , 0, False, +1.00, 1, 1, 32, 
      AutoLayout      =   btnRobotScouting, 3, btnSetup, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   btnRobotScouting, 7, , 0, False, +1.00, 1, 1, 224, 
      AutoLayout      =   btnRobotScouting, 1, btnSetup, 1, False, +1.00, 1, 1, 0, 
      AutoresizesSubviews=   True
      BackgroundColor =   &cFF666600
      CanBecomeFocused=   False
      ClearsContextBeforeDrawing=   False
      ClipsToBounds   =   True
      ContentMode     =   ""
      ContentScaleFactor=   1.0
      DisabledTitle   =   ""
      ExclusiveTouch  =   False
      Focused         =   False
      HasAmbiguousLayout=   False
      Height          =   32.0
      Hidden          =   False
      HighlightedTitle=   ""
      Left            =   48
      LockedInPosition=   False
      MultipleTouchEnabled=   False
      NormalTitle     =   "Robots"
      Opaque          =   False
      PreservesSuperviewLayoutMargins=   False
      Scope           =   0
      SelectedTitle   =   ""
      Tag             =   0
      TintAdjustmentMode=   ""
      Top             =   327
      TranslatesAutoresizingMaskIntoConstraints=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   224.0
   End
   Begin iOSLibButton btnMatchScouting
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alpha           =   1.0
      AutoLayout      =   btnMatchScouting, 8, , 0, False, +1.00, 1, 1, 32, 
      AutoLayout      =   btnMatchScouting, 3, btnRobotScouting, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   btnMatchScouting, 7, , 0, False, +1.00, 1, 1, 224, 
      AutoLayout      =   btnMatchScouting, 1, btnRobotScouting, 1, False, +1.00, 1, 1, 0, 
      AutoresizesSubviews=   True
      BackgroundColor =   &c66CCFF00
      CanBecomeFocused=   False
      ClearsContextBeforeDrawing=   False
      ClipsToBounds   =   True
      ContentMode     =   ""
      ContentScaleFactor=   1.0
      DisabledTitle   =   ""
      ExclusiveTouch  =   False
      Focused         =   False
      HasAmbiguousLayout=   False
      Height          =   32.0
      Hidden          =   False
      HighlightedTitle=   ""
      Left            =   48
      LockedInPosition=   False
      MultipleTouchEnabled=   False
      NormalTitle     =   "Matches"
      Opaque          =   False
      PreservesSuperviewLayoutMargins=   False
      Scope           =   0
      SelectedTitle   =   ""
      Tag             =   0
      TintAdjustmentMode=   ""
      Top             =   367
      TranslatesAutoresizingMaskIntoConstraints=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   224.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events btnSetup
	#tag Event , Description = 4669726573207768656E2074686520627574746F6E20697320746F7563686564
		Sub Action()
		  self.PushTo new vwSetup
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events iOSLIbImageView1
	#tag Event
		Sub Open()
		  me.Image = TransparentLogo
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnRobotScouting
	#tag Event
		Sub Action()
		  self.PushTo new vwRobot
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnMatchScouting
	#tag Event
		Sub Action()
		  self.PushTo new vwGame
		End Sub
	#tag EndEvent
#tag EndEvents
