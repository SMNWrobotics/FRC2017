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
      AutoLayout      =   ImageView1, 3, <Parent>, 3, False, +1.00, 1, 1, 155, 
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
      AutoLayout      =   btnTakeImage, 1, ImageView1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   btnTakeImage, 7, , 0, False, +1.00, 1, 1, 110, 
      AutoLayout      =   btnTakeImage, 3, lblVariableName, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   btnTakeImage, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Choose Image"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   111
      Visible         =   True
      Width           =   110.0
   End
   Begin Extensions.Camera oCamera
      editedImage     =   ""
      Height          =   32
      Height          =   32
      Left            =   60
      Left            =   60
      LockedInPosition=   False
      originalImage   =   ""
      PanelIndex      =   -1
      Parent          =   ""
      Scope           =   1
      SourceType      =   "1"
      Top             =   60
      Top             =   60
      Width           =   32
      Width           =   32
   End
   Begin iOSButton btnSaveImage
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnSaveImage, 2, ImageView1, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   btnSaveImage, 7, , 0, False, +1.00, 1, 1, 68, 
      AutoLayout      =   btnSaveImage, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   btnSaveImage, 11, btnTakeImage, 11, False, +1.00, 1, 1, 0, 
      Caption         =   "Save"
      Enabled         =   True
      Height          =   30.0
      Left            =   232
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   111
      Visible         =   True
      Width           =   68.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Constructor(oDesign as DataFile.T_Design)
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  m_oDesign = oDesign
		  
		  lblVariableName.text = m_oDesign.sVariable
		  
		  if m_oDesign.sValue <> "" then
		    dim sText as Text = m_oDesign.sValue 
		    
		    dim mb as xojo.Core.MemoryBlock = M_Text.DecodeBase64(sText)
		    
		    pic = iOSImage.FromData(mb)
		    
		    ImageView1.Image = pic
		    imageview1.Invalidate
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  if pic = nil then
		    msgbox "Can't Save", "No image to save."
		    return
		  end
		  
		  dim mb as xojo.Core.MemoryBlock = pic.ToData("public.png")
		  
		  dim sEncode as text = M_Text.EncodeBase64(mb)
		  
		  m_oDesign.sValue = sEncode
		  m_oDesign.save
		  
		  self.close
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		m_oDesign As DataFile.T_Design
	#tag EndProperty

	#tag Property, Flags = &h0
		pic As iOSImage
	#tag EndProperty


#tag EndWindowCode

#tag Events btnTakeImage
	#tag Event
		Sub Action()
		  oCamera.show(Self)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events oCamera
	#tag Event
		Sub PictureTaken()
		  pic = me.originalImage
		  ImageView1.image = pic
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSaveImage
	#tag Event
		Sub Action()
		  Save
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
		Name="pic"
		Group="Behavior"
		Type="iOSImage"
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
