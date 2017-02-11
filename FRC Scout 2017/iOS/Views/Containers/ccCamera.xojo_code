#tag IOSContainerControl
Begin iOSContainerControl ccCamera
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Height          =   208.0
   Left            =   0.0
   Top             =   0.0
   Visible         =   True
   Width           =   235.0
   Begin iOSCanvas Canvas1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Canvas1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   Canvas1, 7, , 0, False, +1.00, 1, 1, 195, 
      AutoLayout      =   Canvas1, 3, <Parent>, 3, False, +1.00, 1, 1, 58, 
      AutoLayout      =   Canvas1, 8, , 0, False, +1.00, 1, 1, 130, 
      Height          =   130.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      Top             =   58
      Visible         =   True
      Width           =   195.0
   End
   Begin iOSButton btnTakePicture
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnTakePicture, 1, Canvas1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   btnTakePicture, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   btnTakePicture, 3, <Parent>, 3, False, +1.00, 1, 1, 10, 
      AutoLayout      =   btnTakePicture, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Take Picture"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   10
      Visible         =   True
      Width           =   100.0
   End
End
#tag EndIOSContainerControl

#tag WindowCode
	#tag Event
		Sub Close()
		  #if DebugBuild = false
		    RemoveHandler oCamera.PictureTaken, AddressOf PictureTaken
		  #Endif
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  #if DebugBuild = false
		    oCamera = new Extensions.Camera
		    AddHandler oCamera.PictureTaken, AddressOf PictureTaken
		  #Endif
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub PictureTaken(oInstance as Extensions.Camera)
		  pic = oInstance.originalImage
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event GetView() As iOSView
	#tag EndHook


	#tag Property, Flags = &h21
		Private oCamera As Extensions.Camera
	#tag EndProperty

	#tag Property, Flags = &h21
		Private pic As iOSImage
	#tag EndProperty


#tag EndWindowCode

#tag Events btnTakePicture
	#tag Event
		Sub Action()
		  #if DebugBuild
		    msgbox "Camera only works on real device."
		    return
		  #Endif
		  
		  oCamera.show(GetView)
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
