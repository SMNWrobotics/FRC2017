#tag IOSView
Begin iosView vwTeleop
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "Telop"
   Top             =   0
   Begin iOSSegmentedControl SegmentedControl1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SegmentedControl1, 8, , 0, True, +1.00, 4, 1, 29, , True
      AutoLayout      =   SegmentedControl1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   SegmentedControl1, 2, <Parent>, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   SegmentedControl1, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      Segments        =   "Cubes\n\nTrue\rPowerups\n\nFalse\rMisc\n\nFalse"
      Top             =   65
      Value           =   0
      Visible         =   True
      Width           =   320.0
   End
   Begin ccCubes ccCubes1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ccCubes1, 4, BottomLayoutGuide, 3, False, +1.00, 4, 1, -40, , True
      AutoLayout      =   ccCubes1, 1, SegmentedControl1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ccCubes1, 2, SegmentedControl1, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ccCubes1, 3, SegmentedControl1, 4, False, +1.00, 4, 1, 0, , True
      bDestination    =   False
      Height          =   346.0
      iSeconds        =   0
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      Top             =   94
      Visible         =   True
      Width           =   320.0
   End
   Begin ccPowerup ccPowerup1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ccPowerup1, 4, ccCubes1, 4, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ccPowerup1, 1, ccCubes1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ccPowerup1, 3, ccCubes1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ccPowerup1, 7, ccCubes1, 7, False, +1.00, 4, 1, 0, , True
      Height          =   346.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      Top             =   94
      Visible         =   True
      Width           =   320.0
   End
   Begin ccMisc ccMisc1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ccMisc1, 4, ccCubes1, 4, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ccMisc1, 1, ccCubes1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ccMisc1, 3, ccCubes1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ccMisc1, 7, ccCubes1, 7, False, +1.00, 4, 1, 0, , True
      Height          =   346.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      Top             =   94
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSToolButton Button1
      Caption         =   "Untitled"
      Enabled         =   True
      Height          =   22
      Image           =   "0"
      Image           =   "0"
      Left            =   8
      LockedInPosition=   False
      Scope           =   0
      Top             =   446
      Type            =   "5"
      Width           =   182.0
   End
   Begin iOSToolButton Button2
      Caption         =   "Match Complete"
      Enabled         =   True
      Height          =   22
      Image           =   "0"
      Image           =   "0"
      Left            =   270
      LockedInPosition=   False
      Scope           =   0
      Top             =   446
      Type            =   "1003"
      Width           =   113.0
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

	#tag Event
		Sub ToolbarPressed(button As iOSToolButton)
		  App.CurrentScreen.Content = app.oOldContent
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub SetBackcolor(newColor as color)
		  ' ' ObjC Declare to get a ref to a class by its name
		  ' Declare Function objc_getClass Lib "/usr/lib/libobjc.dylib" (aClassName As CString) As Ptr
		  ' ' Here is the corresponding Xojo call
		  ' Dim theUIColorClassRef As Ptr =  objc_getClass("UIColor")
		  ' 
		  ' ' UIKit Declare to create a color object
		  ' Declare Function decl_GetColorWithRGBA Lib "UIKit" selector "colorWithRed:green:blue:alpha:" (UIColorClassRef As Ptr, red As Single, green As Single, blue As Single, alpha As Single) As Ptr
		  ' 
		  ' ' Here is the corresponding Xojo call, where we create a flashy green color
		  ' Dim r As Integer = newColor.red
		  ' Dim g As Integer = newColor.Green
		  ' Dim b As Integer  = newColor.Blue
		  ' Dim myUIColorObject As ptr = decl_GetColorWithRGBA(theUIColorClassRef, (r/255.0), (g/255.0), (b/255.0), 1.0)
		  ' 
		  ' ' UIKit Declare to get a reference to a View from its ViewController
		  ' Declare Function decl_GetView Lib "UIKit" selector "view" (aUIViewController As Ptr) As Ptr
		  ' 
		  ' ' Here is the corresponding Xojo call (View.Self returns a ViewController)
		  ' Dim myViewPtr As Ptr = decl_GetView(Self.Handle)
		  ' 
		  ' ' UIKit Declare to set the backgound color of a View
		  ' Declare Sub decl_SetBackgroundColor Lib "UIKit" selector "setBackgroundColor:" (aUIView As Ptr, aUIColor As Ptr)
		  ' ' Here is the corresponding Xojo call
		  ' decl_SetBackgroundColor(myViewPtr, myUIColorObject)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetGame(sMatchKey as text, sTeamNumber as text, sAlliance as text)
		  m_sMatchKey = sMatchKey
		  m_sTeamNumber = sTeamNumber
		  
		  ccCubes1.SetGame(m_sMatchKey, m_sTeamNumber)
		  ccPowerup1.SetGame(m_sMatchKey, m_sTeamNumber)
		  ccMisc1.SetGame(m_sMatchKey, m_sTeamNumber)
		  ccMisc1.oParent = Self
		  
		  If sAlliance = "Red" Then
		    SetBackcolor &cFDCED0
		  Else
		    SetBackcolor &cD0D6FE
		  End
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private m_sMatchKey As text
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_sTeamNumber As Text
	#tag EndProperty


#tag EndWindowCode

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
