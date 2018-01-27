#tag IOSView
Begin iosView vwGameScouting
   BackButtonTitle =   "Match"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSSegmentedControl seg
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   seg, 8, , 0, True, +1.00, 1, 1, 29, , True
      AutoLayout      =   seg, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   seg, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   seg, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Segments        =   "Autonomous\n\nTrue\rTeleop\n\nFalse"
      Top             =   73
      Value           =   0
      Visible         =   True
      Width           =   280.0
   End
   Begin ccAutonomous ccAutonomous1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ccAutonomous1, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, -40, , True
      AutoLayout      =   ccAutonomous1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   ccAutonomous1, 2, <Parent>, 2, False, +1.00, 1, 1, -0, , True
      AutoLayout      =   ccAutonomous1, 3, seg, 4, False, +1.00, 1, 1, *kStdControlGapV, , True
      Height          =   330.0
      iRow            =   0
      Left            =   0
      LockedInPosition=   False
      m_sMatchKey     =   ""
      m_sTeamNumber   =   ""
      Scope           =   0
      Top             =   110
      Visible         =   True
      Width           =   320.0
      Begin ccTeleop ccTeleop1
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         AutoLayout      =   ccTeleop1, 4, ccAutonomous1, 4, False, +1.00, 1, 1, -*kStdControlGapV, , True
         AutoLayout      =   ccTeleop1, 1, ccAutonomous1, 1, False, +1.00, 1, 1, 0, , True
         AutoLayout      =   ccTeleop1, 2, ccAutonomous1, 2, False, +1.00, 1, 1, 0, , True
         AutoLayout      =   ccTeleop1, 3, seg, 4, False, +1.00, 1, 1, *kStdControlGapV, , True
         Height          =   322.0
         Left            =   0
         LockedInPosition=   False
         m_sMatchKey     =   ""
         m_sTeamNumber   =   ""
         PanelIndex      =   0
         Parent          =   "ccAutonomous1"
         Scope           =   0
         Top             =   110
         Visible         =   True
         Width           =   320.0
      End
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Constructor(sMatchKey as text, sTeamNumber as text, sAlliance as text)
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  m_sMatchKey = sMatchKey
		  m_sTeamNumber = sTeamNumber
		  
		  seg.value = 0
		  
		  ccAutonomous1.Visible = true
		  ccAutonomous1.SetGame(m_sMatchKey, m_sTeamNumber, sAlliance)
		  ccTeleop1.visible = false
		  ccTeleop1.setGame(m_sMatchKey, m_sTeamNumber, sAlliance)
		  
		  Self.title = "Match Team: " + m_sTeamNumber + " {" + sAlliance + "}"
		  
		  ' Declare Function NSClassFromString Lib "Foundation" (className As CFStringRef) As Ptr
		  ' Declare Function colorWithRGBA Lib "UIKit" Selector "colorWithRed:green:blue:alpha:" ( UIColorClassRef As Ptr, red As CGFloat, green As CGFloat, blue As CGFloat, alpha As CGFloat) As Ptr
		  ' Declare Function view Lib "UIKit" Selector "view" (UIViewController As Ptr) As Ptr
		  ' Declare Sub setBackgroundColor Lib "UIKit" Selector "setBackgroundColor:" (UIView As Ptr, UIColor As Ptr)
		  ' 
		  ' Dim UIColorClassPtr As Ptr =  NSClassFromString("UIColor")
		  ' Dim colorPtr As ptr 
		  ' If sAlliance = "Blue" Then
		  ' colorptr = colorWithRGBA(UIColorClassPtr, (206 / 255), (207/ 255), (254 / 255), 1)
		  ' Else
		  ' colorptr = colorWithRGBA(UIColorClassPtr, (253 / 255), (185/ 255), (181 / 255), 1)
		  ' end
		  ' Dim viewPtr As Ptr = Me.Handle
		  ' setBackgroundColor(viewPtr, colorPtr)
		  
		  ' ObjC Declare to get a ref to a class by its name
		  Declare Function objc_getClass Lib "/usr/lib/libobjc.dylib" (aClassName As CString) As Ptr
		  ' Here is the corresponding Xojo call
		  Dim theUIColorClassRef As Ptr =  objc_getClass("UIColor")
		  
		  ' UIKit Declare to create a color object
		  Declare Function decl_GetColorWithRGBA Lib "UIKit" selector "colorWithRed:green:blue:alpha:" (UIColorClassRef As Ptr, red As Single, green As Single, blue As Single, alpha As Single) As Ptr
		  ' Here is the corresponding Xojo call, where we create a flashy green color
		  Dim myUIColorObject As ptr 
		  If sAlliance = "Blue" Then
		    myUIColorObject= decl_GetColorWithRGBA(theUIColorClassRef, (206 / 255), (207/ 255), (254 / 255), 1.0)
		  Else
		    myUIColorObject= decl_GetColorWithRGBA(theUIColorClassRef, (253 / 255), (185/ 255), (181 / 255), 1.0)
		  end
		  ' UIKit Declare to get a reference to a View from its ViewController
		  Declare Function decl_GetView Lib "UIKit" selector "view" (aUIViewController As Ptr) As Ptr
		  ' Here is the corresponding Xojo call (View.Self returns a ViewController)
		  Dim myViewPtr As Ptr = decl_GetView(Self.Handle)
		  
		  ' UIKit Declare to set the backgound color of a View
		  Declare Sub decl_SetBackgroundColor Lib "UIKit" selector "setBackgroundColor:" (aUIView As Ptr, aUIColor As Ptr)
		  ' Here is the corresponding Xojo call
		  decl_SetBackgroundColor(myViewPtr, myUIColorObject)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		m_sMatchKey As text
	#tag EndProperty

	#tag Property, Flags = &h0
		m_sTeamNumber As text
	#tag EndProperty


#tag EndWindowCode

#tag Events seg
	#tag Event
		Sub ValueChanged()
		  if me.value = 0 then
		    ccAutonomous1.Visible = true
		    ccTeleop1.visible = false
		  else
		    ccAutonomous1.Visible = false
		    ccTeleop1.visible = true
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ccAutonomous1
	#tag Event
		Function GetView() As iOSView
		  return self
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events ccTeleop1
	#tag Event
		Function GetView() As iOSView
		  return self
		End Function
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
		Name="m_sMatchKey"
		Group="Behavior"
		Type="text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="m_sTeamNumber"
		Group="Behavior"
		Type="text"
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
