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
      AutoLayout      =   lblVariableName, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   lblVariableName, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   lblVariableName, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   lblVariableName, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
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
      AutoLayout      =   ImageView1, 4, BottomLayoutGuide, 3, False, +1.00, 4, 1, -50, , True
      AutoLayout      =   ImageView1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ImageView1, 2, <Parent>, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ImageView1, 3, btnTakeImage, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      ContentMode     =   "1"
      Height          =   281.0
      Image           =   "0"
      Image           =   "0"
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      Top             =   149
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSButton_BKS btnTakeImage
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnTakeImage, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btnTakeImage, 1, ImageView1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btnTakeImage, 3, lblVariableName, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btnTakeImage, 7, , 0, False, +1.00, 4, 1, 110, , True
      BackColor       =   &cCCCCCC00
      Caption         =   "Choose Image"
      Enabled         =   True
      Height          =   30.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   "0"
      Top             =   111
      Visible         =   True
      Width           =   110.0
   End
   Begin iOSButton_BKS btnSaveImage
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnSaveImage, 11, btnTakeImage, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btnSaveImage, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btnSaveImage, 2, ImageView1, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btnSaveImage, 7, , 0, False, +1.00, 4, 1, 68, , True
      BackColor       =   &cCCCCCC00
      Caption         =   "Save"
      Enabled         =   True
      Height          =   30.0
      Left            =   252
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   "0"
      Top             =   111
      Visible         =   True
      Width           =   68.0
   End
   Begin iOSPicturePicker PicturePicker1
      Editable        =   False
      Left            =   0
      LockedInPosition=   False
      PanelIndex      =   -1
      Parent          =   ""
      Scope           =   2
      Source          =   "0"
      Top             =   0
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
		    
		    mpic = iOSImage.FromData(mb)
		    
		    ImageView1.Image = mpic
		    imageview1.Invalidate
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  If mpic = Nil Then
		    msgbox "Can't Save", "No image to save."
		    Return
		  end
		  
		  Dim mb As xojo.Core.MemoryBlock = mpic.ToDataMB
		  
		  dim sEncode as text = M_Text.EncodeBase64(mb)
		  
		  m_oDesign.sValue = sEncode
		  m_oDesign.save
		  
		  self.close
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		mPic As iOSImage
	#tag EndProperty

	#tag Property, Flags = &h0
		m_oDesign As DataFile.T_Design
	#tag EndProperty


#tag EndWindowCode

#tag Events btnTakeImage
	#tag Event
		Sub Action()
		  #if DebugBuild then return
		  
		  PicturePicker1.Show(self)
		  
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
#tag Events PicturePicker1
	#tag Event
		Sub Selected(pic as iOSImage)
		  mPic = pic
		  ImageView1.image = mPic
		  
		  
		  Dim mb As xojo.Core.MemoryBlock = mpic.ToDataMB
		  
		  dim sEncode as text = M_Text.EncodeBase64(mb)
		  
		  m_oDesign.sValue = sEncode
		  m_oDesign.save
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Cancelled()
		  
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
		Name="mPic"
		Group="Behavior"
		Type="iOSImage"
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
