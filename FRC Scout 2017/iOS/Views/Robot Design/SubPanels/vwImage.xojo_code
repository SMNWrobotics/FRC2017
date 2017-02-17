#tag IOSView
Begin iosView vwImage
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "Image Value"
   Top             =   0
   Begin iOSLabel lblVariableName
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblVariableName, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   lblVariableName, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   lblVariableName, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   lblVariableName, 8, , 0, False, +1.00, 1, 1, 30, 
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   73
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSImageView ImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ImageView1, 1, lblVariableName, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ImageView1, 2, lblVariableName, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   ImageView1, 3, , 0, False, +1.00, 1, 1, 155, 
      AutoLayout      =   ImageView1, 8, , 0, False, +1.00, 1, 1, 305, 
      ContentMode     =   "0"
      Height          =   305.0
      Image           =   "0"
      Image           =   "0"
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   155
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSButton btnTakeImage
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnTakeImage, 9, <Parent>, 9, False, +1.00, 1, 1, 0, 
      AutoLayout      =   btnTakeImage, 7, , 0, False, +1.00, 1, 1, 133, 
      AutoLayout      =   btnTakeImage, 3, lblVariableName, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   btnTakeImage, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Choose Image"
      Enabled         =   True
      Height          =   30.0
      Left            =   93
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   111
      Visible         =   True
      Width           =   133.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Constructor(oDesign as DataFile.T_Design)
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  m_oDesign = oDesign
		  
		  oCamera = new Extensions.Camera
		  AddHandler oCamera.PictureTaken, AddressOf PictureTaken
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PictureTaken(oInstance as Extensions.Camera)
		  pic = oInstance.originalImage
		  
		  ImageView1.Image = pic
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		m_oDesign As DataFile.T_Design
	#tag EndProperty

	#tag Property, Flags = &h21
		Private oCamera As Extensions.Camera
	#tag EndProperty

	#tag Property, Flags = &h0
		pic As iOSImage
	#tag EndProperty


#tag EndWindowCode

#tag Events btnTakeImage
	#tag Event
		Sub Action()
		  oCamera.show(GetView)
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
