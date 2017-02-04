#tag Module
Protected Module UIKitFramework
	#tag Method, Flags = &h0, Description = 5969656C64732074696D65206261636B20746F20796F757220617070207768656E20696E206C6F6F70732E
		Sub DoEvents(Milliseconds as double)
		  dim now as new AppleDate
		  AppleRunLoop.CurrentRunLoop.RunMode(AppleRunLoop.kNSRunLoopCommonModes, now.addtimeinterval(Milliseconds/1000))
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getadjustsFontSizeToFitWidth Lib UIKitLibName Selector "adjustsFontSizeToFitWidth" (id as ptr) As boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getalpha Lib UIKitLibName Selector "alpha" (id as ptr) As CGFLoat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getappearance Lib UIKitLibName Selector "appearance" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getappearanceForTraitCollection Lib UIKitLibName Selector "appearanceForTraitCollection:" (id as ptr, trait as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getattributedText Lib UIKitLibName Selector "attributedText" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbackgroundColor Lib UIKitLibName Selector "backgroundColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbackgroundView Lib UIKitLibName Selector "backgroundView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbottomAnchor Lib uikitlibname Selector "bottomAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function getbounds(id as ptr) As FoundationFramework.NSRect
		  
		  declare function bounds lib UIKitLibname selector "bounds" (id as ptr)  as FoundationFramework.NSRect
		  return bounds (id)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcenter Lib UIKitLibName Selector "center" (id as ptr) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcenterXAnchor Lib uikitlibname Selector "centerXAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcenterYAnchor Lib uikitlibname Selector "centerYAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getclearsContextBeforeDrawing Lib UIKitLibName Selector "clearsContextBeforeDrawing" (id as ptr) As boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getclipsToBounds Lib UIKitLibName Selector "clipsToBounds" (id as ptr) As boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function getContents(id as ptr) As Ptr
		  declare function contents lib UIKitLibname selector "contents" (id as Ptr) as ptr
		  return contents(id)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontentView Lib UIKitLibName Selector "contentView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdetailTextLabel Lib UIKitLibName Selector "detailTextLabel" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getEditing Lib UIKitLibName Selector "isEditing" (id as ptr) As boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function getEnabled(id as ptr) As Boolean
		  Declare function enabled lib UIKitLibname selector "isEnabled" (id as ptr) as Boolean
		  return enabled (id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfirstBaselineAnchor Lib uikitlibname Selector "firstBaselineAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfont Lib UIKItLibName Selector "font" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getForce Lib uikitlibname Selector "force" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function getFrame(id as ptr) As FoundationFramework.NSRect
		  declare function getframe lib UIKitLibname selector "frame" (id as Ptr)  as FoundationFramework.NSRect
		  return getframe (id)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getgestureRecognizers Lib UIKitLibName Selector "gestureRecognizers" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getheightAnchor Lib uikitlibname Selector "heightAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethidden Lib UIKitLibName Selector "isHidden" (id as ptr) As boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getIdentifier Lib UIKItLibName Selector "identifier" (id as ptr) As cfstringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlastBaselineAnchor Lib uikitlibname Selector "lastBaselineAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getleadingAnchor Lib uikitlibname Selector "leadingAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getleftAnchor Lib uikitlibname Selector "leftAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getlocationInView Lib uikitlibname Selector "locationInView:" (id as ptr, view as Ptr) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmiterLimit Lib uikitlibname Selector "miterLimit" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function getOpaque(id as ptr) As Boolean
		  declare function opaque lib UIKitLibname selector "isOpaque" (id as ptr) as Boolean
		  return opaque (id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getowningView Lib uikitlibname Selector "owningView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getplaceholder Lib UIKItLibName Selector "placeholder" (id as ptr) As cfstringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getpreciseLocationInView Lib uikitlibname Selector "preciseLocationInView:" (id as ptr, view as Ptr) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getprecisePreviousLocationInView Lib uikitlibname Selector "precisePreviousLocationInView:" (id as ptr, view as Ptr) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getpreviousLocationInView Lib uikitlibname Selector "previousLocationInView:" (id as ptr, view as Ptr) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getreuseIdentifier Lib UIKitLibName Selector "reuseIdentifier" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrightAnchor Lib uikitlibname Selector "rightAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getScale Lib UIKItLibName Selector "scale" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getseparatorInset Lib UIKitLibName Selector "separatorInset" (id as ptr) As UIEdgeInsets
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsizeThatFits Lib UIKitLibName Selector "sizeThatFits:" (id as ptr, value as FoundationFrameWork . NSSize) As FoundationFrameWork.NSsize
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getText Lib UIKItLibName Selector "text" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getTextAlignment Lib UIKItLibName Selector "textAlignment" (id as ptr) As AppleTextfield.NSTextAlignment
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettextColor Lib UIKitLibName Selector "textColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettextLabel Lib UIKitLibName Selector "textLabel" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getTimeStamp Lib UIKitLibName Selector "timestamp" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettintColor Lib UIKitLibName Selector "tintColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getTitle Lib UIKItLibName Selector "title" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettopAnchor Lib uikitlibname Selector "topAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettrailingAnchor Lib uikitlibname Selector "trailingAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettransform Lib UIKitLibName Selector "transform" (id as ptr) As CGAffineTransform
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getView Lib UIKItLibName Selector "view" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getwidthAnchor Lib uikitlibname Selector "widthAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getWindow Lib UIKItLibName Selector "window" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function initWithFrame Lib UIKitLibname Selector "initWithFrame:" (id as ptr, frame as FoundationFrameWork . NSRect) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub prepareForReuse Lib UIKitLibName Selector "prepareForReuse" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setadjustsFontSizeToFitWidth Lib UIKitLibName Selector "setAdjustsFontSizeToFitWidth:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setAlpha Lib UIKItLibName Selector "setAlpha:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setattributedText Lib uikitlibname Selector "setAttributedText:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setbackgroundColor Lib UIKitLibName Selector "setBackgroundColor:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setbackgroundView Lib UIKitLibName Selector "setBackgroundView:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Sub setBounds(id as ptr, value as FoundationFramework.NSRect)
		  declare sub setbounds lib UIKitLibname selector "setBounds:" (id as ptr, value  as FoundationFramework.NSRect)
		  setBounds id, value
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setCenter Lib UIKItLibName Selector "setCenter:" (id as ptr, value as FoundationFrameWork . NSPoint)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setclearsContextBeforeDrawing Lib UIKitLibName Selector "setClearsContextBeforeDrawing:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setclipsToBounds Lib UIKitLibName Selector "setClipsToBounds:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Sub setContents(id as ptr, value as ptr)
		  declare Sub setcontents lib UIKitLibname selector "setContents:" (id as Ptr, value as ptr)
		  setcontents (id, value)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setEditing Lib UIKitLibName Selector "setEditing:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Sub SetEnabled(id as ptr, value as Boolean)
		  Declare Sub setEnabled lib UIKitLibname selector "setEnabled:" (id as ptr, value as Boolean)
		  setenabled (id, value)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfont Lib UIKitLibName Selector "setFont:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Sub setFrame(id as ptr, value as FoundationFramework.NSRect)
		  declare sub setFrame lib UIKitLibname selector "setFrame:" (id as Ptr, value  as FoundationFramework.NSRect)
		  setFrame id, value
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setgestureRecognizers Lib UIKitLibName Selector "setGestureRecognizers:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setHidden Lib UIKitLibName Selector "setHidden:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setIdentifier Lib UIKItLibName Selector "setIdentifier:" (id as ptr, value as cfstringref)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setmiterLimit Lib UIKItLibName Selector "setMiterLimit:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Sub setOpaque(id as ptr, value as boolean)
		  declare sub setOpaque lib UIKitLibname selector "setOpaque:" (id as ptr, value as Boolean)
		  setOpaque id, value
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setowningView Lib uikitlibname Selector "setOwningView:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setplaceholder Lib UIKItLibName Selector "setPlaceholder:" (id as ptr, value as cfstringref)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setScale Lib UIKItLibName Selector "setScale:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setseparatorInset Lib UIKitLibName Selector "setSeparatorInset:" (id as ptr, value as UIEdgeInsets)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub settext Lib UIKItLibName Selector "setText:" (id as ptr, value as cfstringref)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setTextAlignment Lib UIKItLibName Selector "setTextAlignment:" (id as ptr, value as AppleTextfield . NSTextAlignment)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub settextColor Lib UIKitLibName Selector "setTextColor:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub settintColor Lib UIKitLibName Selector "setTintColor:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setTitle Lib UIKitLibName Selector "setTitle:" (id as ptr, value as cfstringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub settransform Lib UIKitLibName Selector "setTransform:" (id as ptr, value as CGAffineTransform)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub sizeToFit Lib UIKitLibName Selector "sizeToFit" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function UIGraphicsGetCurrentContext Lib UIKItLibName () As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5969656C6473206120766572792073686F727420616D6F756E74206F662074696D65206261636B20746F20796F757220617070207768656E20696E206C6F6F70732C20696465616C20666F722072656672657368696E6720746865204755492E
		Sub UpdateUI()
		  AppleRunLoop.CurrentRunLoop.RunMode(AppleRunLoop.kNSDefaultRunLoopMode, new AppleDate)
		  
		End Sub
	#tag EndMethod


	#tag Constant, Name = UIKitLibName, Type = Text, Dynamic = False, Default = \"UIKit.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = UIKitPath, Type = Text, Dynamic = False, Default = \"com.apple.UIKit", Scope = Public
	#tag EndConstant


	#tag Structure, Name = UIEdgeInsets, Flags = &h0
		Top as CGFloat
		  Left As CGFloat
		  Bottom As CGFloat
		Right As CGFloat
	#tag EndStructure

	#tag Structure, Name = UIOffset, Flags = &h0
		Horizontal as cgfloat
		Vertical As cgfloat
	#tag EndStructure


	#tag Enum, Name = UIAlertActionStyle, Type = Integer, Flags = &h0
		Default
		  Cancel
		Destructive
	#tag EndEnum

	#tag Enum, Name = UIBarMetrics, Type = Integer, Flags = &h0
		Default
		  Compact
		  DefaultPrompt = 101
		CompactPrompt
	#tag EndEnum

	#tag Enum, Name = UIBarPosition, Type = Integer, Flags = &h0
		Any
		  Bottom
		  Top
		TopAttached
	#tag EndEnum

	#tag Enum, Name = UIBarStyle, Type = Integer, Flags = &h0
		Default
		Black
	#tag EndEnum

	#tag Enum, Name = UIGestureRecognizerState, Type = Integer, Flags = &h0
		Possible
		  Began
		  Changed
		  Ended
		  Cancelled
		Failed
	#tag EndEnum

	#tag Enum, Name = UIImageOrientation, Type = Integer, Flags = &h0
		Normal
		  HalfwayRound
		  QuarterRight
		  QuarerLeft
		  UpMirrored
		  DownMirrored
		  LeftMirrored
		RightMirrored
	#tag EndEnum

	#tag Enum, Name = UIImageRenderingMode, Type = Integer, Flags = &h0
		Automatic
		  AlwaysOriginal
		AlwaysTemplate
	#tag EndEnum

	#tag Enum, Name = UIImageResizingMode, Type = Integer, Flags = &h0
		Tiled
		Stretched
	#tag EndEnum

	#tag Enum, Name = UIModalTransitionStyle, Type = Integer, Flags = &h0
		CoverVertical
		  FlipHorizontal
		  CrossDissolve
		PartialCurl
	#tag EndEnum

	#tag Enum, Name = UIScrollViewIndicatorStyle, Type = Integer, Flags = &h0
		Default
		  Black
		White
	#tag EndEnum

	#tag Enum, Name = UIScrollViewKeyboardDismissMode, Type = Integer, Flags = &h0
		None
		  OnDrag
		Interactive
	#tag EndEnum

	#tag Enum, Name = UISearchBarIcon, Type = Integer, Flags = &h0
		Search
		  Clear
		  Bookmark
		ResultsList
	#tag EndEnum

	#tag Enum, Name = UISearchBarStyle, Type = UInteger, Flags = &h0
		Default
		  Prominent
		Minimal
	#tag EndEnum

	#tag Enum, Name = UIUserInterfaceIdiom, Type = Integer, Flags = &h0
		Unspecified = -1
		  iPhone
		iPad
	#tag EndEnum

	#tag Enum, Name = UIUserInterfaceSizeClass, Type = Integer, Flags = &h0
		Unspecified
		  Compact
		Regular
	#tag EndEnum

	#tag Enum, Name = UIVIewAnimationCurve, Type = Integer, Flags = &h0
		EaseInEaseOut
		  EaseIn
		  EaseOut
		  Linear
		Keyboard = 7
	#tag EndEnum

	#tag Enum, Name = UIVIewAnimationTransition, Type = Integer, Flags = &h0
		None
		  FlipFromLeft
		  FlipFromRight
		  CurlUp
		  CurlDown
		  CrossDissolve
		  FlipFromTop
		FlipFromBottom
	#tag EndEnum

	#tag Enum, Name = UIViewContentMode, Flags = &h0
		ScaleToFill
		  ScaleAspectFit
		  ScaleAspectFill
		  Redraw
		  Center
		  Top
		  Bottom
		  Left
		  Right
		  TopLeft
		  TopRight
		  BottomLeft
		BottomRight
	#tag EndEnum


	#tag ViewBehavior
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
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
