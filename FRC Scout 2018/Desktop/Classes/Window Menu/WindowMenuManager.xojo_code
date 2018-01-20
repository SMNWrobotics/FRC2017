#tag Module
Protected Module WindowMenuManager
	#tag Method, Flags = &h1
		Protected Sub Add(pWindow as Window)
		  dim item as WindowMenuItem
		  item = New WindowMenuItem(pWindow)
		  mCount = mCount + 1
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub BringAllToFront()
		  dim i as Integer
		  for i = WindowCount - 1 DownTo 0
		    Window(WindowCount - 1).Show
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Count() As Integer
		  return mCount
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function FindBestScreen(pWindow as Window) As Integer
		  // Joe Strout
		  // Figure out which screen our window is mostly on.
		  
		  // Easy case: only 1 monitor!
		  if ScreenCount = 1 then return 0
		  
		  // Harder case: test each one.
		  // Take the one with the greatest part of our title bar.
		  Dim i, bestScreen, amount, bestAmount As Integer
		  for i = ScreenCount - 1 DownTo 0
		    amount = 0
		    if Screen(i).top <= pWindow.top and Screen(i).top + Screen(i).height > pWindow.top then
		      amount = Min(Screen(i).left + Screen(i).Width, pWindow.left + pWindow.width) - Max(Screen(i).left, pWindow.left)
		      if amount > bestAmount then
		        bestAmount = amount
		        bestScreen = i
		      end if
		    end if
		  next
		  
		  return bestScreen
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Minimize(pWindow as Window)
		  
		  pWindow.Minimize
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Zoom(pWindow as WindowMenuWindow)
		  #if TargetMacOS then
		    dim index as Integer
		    index = FindBestScreen(pWindow)
		    
		    
		    if pWindow.IsZoomed then
		      pWindow.Left = pWindow.oldLeft
		      pWindow.Top = pWindow.oldTop
		      pWindow.Width = pWindow.oldWidth
		      pWindow.Height = pWindow.oldHeight
		    else
		      pWindow.OldLeft = pWindow.left
		      pWindow.OldTop = pWindow.top
		      pWindow.OldWidth = pWindow.Width
		      pWindow.OldHeight = pWindow.Height
		      pWindow.Left = Screen(index).AvailableLeft
		      pWindow.Top = Screen(index).AvailableTop + 22 // title bar height
		      pWindow.Width = Screen(index).AvailableWidth
		      pWindow.Height = Screen(index).AvailableHeight - 22
		    end if
		    pWindow.IsZoomed = not pWindow.IsZoomed
		    
		  #elseif TargetWin32 then
		    
		    Declare Function ShowWindow Lib "user32.dll" (wnd As Integer, nCmdShow As Integer) As Integer
		    Call ShowWindow(pWindow.WinHWND, 3)
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mCount As Integer
	#tag EndProperty


	#tag Constant, Name = Carbon, Type = String, Dynamic = False, Default = \"", Scope = Protected
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Carbon"
		#Tag Instance, Platform = Mac Classic, Language = Default, Definition  = \"InterfaceLib"
		#Tag Instance, Platform = Mac Carbon PEF, Language = Default, Definition  = \"CarbonLib"
	#tag EndConstant


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
