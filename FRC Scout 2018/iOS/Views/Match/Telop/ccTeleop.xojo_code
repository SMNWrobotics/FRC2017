#tag IOSContainerControl
Begin iOSContainerControl ccTeleop
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Height          =   480.0
   Left            =   0.0
   Top             =   0.0
   Visible         =   True
   Width           =   320.0
End
#tag EndIOSContainerControl

#tag WindowCode
	#tag Event
		Sub Open()
		  vwParent = GetView
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub LoadList()
		  'tbl.RemoveAll
		  'tbl.EstimatedRowHeight = -1
		  '
		  '
		  'tbl.AddSection ""
		  '
		  '
		  'dim oCell as iOSTableCellData
		  '
		  'oCell = tbl.CreateCell
		  'oCell.Text = "Gears"
		  ''oCell.tag = new vwTeleopGears(m_sMatchKey, m_sTeamNumber)
		  'oCell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		  'tbl.AddRow(0, oCell)
		  '
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetGame(sMatchKey as text, sTeamNumber as text, sAlliance as text)
		  m_sMatchKey = sMatchKey
		  m_sTeamNumber = sTeamNumber
		  LoadLIst
		  
		  ' ' ObjC Declare to get a ref to a class by its name
		  ' Declare Function objc_getClass Lib "/usr/lib/libobjc.dylib" (aClassName As CString) As Ptr
		  ' ' Here is the corresponding Xojo call
		  ' Dim theUIColorClassRef As Ptr =  objc_getClass("UIColor")
		  ' 
		  ' ' UIKit Declare to create a color object
		  ' Declare Function decl_GetColorWithRGBA Lib "UIKit" selector "colorWithRed:green:blue:alpha:" (UIColorClassRef As Ptr, red As Single, green As Single, blue As Single, alpha As Single) As Ptr
		  ' ' Here is the corresponding Xojo call, where we create a flashy green color
		  ' Dim myUIColorObject As ptr 
		  ' If sAlliance = "Blue" Then
		  ' myUIColorObject= decl_GetColorWithRGBA(theUIColorClassRef, (206 / 255), (207/ 255), (254 / 255), 1.0)
		  ' Else
		  ' myUIColorObject= decl_GetColorWithRGBA(theUIColorClassRef, (253 / 255), (185/ 255), (181 / 255), 1.0)
		  ' End
		  ' ' UIKit Declare to get a reference to a View from its ViewController
		  ' Declare Function decl_GetView Lib "UIKit" selector "view" (aUIViewController As Ptr) As Ptr
		  ' ' Here is the corresponding Xojo call (View.Self returns a ViewController)
		  ' Dim myViewPtr As Ptr = decl_GetView(Self.Handle)
		  ' 
		  ' ' UIKit Declare to set the backgound color of a View
		  ' Declare Sub decl_SetBackgroundColor Lib "UIKit" selector "setBackgroundColor:" (aUIView As Ptr, aUIColor As Ptr)
		  ' ' Here is the corresponding Xojo call
		  ' decl_SetBackgroundColor(myViewPtr, myUIColorObject)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event GetView() As iOSView
	#tag EndHook


	#tag Property, Flags = &h0
		m_sMatchKey As text
	#tag EndProperty

	#tag Property, Flags = &h0
		m_sTeamNumber As text
	#tag EndProperty

	#tag Property, Flags = &h0
		vwParent As iOSView
	#tag EndProperty


#tag EndWindowCode

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
