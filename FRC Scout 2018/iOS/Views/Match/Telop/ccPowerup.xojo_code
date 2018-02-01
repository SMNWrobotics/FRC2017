#tag IOSContainerControl
Begin iOSContainerControl ccPowerup
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Height          =   480.0
   Left            =   0.0
   Top             =   0.0
   Visible         =   True
   Width           =   320.0
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Label1, 3, <Parent>, 3, False, +1.00, 4, 1, *kStdGapCtlToViewV, , True
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   0
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Levitate"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      Top             =   20
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 1, Label1, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Label2, 11, Label1, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 4, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   108
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Boost"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      Top             =   20
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSLabel Label3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label3, 1, Label2, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   Label3, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Label3, 11, Label1, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 4, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   216
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Force"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      Top             =   20
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSSwitch swLevitate3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   swLevitate3, 2, Label2, 1, False, +1.00, 4, 1, -*kStdControlGapH, , True
      AutoLayout      =   swLevitate3, 7, , 0, True, +1.00, 4, 1, 51, , True
      AutoLayout      =   swLevitate3, 3, Label3, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   swLevitate3, 8, , 0, True, +1.00, 4, 1, 31, , True
      Enabled         =   False
      Height          =   31.0
      Left            =   49
      LockedInPosition=   False
      Scope           =   2
      Top             =   58
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSSwitch swLevitate2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   swLevitate2, 1, swLevitate3, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   swLevitate2, 7, , 0, True, +1.00, 4, 1, 51, , True
      AutoLayout      =   swLevitate2, 3, <Parent>, 3, False, +1.00, 4, 1, 113, , True
      AutoLayout      =   swLevitate2, 8, , 0, True, +1.00, 4, 1, 31, , True
      Enabled         =   False
      Height          =   31.0
      Left            =   49
      LockedInPosition=   False
      Scope           =   2
      Top             =   113
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSSwitch swLevitate1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   swLevitate1, 1, swLevitate2, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   swLevitate1, 7, , 0, True, +1.00, 4, 1, 51, , True
      AutoLayout      =   swLevitate1, 3, <Parent>, 3, False, +1.00, 4, 1, 164, , True
      AutoLayout      =   swLevitate1, 8, , 0, True, +1.00, 4, 1, 31, , True
      Enabled         =   True
      Height          =   31.0
      Left            =   49
      LockedInPosition=   False
      Scope           =   2
      Top             =   164
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSSwitch swBoost3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   swBoost3, 1, <Parent>, 1, False, +1.00, 4, 1, 143, , True
      AutoLayout      =   swBoost3, 7, , 0, True, +1.00, 4, 1, 51, , True
      AutoLayout      =   swBoost3, 3, swLevitate3, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   swBoost3, 8, , 0, True, +1.00, 4, 1, 31, , True
      Enabled         =   False
      Height          =   31.0
      Left            =   143
      LockedInPosition=   False
      Scope           =   2
      Top             =   58
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSSwitch swBoost2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   swBoost2, 1, <Parent>, 1, False, +1.00, 4, 1, 143, , True
      AutoLayout      =   swBoost2, 7, , 0, True, +1.00, 4, 1, 51, , True
      AutoLayout      =   swBoost2, 3, swLevitate2, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   swBoost2, 8, , 0, True, +1.00, 4, 1, 31, , True
      Enabled         =   False
      Height          =   31.0
      Left            =   143
      LockedInPosition=   False
      Scope           =   2
      Top             =   113
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSSwitch swBoost1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   swBoost1, 1, <Parent>, 1, False, +1.00, 4, 1, 143, , True
      AutoLayout      =   swBoost1, 7, , 0, True, +1.00, 4, 1, 51, , True
      AutoLayout      =   swBoost1, 3, swLevitate1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   swBoost1, 8, , 0, True, +1.00, 4, 1, 31, , True
      Enabled         =   True
      Height          =   31.0
      Left            =   143
      LockedInPosition=   False
      Scope           =   2
      Top             =   164
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSSwitch swForce3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   swForce3, 1, <Parent>, 1, False, +1.00, 4, 1, 238, , True
      AutoLayout      =   swForce3, 7, , 0, True, +1.00, 4, 1, 51, , True
      AutoLayout      =   swForce3, 3, swBoost3, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   swForce3, 8, , 0, True, +1.00, 4, 1, 31, , True
      Enabled         =   False
      Height          =   31.0
      Left            =   238
      LockedInPosition=   False
      Scope           =   2
      Top             =   58
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSSwitch swForce2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   swForce2, 1, <Parent>, 1, False, +1.00, 4, 1, 238, , True
      AutoLayout      =   swForce2, 7, , 0, True, +1.00, 4, 1, 51, , True
      AutoLayout      =   swForce2, 4, Label5, 4, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   swForce2, 8, , 0, True, +1.00, 4, 1, 31, , True
      Enabled         =   False
      Height          =   31.0
      Left            =   238
      LockedInPosition=   False
      Scope           =   2
      Top             =   112
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSSwitch swForce1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   swForce1, 1, <Parent>, 1, False, +1.00, 4, 1, 238, , True
      AutoLayout      =   swForce1, 7, , 0, True, +1.00, 4, 1, 51, , True
      AutoLayout      =   swForce1, 3, swBoost1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   swForce1, 8, , 0, True, +1.00, 4, 1, 31, , True
      Enabled         =   True
      Height          =   31.0
      Left            =   238
      LockedInPosition=   False
      Scope           =   2
      Top             =   164
      Value           =   False
      Visible         =   True
      Width           =   51.0
   End
   Begin iOSLabel Label4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label4, 1, Label1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label4, 2, swLevitate1, 1, False, +1.00, 4, 1, -*kStdControlGapH, , True
      AutoLayout      =   Label4, 3, swForce3, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label4, 8, , 0, False, +1.00, 4, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   0
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "3"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      Top             =   58
      Visible         =   True
      Width           =   41.0
   End
   Begin iOSLabel Label5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label5, 1, Label4, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label5, 7, , 0, False, +1.00, 4, 1, 41, , True
      AutoLayout      =   Label5, 3, <Parent>, 3, False, +1.00, 4, 1, 113, , True
      AutoLayout      =   Label5, 8, , 0, False, +1.00, 4, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   0
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "2"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      Top             =   113
      Visible         =   True
      Width           =   41.0
   End
   Begin iOSLabel Label6
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label6, 1, Label5, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label6, 7, , 0, False, +1.00, 4, 1, 41, , True
      AutoLayout      =   Label6, 3, swForce1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label6, 8, , 0, False, +1.00, 4, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   0
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "1"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      Top             =   164
      Visible         =   True
      Width           =   41.0
   End
   Begin iOSButton btnLevitateUsed
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnLevitateUsed, 1, <Parent>, 1, False, +1.00, 4, 1, 38, , True
      AutoLayout      =   btnLevitateUsed, 2, swLevitate1, 2, False, +1.00, 4, 1, 11, , True
      AutoLayout      =   btnLevitateUsed, 3, <Parent>, 3, False, +1.00, 4, 1, 246, , True
      AutoLayout      =   btnLevitateUsed, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Activated"
      Enabled         =   True
      Height          =   30.0
      Left            =   38
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   246
      Visible         =   True
      Width           =   73.0
   End
   Begin iOSButton btnBoostUsed
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnBoostUsed, 7, , 0, False, +1.00, 4, 1, 73, , True
      AutoLayout      =   btnBoostUsed, 2, Label3, 1, False, +1.00, 4, 1, -*kStdControlGapH, , True
      AutoLayout      =   btnBoostUsed, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btnBoostUsed, 3, , 0, False, +1.00, 4, 1, 246, , True
      Caption         =   "Activated"
      Enabled         =   True
      Height          =   30.0
      Left            =   135
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   246
      Visible         =   True
      Width           =   73.0
   End
   Begin iOSButton btnForceUsed
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnForceUsed, 7, , 0, False, +1.00, 4, 1, 73, , True
      AutoLayout      =   btnForceUsed, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   btnForceUsed, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btnForceUsed, 3, , 0, False, +1.00, 4, 1, 246, , True
      Caption         =   "Activated"
      Enabled         =   True
      Height          =   30.0
      Left            =   227
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   246
      Visible         =   True
      Width           =   73.0
   End
   Begin iOSLabel lblLevitateTime
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblLevitateTime, 1, btnLevitateUsed, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblLevitateTime, 2, btnLevitateUsed, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblLevitateTime, 3, btnForceUsed, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   lblLevitateTime, 8, , 0, False, +1.00, 4, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   38
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "-"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      Top             =   284
      Visible         =   True
      Width           =   73.0
   End
   Begin iOSLabel lblBoostTime
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblBoostTime, 1, btnBoostUsed, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblBoostTime, 7, , 0, False, +1.00, 4, 1, 73, , True
      AutoLayout      =   lblBoostTime, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   lblBoostTime, 3, , 0, False, +1.00, 4, 1, 284, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   135
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "-"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      Top             =   284
      Visible         =   True
      Width           =   73.0
   End
   Begin iOSLabel lblForceTime
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblForceTime, 1, btnForceUsed, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblForceTime, 7, , 0, False, +1.00, 4, 1, 73, , True
      AutoLayout      =   lblForceTime, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   lblForceTime, 3, , 0, False, +1.00, 4, 1, 284, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   227
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "-"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      Top             =   284
      Visible         =   True
      Width           =   73.0
   End
   Begin iOSLabel lblBoostCount
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblBoostCount, 1, lblBoostTime, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblBoostCount, 7, , 0, False, +1.00, 4, 1, 73, , True
      AutoLayout      =   lblBoostCount, 11, lblForceCount, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblBoostCount, 8, , 0, False, +1.00, 4, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   135
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "-"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      Top             =   203
      Visible         =   True
      Width           =   73.0
   End
   Begin iOSLabel lblForceCount
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblForceCount, 1, lblForceTime, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblForceCount, 7, , 0, False, +1.00, 4, 1, 73, , True
      AutoLayout      =   lblForceCount, 3, swForce1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   lblForceCount, 8, , 0, False, +1.00, 4, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   227
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "-"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      Top             =   203
      Visible         =   True
      Width           =   73.0
   End
End
#tag EndIOSContainerControl

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub LoadData()
		  oBoostOne = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "BoostOne")
		  oBoostTwo = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "BoostTwo")
		  oBoostThree = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "BoostThree")
		  oBoostUsedCount = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "BoostUsedCount")
		  oBoostUsedTime = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "BoostUsedTime")
		  
		  
		  oForceOne = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "ForceOne")
		  oForceTwo = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "ForceTwo")
		  oForceThree = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "ForceThree")
		  oForceUsedCount = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "ForceUsedCount")
		  oForceUsedTime = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "ForceUsedTime")
		  
		  
		  oLevitateOne = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "LevitateOne")
		  oLevitateTwo = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "LevitateTwo")
		  oLevitateThree = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "LevitateThree")
		  oLevitateUsedTime = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "LevitateUsedTime")
		  
		  
		  
		  swBoost1.value = cBool(oBoostOne.sValue)
		  swBoost2.value = cBool(oBoostTwo.sValue)
		  swBoost3.value = cBool(oBoostThree.sValue)
		  lblBoostTime.Text = oBoostUsedTime.sValue
		  lblBoostCount.Text = oBoostUsedCount.sValue
		  
		  swForce1.value = cBool(oForceOne.sValue)
		  swForce2.value = cBool(oForceTwo.sValue)
		  swForce3.value = cBool(oForceThree.sValue)
		  lblForceTime.Text = oForceUsedTime.sValue
		  lblForceCount.Text = oForceUsedCount.sValue
		  
		  swLevitate1.value = cBool(oLevitateOne.sValue)
		  swLevitate2.value = cBool(oLevitateTwo.sValue)
		  swLevitate3.value = cBool(oLevitateThree.sValue)
		  lblLevitateTime.Text = oLevitateUsedTime.sValue
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetGame(sMatchKey as text, sTeamNumber as text)
		  msMatchKey = sMatchKey
		  msTeamNumber = sTeamNumber
		  
		  LoadData
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateBoostSwitches()
		  swBoost2.Enabled = swBoost1.value
		  swBoost3.Enabled = swBoost2.value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateForceSwitches()
		  swForce2.Enabled = swForce1.value
		  swForce3.Enabled = swForce2.value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateLevitateSwitches()
		  swLevitate2.Enabled = swLevitate1.value
		  swLevitate3.Enabled = swLevitate2.value
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private msMatchKey As Text
	#tag EndProperty

	#tag Property, Flags = &h21
		Private msTeamNumber As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		oBoostOne As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oBoostThree As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oBoostTwo As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oBoostUsedCount As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oBoostUsedTime As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oForceOne As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oForceThree As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oForceTwo As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oForceUsedCount As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oForceUsedTime As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oLevitateOne As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oLevitateThree As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oLevitateTwo As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oLevitateUsedTime As DataFile.T_Game
	#tag EndProperty


#tag EndWindowCode

#tag Events swLevitate3
	#tag Event
		Sub ValueChanged()
		  UpdateLevitateSwitches
		  
		  oLevitateThree.sValue = Me.value.BoolToText
		  oLevitateThree.save
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events swLevitate2
	#tag Event
		Sub ValueChanged()
		  UpdateLevitateSwitches
		  
		  oLevitateTwo.sValue = Me.value.BoolToText
		  oLevitateTwo.save
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events swLevitate1
	#tag Event
		Sub ValueChanged()
		  UpdateLevitateSwitches
		  
		  oLevitateOne.sValue = Me.value.BoolToText
		  oLevitateOne.save
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events swBoost3
	#tag Event
		Sub ValueChanged()
		  UpdateBoostSwitches
		  
		  oBoostThree.sValue = Me.value.BoolToText
		  oBoostThree.save
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events swBoost2
	#tag Event
		Sub ValueChanged()
		  UpdateBoostSwitches
		  
		  oBoostTwo.sValue = Me.value.BoolToText
		  oBoostTwo.save
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events swBoost1
	#tag Event
		Sub ValueChanged()
		  UpdateBoostSwitches
		  
		  oBoostOne.sValue = Me.value.BoolToText
		  oBoostOne.save
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events swForce3
	#tag Event
		Sub ValueChanged()
		  UpdateForceSwitches
		  
		  oForceThree.sValue = Me.value.BoolToText
		  oForceThree.save
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events swForce2
	#tag Event
		Sub ValueChanged()
		  UpdateForceSwitches
		  
		  oForceTwo.sValue = Me.value.BoolToText
		  oForceTwo.save
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events swForce1
	#tag Event
		Sub ValueChanged()
		  UpdateForceSwitches
		  
		  oForceOne.sValue = Me.value.BoolToText
		  oForceOne.save
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnLevitateUsed
	#tag Event
		Sub Action()
		  Dim icnt As Integer
		  
		  If swLevitate1.value Then
		    iCnt = iCnt + 1
		  End
		  
		  If swLevitate2.value Then
		    iCnt = iCnt + 1
		  End
		  
		  If swLevitate3.value Then
		    iCnt = iCnt + 1
		  End
		  
		  If iCnt = 0 Then 
		    Return
		  End
		  
		  lblLevitateTime.Text = iCurrentGameSeconds.ToText
		  
		  oLevitateUsedTime.sValue = lblForceTime.Text
		  oLevitateUsedTime.save
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnBoostUsed
	#tag Event
		Sub Action()
		  Dim icnt As Integer
		  
		  If swBoost1.value Then
		    iCnt = iCnt + 1
		  End
		  
		  If swBoost2.value Then
		    iCnt = iCnt + 1
		  End
		  
		  If swBoost3.value Then
		    iCnt = iCnt + 1
		  End
		  
		  If iCnt = 0 Then 
		    Return
		  End
		  
		  lblBoostCount.Text = iCnt.ToText
		  lblBoostTime.Text = iCurrentGameSeconds.ToText
		  
		  oBoostUsedCount.svalue = lblBoostCount.Text
		  oBoostUsedCount.save
		  
		  oBoostUsedTime.sValue = lblBoostTime.Text
		  oBoostUsedTime.save
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnForceUsed
	#tag Event
		Sub Action()
		  Dim icnt As Integer
		  
		  If swForce1.value Then
		    iCnt = iCnt + 1
		  End
		  
		  If swForce2.value Then
		    iCnt = iCnt + 1
		  End
		  
		  If swForce3.value Then
		    iCnt = iCnt + 1
		  End
		  
		  If iCnt = 0 Then 
		    Return
		  End
		  
		  lblForceCount.Text = iCnt.ToText
		  lblForceTime.Text = iCurrentGameSeconds.ToText
		  
		  oForceUsedCount.svalue = lblForceCount.Text
		  oForceUsedCount.save
		  
		  oForceUsedTime.sValue = lblForceTime.Text
		  oForceUsedTime.save
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="AccessibilityHint"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AccessibilityLabel"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		InitialValue="480"
		Type="Double"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
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
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		InitialValue="320"
		Type="Double"
	#tag EndViewProperty
#tag EndViewBehavior
