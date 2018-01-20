#tag Class
Protected Class BKS_Thread
Inherits Thread
	#tag Event
		Sub Run()
		  PushEvent "Start"
		  
		  try
		    RaiseEvent Run
		  catch
		    PushEvent "Killed"
		  end
		  
		  PushEvent "Finished"
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1000
		Sub Constructor()
		  mLock = New CriticalSection
		  mTimer = new Timer
		  AddHandler mTimer.action, WeakAddressOf DispatchEvents
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DispatchEvents(sender as timer)
		  While True
		    Dim sEvent as string
		    dim dUI as dictionary
		    
		    mLock.Enter
		    
		    If arsEvents.UBound >= 0 Then
		      sEvent = arsEvents( 0 )
		      arsEvents.Remove( 0 )
		      RaiseEvent HandleEvent sEvent
		    End If
		    
		    If arUIUpdates.Ubound >= 0 then
		      dUI = arUIUpdates(0)
		      arUIUpdates.Remove 0
		      RaiseEvent UIUpdate dUI
		    end
		    
		    if arsEvents.Ubound = -1 and arUIUpdates.Ubound = -1 then
		      mLock.Leave
		      exit
		    end
		    
		    mLock.Leave
		    
		    
		  Wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PushEvent(sEvent as String)
		  mLock.Enter
		  
		  arsEvents.Append sEvent
		  
		  mTimer.Period = 0
		  mTimer.Mode = Timer.ModeSingle
		  
		  mLock.Leave
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PushUIUpdate(d as dictionary)
		  mLock.Enter
		  
		  arUIUpdates.Append d
		  
		  mTimer.Period = 0
		  mTimer.Mode = Timer.ModeSingle
		  
		  mLock.Leave
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateUI(d as dictionary)
		  PushUIUpdate d
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event HandleEvent(sEvent As String)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Run()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event UIUpdate(d as Dictionary)
	#tag EndHook


	#tag Property, Flags = &h21
		Private arsEvents() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private arUIUpdates() As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLock As CriticalSection
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTimer As Timer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Priority"
			Visible=true
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StackSize"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
