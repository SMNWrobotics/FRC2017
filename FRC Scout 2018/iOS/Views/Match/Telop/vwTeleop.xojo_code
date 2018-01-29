#tag IOSView
Begin iosView vwTeleop
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSButton btnDone
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnDone, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btnDone, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   btnDone, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btnDone, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Done"
      Enabled         =   True
      Height          =   30.0
      Left            =   110
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   28
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSSegmentedControl SegmentedControl1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SegmentedControl1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   SegmentedControl1, 2, <Parent>, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   SegmentedControl1, 8, , 0, True, +1.00, 4, 1, 29, , True
      AutoLayout      =   SegmentedControl1, 4, <Parent>, 4, False, +1.00, 4, 1, -63, , True
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      Segments        =   "Cubes\n\nTrue\rPowerups\n\nFalse\rMisc\n\nFalse"
      Top             =   388
      Value           =   0
      Visible         =   True
      Width           =   320.0
   End
   Begin ccCubes ccCubes1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ccCubes1, 4, SegmentedControl1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ccCubes1, 1, SegmentedControl1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ccCubes1, 2, SegmentedControl1, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ccCubes1, 3, btnDone, 4, False, +1.00, 4, 1, 0, , True
      Height          =   330.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      Top             =   58
      Visible         =   True
      Width           =   320.0
   End
   Begin ccPowerup ccPowerup1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ccPowerup1, 1, <Parent>, 1, False, +1.00, 4, 1, -11, , True
      AutoLayout      =   ccPowerup1, 7, , 0, False, +1.00, 4, 1, 3.2e+2, , True
      AutoLayout      =   ccPowerup1, 3, <Parent>, 3, False, +1.00, 4, 1, 58, , True
      AutoLayout      =   ccPowerup1, 4, <Parent>, 4, False, +1.00, 4, 1, -92, , True
      Height          =   330.0
      Left            =   -11
      LockedInPosition=   False
      PanelIndex      =   -1
      Parent          =   "nil"
      Scope           =   2
      Top             =   58
      Visible         =   True
      Width           =   320.0
   End
   Begin ccMisc ccMisc1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ccMisc1, 1, <Parent>, 1, False, +1.00, 4, 1, 10, , True
      AutoLayout      =   ccMisc1, 7, , 0, False, +1.00, 4, 1, 3.2e+2, , True
      AutoLayout      =   ccMisc1, 3, <Parent>, 3, False, +1.00, 4, 1, 58, , True
      AutoLayout      =   ccMisc1, 4, <Parent>, 4, False, +1.00, 4, 1, -92, , True
      Height          =   330.0
      Left            =   10
      LockedInPosition=   False
      PanelIndex      =   -1
      Parent          =   "nil"
      Scope           =   2
      Top             =   58
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  ' ccPowerup1.RemoveConstraint
		  
		  
		  
		  
		  ccPowerup1.Visible = False
		  ccMisc1.Visible = False
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events btnDone
	#tag Event
		Sub Action()
		  App.CurrentScreen.Content = app.oOldContent
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SegmentedControl1
	#tag Event
		Sub ValueChanged()
		  Select Case Me.value
		  Case 0
		    ccCubes1.Visible = True
		    ccPowerup1.Visible = False
		    ccMisc1.Visible = False
		  Case 1
		    ccCubes1.Visible = False
		    ccPowerup1.Visible = True
		    ccMisc1.Visible = False
		  Case 2
		    ccCubes1.Visible = False
		    ccPowerup1.Visible = False
		    ccMisc1.Visible = True
		  End
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ccCubes1
#tag EndEvents
#tag Events ccPowerup1
#tag EndEvents
#tag Events ccMisc1
#tag EndEvents
