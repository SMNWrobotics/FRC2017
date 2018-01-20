#tag Module
Module Win32DeclareLibrary
	#tag Method, Flags = &h1
		Protected Function ApplicationPriority() As Integer
		  #if TargetWin32
		    Declare Function OpenProcess Lib "Kernel32" ( access as Integer, inherit as Boolean, procID as Integer ) as Integer
		    Declare Function GetPriorityClass Lib "Kernel32" ( handle as Integer ) as Integer
		    Declare Sub CloseHandle Lib "Kernel32" ( handle as Integer )
		    
		    ' Get a handle to the current process
		    dim processHandle as Integer
		    const PROCESS_QUERY_INFORMATION = &h400
		    processHandle = OpenProcess( PROCESS_QUERY_INFORMATION, false, GetCurrentProcessID )
		    
		    ' Get the priority
		    dim ret as Integer
		    ret = GetPriorityClass( processHandle )
		    
		    ' And close the handle to the module
		    CloseHandle( processHandle )
		    
		    return ret
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ApplicationPriority(assigns level as Integer)
		  #if TargetWin32
		    Declare Function OpenProcess Lib "Kernel32" ( access as Integer, inherit as Boolean, procID as Integer ) as Integer
		    Declare Sub SetPriorityClass Lib "Kernel32" ( handle as Integer, priority as Integer )
		    Declare Sub CloseHandle Lib "Kernel32" ( handle as Integer )
		    
		    ' Get a handle to the current process
		    dim processHandle as Integer
		    const PROCESS_SET_INFORMATION = &h200
		    processHandle = OpenProcess( PROCESS_SET_INFORMATION, false, GetCurrentProcessID )
		    
		    ' And set the priority
		    SetPriorityClass( processHandle, level )
		    
		    ' And close the handle to the module
		    CloseHandle( processHandle )
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BringToFrontCallback(hwnd as Integer, cookie as Integer) As Boolean
		  #if TargetWin32
		    Declare Sub BringWindowToTop Lib "User32" ( hwnd as Integer )
		    
		    BringWindowToTop( hwnd )
		    
		    Return true
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CompressData(data as MemoryBlock) As MemoryBlock
		  #if TargetWin32
		    Soft Declare Sub RtlCompressBuffer Lib "ntdll" ( format as Integer, data as Ptr, length as Integer, _
		    destBuffer as Ptr, destLength as Integer, unknown as Integer, ByRef destSize as Integer, _
		    workspaceBuffer as Ptr )
		    
		    Soft Declare Sub RtlGetCompressionWorkSpaceSize Lib "ntdll" ( format as Integer, _
		    ByRef bufferSize as Integer, ByRef unknown as Integer )
		    
		    Const COMPRESSION_FORMAT_LZNT1 = &h2
		    dim neededSize, pageSize as Integer
		    pageSize = &h4000
		    RtlGetCompressionWorkSpaceSize( COMPRESSION_FORMAT_LZNT1, neededSize, pageSize )
		    
		    dim workspace as new MemoryBlock( neededSize )
		    dim ret as new MemoryBlock( data.Size )
		    neededSize = data.Size
		    RtlCompressBuffer( COMPRESSION_FORMAT_LZNT1, data, data.Size, ret, 0, _
		    &h4000, neededSize, workspace )
		    
		    ret = new MemoryBlock( neededSize )
		    RtlCompressBuffer( COMPRESSION_FORMAT_LZNT1, data, data.Size, ret, ret.Size, _
		    &h4000, neededSize, workspace )
		    
		    ret.Size = neededSize
		    
		    return ret
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CountWindowsWithPartialTitle(partial as String) As Integer
		  #if TargetWin32
		    // Return number of matching windows
		    Soft Declare Function FindWindowA Lib "user32.dll" ( lpClassName As integer, lpWindowName As integer ) as integer
		    Soft Declare Function FindWindowW Lib "user32.dll" ( lpClassName As integer, lpWindowName As integer ) as integer
		    Declare Function GetWindow Lib "user32" ( hWnd As integer, wCmd As integer ) As integer
		    Soft Declare Function GetWindowTextA Lib "user32" ( hWnd As integer, lpString As ptr, cch As integer ) As integer
		    Soft Declare Function GetWindowTextW Lib "user32" ( hWnd As integer, lpString As ptr, cch As integer ) As integer
		    
		    Const GW_HWNDNEXT = 2
		    
		    dim ret,wincount as integer
		    dim mb as new MemoryBlock( 255 )
		    dim unicodeSavvy as Boolean = System.IsFunctionAvailable( "FindWindowW", "User32" )
		    
		    if unicodeSavvy then
		      ret = FindWindowW( 0, 0 )
		    else
		      ret = FindWindowA( 0, 0 )
		    end if
		    
		    while ret > 0
		      if unicodeSavvy then
		        if GetWindowTextW( ret, mb, mb.size ) > 0 then
		          if InStr( mb.WString( 0 ), partial ) > 0 then wincount = wincount + 1
		        end if
		      else
		        if GetWindowTextA( ret, mb, mb.size ) > 0 then
		          if InStr( mb.CString( 0 ), partial ) > 0 then wincount = wincount + 1
		        end if
		      end if
		      
		      ret = GetWindow( ret, GW_HWNDNEXT )
		    wend
		    
		    return wincount
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CPUUsage() As Double
		  Soft Declare Sub NtQuerySystemInformation Lib "ntdll" ( infoClass as Integer, data as Ptr, length as Integer, ByRef retLength as Integer )
		  
		  if not System.IsFunctionAvailable( "NtQuerySystemInformation", "ntdll" ) then return -1.0
		  
		  Const SYSTEM_PERFORMANCEINFORMATION = 2
		  Const SYSTEM_TIMEINFORMATION = 3
		  
		  Dim retStructSize as Integer
		  
		  // First, get the system time information
		  Dim sysTimeInfo as new MemoryBlock( 32 )
		  NtQuerySystemInformation( SYSTEM_TIMEINFORMATION, sysTimeInfo, sysTimeInfo.Size, retStructSize )
		  
		  // Then get the system's idle time information
		  Dim sysIdleTimeInfo as new MemoryBlock( 312 )
		  NtQuerySystemInformation( SYSTEM_PERFORMANCEINFORMATION, sysIdleTimeInfo, sysIdleTimeInfo.Size, retStructSize )
		  
		  // Current value = New value - Old value
		  Static sOldIdleTime, sOldSystemTime as Double
		  
		  // Note, we can just pass this MemoryBlock in because the
		  // LongLongToDouble API assumes that the long long is the
		  // first 8 bytes of the block, which it just so happens to be
		  // in the sysIdleTimeInfo structure.
		  Dim dbIdleTime as Double = LongLongToDouble( sysIdleTimeInfo ) - sOldIdleTime
		  
		  // We're not so lucky here -- we need to get the long long into
		  // a new memory block
		  Dim tempMb as new MemoryBlock( 8 )
		  tempMb.Long( 0 ) = sysTimeInfo.Long( 8 )
		  tempMb.Long( 4 ) = sysTimeInfo.Long( 12 )
		  Dim dbSystemTime as Double = LongLongToDouble( tempMb ) - sOldSystemTime
		  
		  Dim retVal as Double
		  
		  // Divide the idle by the system time
		  if dbSystemTime <> 0 then
		    retVal = dbIdleTime / dbSystemTime
		  else
		    retVal = dbIdleTime
		  end if
		  
		  // Get the number of processors, but cache the information
		  // since it's not going to change while the application is running.
		  Static sNumProcessors as Integer
		  if sNumProcessors = 0 then sNumProcessors = NumberOfProcessors
		  
		  // Now get the true CPU usage time
		  retVal = 100 - retVal * 100 / sNumProcessors + .5
		  
		  // Then store the values for the next query
		  sOldIdleTime = LongLongToDouble( sysIdleTimeInfo )
		  sOldSystemTime = LongLongToDouble( tempMb )
		  
		  return retVal / 100
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CreateGuid() As MemoryBlock
		  #if TargetWin32
		    Declare Sub CoCreateGuid Lib "Ole32" ( guid as Ptr )
		    
		    // Allocate a structure large enough for the GUID
		    Dim mb as new MemoryBlock( 20 )
		    // And create it
		    CoCreateGuid( mb )
		    
		    return mb
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CreateGuidString() As String
		  #if TargetWin32
		    // Create the GUID and stuff it into a memory block
		    Dim mb as MemoryBlock
		    mb = CreateGuid
		    
		    if mb = nil then return ""
		    
		    // Now make the memory block into a string
		    Declare Function StringFromGUID2 Lib "Ole32" ( guid as Ptr, theStr as Ptr, size as Integer ) as Integer
		    
		    dim numCharacters as Integer
		    dim retStr as new MemoryBlock( 1024 )
		    numCharacters = StringFromGUID2( mb, retStr, retStr.Size )
		    
		    // And return the UTF-16 string.  Remember that we were returned
		    // the number of characters, which is 2 * the number of bytes we want
		    // to pull from the memory block
		    return DefineEncoding( retStr.StringValue( 0, numCharacters * 2 ), Encodings.UTF16 )
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DecompressData(data as MemoryBlock, bufferSize as Integer = 10485760) As MemoryBlock
		  #if TargetWin32
		    Soft Declare Sub RtlDecompressBuffer Lib "ntdll" ( format as Integer, destBuffer as Ptr, _
		    destLength as Integer, sourceBuffer as Ptr, sourceLength as Integer, ByRef _
		    destSizeNeeded as Integer )
		    
		    Const COMPRESSION_FORMAT_LZNT1 = &h2
		    dim neededSize as Integer
		    dim ret as new MemoryBlock( bufferSize )
		    
		    RtlDecompressBuffer( COMPRESSION_FORMAT_LZNT1, ret, ret.Size, data, data.Size, neededSize )
		    
		    ret.Size = neededSize
		    
		    return ret
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub DecryptNTFSFile(item as FolderItem)
		  if item = nil then return
		  
		  #if TargetWin32
		    Soft Declare Sub DecryptFileA Lib "AdvApi32" ( file as CString, zero as Integer )
		    Soft Declare Sub DecryptFileW Lib "AdvApi32" ( file as WString, zero as Integer )
		    
		    if System.IsFunctionAvailable( "DecryptFileW", "AdvApi32" ) then
		      DecryptFileW( item.AbsolutePath, 0 )
		    else
		      DecryptFileA( item.AbsolutePath, 0 )
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub DialogUnitsToPixels(g as Graphics, ByRef top as Integer, ByRef left as Integer, ByRef width as Integer, ByRef height as Integer)
		  #if TargetWin32
		    // Get the HDC for the window's Graphics context
		    dim handle as Integer = g.Handle( Graphics.HandleTypeHDC )
		    
		    // Now we can figure out the default width and height
		    Declare Sub GetTextExtentPoint32A Lib "GDI32" ( hdc as Integer, _
		    str as CString, num as Integer, size as Ptr )
		    Declare Sub GetTextMetricsA Lib "GDI32" ( hdc as Integer, metrics as Ptr )
		    Declare Function GetStockObject Lib "GDI32" ( index as Integer ) as Integer
		    Declare Function SelectObject Lib "GDI32" ( hdc as Integer, obj as Integer ) as Integer
		    
		    // We need to do our calculations based on the
		    // default GUI font, not the system font.  This is
		    // because the system font is that old fixed-width
		    // terrible thing from Windows 1.0
		    Const DEFAULT_GUI_FONT = 17
		    dim oldFont as Integer = SelectObject( handle, GetStockObject( DEFAULT_GUI_FONT ) )
		    
		    // Get the text extent and metrics
		    dim size as new MemoryBlock( 8 )
		    dim metrics as new MemoryBlock( 56 )
		    dim str as String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
		    GetTextExtentPoint32A( handle, str, Len( str ), size )
		    GetTextMetricsA( handle, metrics )
		    
		    // Restore the old font
		    call SelectObject( handle, oldFont )
		    
		    // Now we know the height and the width.  But we need
		    // the width of the average character.
		    dim baseUnitX, baseUnitY as Integer
		    baseUnitX = (size.Long( 0 ) / 26 + 1) / 2
		    baseUnitY = metrics.Long( 0 )
		    
		    // Now, the forumal for DLU conversion is:
		    // pixelX = (dialogunitX * baseunitX) / 4
		    // pixelY = (dialogunitY * baseunitY) / 8
		    
		    // Do the conversion
		    top = (top * baseUnitY) / 8
		    left = (left * baseUnitX) / 4
		    width = (width * baseUnitX) / 4
		    height = (height * baseUnitY) / 8
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub EmptyClipboard()
		  #if TargetWin32
		    Declare Sub EmptyClipboard Lib "User32" ()
		    Declare Sub OpenClipboard Lib "User32" (wnd as Integer )
		    Declare Sub CloseClipboard Lib "User32" ()
		    
		    OpenClipboard( 0 )
		    EmptyClipboard
		    CloseClipboard
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub EncryptNTFSFile(item as FolderItem)
		  if item = nil then return
		  
		  #if TargetWin32
		    Soft Declare Sub EncryptFileA Lib "AdvApi32" ( file as CString )
		    Soft Declare Sub EncryptFileW Lib "AdvApi32" ( file as CString )
		    
		    if System.IsFunctionAvailable( "EncryptFileW", "AdvApi32" ) then
		      EncryptFileW( item.AbsolutePath )
		    else
		      EncryptFileA( item.AbsolutePath )
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FillString(char as String, numChars as Integer) As String
		  #if TargetWin32
		    Declare Sub memset lib "msvcrt" ( dest as Ptr, char as Integer, count as Integer )
		    
		    dim mb as new MemoryBlock( LenB( char ) * numChars )
		    memset( mb, AscB( char ), numChars )
		    
		    return DefineEncoding( mb, Encoding( char ) )
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FindWindowHandleFromPartialTitle(partial as String) As Integer
		  #if TargetWin32
		    // Return number of matching windows
		    Soft Declare Function FindWindowA Lib "user32.dll" ( lpClassName As integer, lpWindowName As integer ) as integer
		    Soft Declare Function FindWindowW Lib "user32.dll" ( lpClassName As integer, lpWindowName As integer ) as integer
		    Declare Function GetWindow Lib "user32" ( hWnd As integer, wCmd As integer ) As integer
		    Soft Declare Function GetWindowTextA Lib "user32" ( hWnd As integer, lpString As ptr, cch As integer ) As integer
		    Soft Declare Function GetWindowTextW Lib "user32" ( hWnd As integer, lpString As ptr, cch As integer ) As integer
		    
		    Const GW_HWNDNEXT = 2
		    
		    dim ret,wincount as integer
		    dim mb as new MemoryBlock( 255 )
		    dim unicodeSavvy as Boolean = System.IsFunctionAvailable( "FindWindowW", "User32" )
		    
		    if unicodeSavvy then
		      ret = FindWindowW( 0, 0 )
		    else
		      ret = FindWindowA( 0, 0 )
		    end if
		    
		    while ret > 0
		      if unicodeSavvy then
		        if GetWindowTextW( ret, mb, mb.size ) > 0 then
		          if InStr( mb.WString( 0 ), partial ) > 0 then return ret
		        end if
		      else
		        if GetWindowTextA( ret, mb, mb.size ) > 0 then
		          if InStr( mb.CString( 0 ), partial ) > 0 then return ret
		        end if
		      end if
		      
		      ret = GetWindow( ret, GW_HWNDNEXT )
		    wend
		    
		    return 0
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FormatErrorMessage() As String
		  ///Gets lasterror and formats system message
		  ///if format fails, return lasterror
		  dim ret as integer
		  dim buffer as memoryBlock
		  Soft Declare Function FormatMessageA Lib "kernel32" (dwFlags As integer, lpSource As integer, dwMessageId As integer, dwLanguageId As integer, lpBuffer As ptr, nSize As integer, Arguments As integer) As integer
		  Soft Declare Function FormatMessageW Lib "kernel32" (dwFlags As integer, lpSource As integer, dwMessageId As integer, dwLanguageId As integer, lpBuffer As ptr, nSize As integer, Arguments As integer) As integer
		  
		  Const FORMAT_MESSAGE_FROM_SYSTEM = &H1000
		  
		  if System.IsFunctionAvailable( "FormatMessageW", "Kernel32" ) then
		    buffer = newmemoryblock( 2048 )
		    ret = FormatMessageW( FORMAT_MESSAGE_FROM_SYSTEM, 0, GetLastError, 0 , Buffer, Buffer.Size, 0 )
		    if ret <> 0 then
		      return Buffer.WString( 0 )
		    end if
		  else
		    buffer = newmemoryblock( 1024 )
		    ret = FormatMessageA( FORMAT_MESSAGE_FROM_SYSTEM, 0, GetLastError, 0 , Buffer, Buffer.Size, 0 )
		    if ret <> 0 then
		      return Buffer.cstring( 0 )
		    end if
		  end if
		  
		  return str( GetLastError )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub GenerateKeyDown(virtualKeyCode as Integer, extendedKey as Boolean = false)
		  #if TargetWin32
		    Declare Sub keybd_event Lib "User32" ( keyCode as Integer, scanCode as Integer, _
		    flags as Integer, extraData as Integer )
		    
		    dim flags as Integer
		    Const KEYEVENTF_EXTENDEDKEY = &h1
		    if extendedKey then
		      flags = KEYEVENTF_EXTENDEDKEY
		    end
		    
		    ' Press the key
		    keybd_event( virtualKeyCode, 0, flags, 0 )
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub GenerateKeyUp(virtualKeyCode as Integer, extendedKey as Boolean = false)
		  #if TargetWin32
		    Declare Sub keybd_event Lib "User32" ( keyCode as Integer, scanCode as Integer, _
		    flags as Integer, extraData as Integer )
		    
		    dim flags as Integer
		    Const KEYEVENTF_EXTENDEDKEY = &h1
		    if extendedKey then
		      flags = KEYEVENTF_EXTENDEDKEY
		    end
		    ' Release the key
		    Const KEYEVENTF_KEYUP = &h2
		    flags = BitwiseOr( flags, KEYEVENTF_KEYUP )
		    keybd_event( virtualKeyCode, 0, flags, 0 )
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetComputerName() As String
		  #if TargetWin32
		    Soft Declare Sub GetComputerNameA Lib "Kernel32" ( name as Ptr, ByRef size as Integer )
		    Soft Declare Sub GetComputerNameW Lib "Kernel32" ( name as Ptr, ByRef size as Integer )
		    
		    dim mb as new MemoryBlock( 1024 )
		    dim size as Integer = mb.Size()
		    
		    if System.IsFunctionAvailable( "GetComputerNameW", "Kernel32" ) then
		      GetComputerNameW( mb, size )
		      
		      return mb.WString( 0 )
		    else
		      GetComputerNameA( mb, size )
		      
		      return mb.CString( 0 )
		    end if
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetCurrentProcessID() As Integer
		  #if TargetWin32
		    Declare Function MyGetCurrentProcessId Lib "Kernel32" Alias "GetCurrentProcessId" () as Integer
		    
		    return MyGetCurrentProcessID
		  #endif
		  return 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetDefaultPrinter() As String
		  // Function GetWin32DefaultPrinter() As String
		  // DŽbut.: 31/05/2004
		  // Fin...: 01/06/2004
		  // Notes.: Return the default printer name
		  
		  #IF targetWin32
		    
		    Dim slength As Integer                             // receives length of string read from WIN.INI
		    Dim thePrinterName As String
		    dim lpSection, lpKeyName, lpDefault, lpReturnedString As MemoryBlock
		    
		    Soft Declare Function GetProfileStringA Lib "kernel32" (lpSection As Ptr, lpKeyName As Ptr, lpDefault As Ptr, lpReturnedString As Ptr, nSize As Integer) As Integer
		    Soft Declare Function GetProfileStringW Lib "kernel32" (lpSection As Ptr, lpKeyName As Ptr, lpDefault As Ptr, lpReturnedString As Ptr, nSize As Integer) As Integer
		    
		    lpSection = newMemoryBlock(8)
		    lpKeyName = newMemoryBlock(7)
		    lpDefault = newMemoryBlock(1)
		    lpReturnedString = newMemoryBlock(1024)
		    
		    if System.IsFunctionAvailable( "GetProfileStringW", "Kernel32" ) then
		      lpSection.WString(0) = "Windows"
		      lpKeyName.WString(0) = "Device"
		      lpDefault.WString(0) = ""
		      
		      slength = GetProfileStringW( lpSection, lpKeyName, lpDefault, lpReturnedString, lpReturnedString.Size )
		    else
		      lpSection.CString(0) = "Windows"
		      lpKeyName.CString(0) = "Device"
		      lpDefault.CString(0) = ""
		      
		      slength = GetProfileStringA( lpSection, lpKeyName, lpDefault, lpReturnedString, lpReturnedString.Size )
		    end if
		    
		    If slength > 0 Then
		      thePrinterName = NthField(lpReturnedString.StringValue(0, slength), ",", 1)
		    End If
		    
		    return thePrinterName
		  #ENDIF
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetDriveStrings() As String()
		  #if TargetWin32
		    Soft Declare Function GetLogicalDriveStringsA Lib "Kernel32" ( size as Integer, buffer as Ptr ) as Integer
		    Soft Declare Function GetLogicalDriveStringsW Lib "Kernel32" ( size as Integer, buffer as Ptr ) as Integer
		    
		    dim numChars as Integer
		    dim mb as new MemoryBlock( 1024 )
		    dim unicodeSavvy as Boolean = System.IsFunctionAvailable( "GetLogicalDriveStringsW", "Kernel32" )
		    
		    if unicodeSavvy then
		      numChars = GetLogicalDriveStringsW( mb.Size, mb )
		    else
		      numChars = GetLogicalDriveStringsA( mb.Size, mb )
		    end if
		    
		    dim ret(), theStr as String
		    dim i as Integer
		    while i < numChars
		      if unicodeSavvy then
		        // We multiply by two because there are two bytes
		        // per character.  i counts characters, but the MemoryBlock
		        // position is in bytes.
		        theStr = mb.WString( i * 2 )
		      else
		        theStr = mb.CString( i )
		      end if
		      
		      ret.Append( theStr )
		      i = i + Len( theStr ) + 1
		    wend
		    
		    return ret
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetDriveType(root as FolderItem) As String
		  #if TargetWin32
		    Soft Declare Function GetDriveTypeA Lib "Kernel32" ( drive as CString ) as Integer
		    Soft Declare Function GetDriveTypeW Lib "Kernel32" ( drive as WString ) as Integer
		    
		    dim rootStr as String
		    if root <> nil then
		      rootStr = root.AbsolutePath
		    end
		    
		    dim type as Integer
		    if System.IsFunctionAvailable( "GetDriveTypeW", "Kernel32" ) then
		      type = GetDriveTypeW( rootStr )
		    else
		      type = GetDriveTypeA( rootStr )
		    end if
		    
		    select case type
		    case 0
		      return "Unknown"
		    case 1
		      return "No root directory"
		    case 2
		      return "Removable drive"
		    case 3
		      return "Fixed  drive"
		    case 4
		      return "Remote drive"
		    case 5
		      return "CD-ROM drive"
		    case 6
		      return "RAM disk"
		    end
		    
		    return "Unknown"
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetFreeDiskSpaceForCaller(root as FolderItem) As Double
		  #if TargetWin32
		    Soft Declare Sub GetDiskFreeSpaceExA Lib "Kernel32" ( directory as CString, freeBytesForCaller as Ptr, _
		    totalBytes as Ptr, totalFreeBytes as Ptr )
		    Soft Declare Sub GetDiskFreeSpaceExW Lib "Kernel32" ( directory as WString, freeBytesForCaller as Ptr, _
		    totalBytes as Ptr, totalFreeBytes as Ptr )
		    
		    if root = nil then return 0.0
		    
		    Dim free, total, totalFree as MemoryBlock
		    free = new MemoryBlock( 8 )
		    total = new MemoryBlock( 8 )
		    totalFree = new MemoryBlock( 8 )
		    
		    if System.IsFunctionAvailable( "GetFreeDiskSpaceExW", "Kernel32" ) then
		      GetDiskFreeSpaceExW( root.AbsolutePath, free, total, totalFree )
		    else
		      GetDiskFreeSpaceExA( root.AbsolutePath, free, total, totalFree )
		    end if
		    
		    dim ret as Double
		    dim high as double = free.Long( 4 )
		    dim low as double = free.Long( 0 )
		    
		    if high < 0 then high = high + pow( 2, 32 )
		    if low < 0 then low= low + pow( 2, 32 )
		    
		    ret = high * Pow( 2, 32 )
		    ret = ret + low
		    
		    return ret
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetFrontmostWindowHandle() As Integer
		  #if TargetWin32
		    Declare Function GetForegroundWindow Lib "User32" () as Integer
		    
		    return GetForegroundWindow
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetHostName() As String
		  #if TargetWin32
		    Declare Function gethostname Lib "ws2_32" ( name as Ptr, size as Integer ) as Integer
		    
		    dim mb as new MemoryBlock( 1024 )
		    if gethostname( mb, mb.Size ) = 0 then
		      return mb.CString( 0 )
		    end
		    
		    return ""
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetLastError() As Integer
		  #if TargetWin32
		    Declare Function GetLastError Lib "Kernel32" () as Integer
		    
		    return GetLastError
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetLoggedInUserName() As String
		  #if TargetWin32
		    Soft Declare Sub GetUserNameA Lib "AdvApi32" ( name as Ptr, ByRef size as Integer )
		    Soft Declare Sub GetUserNameW Lib "AdvApi32" ( name as Ptr, ByRef size as Integer )
		    
		    dim mb as new MemoryBlock( 256 )
		    dim size as Integer = mb.Size()
		    
		    if System.IsFunctionAvailable( "GetUserNameW", "AdvApi32" ) then
		      GetUserNameW( mb, size )
		      
		      return mb.WString( 0 )
		    else
		      GetUserNameA( mb, size )
		      
		      return mb.CString( 0 )
		    end if
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetPrinters() As String()
		  // Function GetWin32DefaultPrinter() As String
		  // DŽbut.: 31/05/2004
		  // Fin...: 02/06/2004
		  // Notes.: Retrun the printers list, delimited by CHR(0)
		  
		  #IF targetWin32
		    Dim slength As Integer                                            // receives length of string read from WIN.INI
		    Dim strAppName, strKeyName, strDefault, thePrinterList As String
		    dim lpAppName, lpKeyName, lpDefault, lpReturnedString As MemoryBlock
		    
		    Declare Function GetProfileString Lib "kernel32" Alias "GetProfileStringA" (lpAppName As Ptr, lpKeyName As Integer, lpDefault As Ptr, lpReturnedString As Ptr, nSize As Integer) As Integer
		    
		    strAppName = "PrinterPorts"
		    'strKeyName = ""
		    strDefault = ""
		    
		    lpAppName = newMemoryBlock(lenB(strAppName)+1)
		    'lpKeyName = newMemoryBlock(lenB(strKeyName)+1)
		    lpDefault = newMemoryBlock(lenB(strDefault)+1)
		    lpReturnedString = newMemoryBlock(255)
		    
		    lpAppName.CString(0) = strAppName
		    'lpKeyName.CString(0) = strKeyName
		    lpDefault.CString(0) = strDefault
		    
		    slength = GetProfileString(lpAppName, 0, lpDefault, lpReturnedString, 255)
		    
		    If slength > 0 Then
		      thePrinterList = lpReturnedString.StringValue(0, slength)
		    End If
		    
		    dim ret() as String
		    ret = Split( thePrinterList, Chr( 0 ) )
		    
		    return ret
		    
		  #ENDIF
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetSpecialFolder(CSIDL as integer) As folderItem
		  Dim f as FolderItem
		  
		  
		  
		  #if targetWin32
		    Dim myPidl as integer
		    Dim myErr as integer
		    Dim sPath as string
		    Dim mb as MemoryBlock
		    
		    mb = new MemoryBlock(256)
		    
		    declare Function SHGetSpecialFolderLocation Lib "shell32"(hwnd as integer, nFolder as integer, byref pidl as integer) as integer
		    
		    myErr = SHGetSpecialFolderLocation(0, CSIDL,myPidl)
		    
		    
		    Soft Declare Function SHGetPathFromIDListA Lib "shell32" (pidl as integer, path as ptr) as integer
		    Soft Declare Function SHGetPathFromIDListW Lib "shell32" (pidl as integer, path as ptr) as integer
		    
		    if System.IsFunctionAvailable( "SHGetPathFromIDListW", "Shell32" ) then
		      myErr = SHGetPathFromIDListW(myPidl,mb)
		      f = GetFolderItem(mb.WString(0))
		    else
		      myErr = SHGetPathFromIDListA(myPidl,mb)
		      f = GetFolderItem(mb.CString(0))
		    end if
		    
		  #endif
		  
		  return f
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetSystemName(root as FolderItem) As String
		  #if TargetWin32
		    Soft Declare Function GetVolumeInformationA Lib "Kernel32" ( root as CString, _
		    volName as Ptr, volNameSize as Integer, ByRef volSer as Integer, ByRef _
		    maxCompLength as Integer, ByRef sysFlags as Integer, sysName as Ptr, _
		    sysNameSize as Integer ) as Boolean
		    Soft Declare Function GetVolumeInformationW Lib "Kernel32" ( root as WString, _
		    volName as Ptr, volNameSize as Integer, ByRef volSer as Integer, ByRef _
		    maxCompLength as Integer, ByRef sysFlags as Integer, sysName as Ptr, _
		    sysNameSize as Integer ) as Boolean
		    
		    
		    dim volName as new MemoryBlock( 256 )
		    dim sysName as new MemoryBlock( 256 )
		    dim volSerial, maxCompLength, sysFlags as Integer
		    
		    if System.IsFunctionAvailable( "GetVolumeInformationW", "Kernel32" ) then
		      Call GetVolumeInformationW( left( root.AbsolutePath, 3 ), volName, 256, volSerial, maxCompLength, _
		      sysFlags, sysName, 256 )
		      
		      return sysName.WString( 0 )
		    else
		      Call GetVolumeInformationA( left( root.AbsolutePath, 3 ), volName, 256, volSerial, maxCompLength, _
		      sysFlags, sysName, 256 )
		      
		      return sysName.CString( 0 )
		    end if
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetTotalBytes(root as FolderItem) As double
		  #if TargetWin32
		    Soft Declare Sub GetDiskFreeSpaceExA Lib "Kernel32" ( directory as CString, freeBytesForCaller as Ptr, _
		    totalBytes as Ptr, totalFreeBytes as Ptr )
		    Soft Declare Sub GetDiskFreeSpaceExW Lib "Kernel32" ( directory as WString, freeBytesForCaller as Ptr, _
		    totalBytes as Ptr, totalFreeBytes as Ptr )
		    
		    if root = nil then return 0.0
		    
		    Dim free, total, totalFree as MemoryBlock
		    free = new MemoryBlock( 8 )
		    total = new MemoryBlock( 8 )
		    totalFree = new MemoryBlock( 8 )
		    
		    if System.IsFunctionAvailable( "GetDiskFreeSpaceExW", "Kernel32" ) then
		      GetDiskFreeSpaceExW( root.AbsolutePath, free, total, totalFree )
		    else
		      GetDiskFreeSpaceExA( root.AbsolutePath, free, total, totalFree )
		    end if
		    
		    dim ret as Double
		    dim high as double = total.Long( 4 )
		    dim low as double = total.Long( 0 )
		    
		    if high < 0 then high = high + pow( 2, 32 )
		    if low < 0 then low= low + pow( 2, 32 )
		    
		    ret = high * Pow( 2, 32 )
		    ret = ret + low
		    
		    return ret
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetTotalFreeSpace(root as FolderItem) As double
		  #if TargetWin32
		    Soft Declare Sub GetDiskFreeSpaceExA Lib "Kernel32" ( directory as CString, freeBytesForCaller as Ptr, _
		    totalBytes as Ptr, totalFreeBytes as Ptr )
		    Soft Declare Sub GetDiskFreeSpaceExW Lib "Kernel32" ( directory as WString, freeBytesForCaller as Ptr, _
		    totalBytes as Ptr, totalFreeBytes as Ptr )
		    
		    if root = nil then return 0.0
		    
		    Dim free, total, totalFree as MemoryBlock
		    free = new MemoryBlock( 8 )
		    total = new MemoryBlock( 8 )
		    totalFree = new MemoryBlock( 8 )
		    
		    if System.IsFunctionAvailable( "GetDiskFreeSpaceExW", "Kernel32" ) then
		      GetDiskFreeSpaceExW( root.AbsolutePath, free, total, totalFree )
		    else
		      GetDiskFreeSpaceExA( root.AbsolutePath, free, total, totalFree )
		    end if
		    
		    dim ret as Double
		    dim high as double = totalFree.Long( 4 )
		    dim low as double = totalFree.Long( 0 )
		    
		    if high < 0 then high = high + pow( 2, 32 )
		    if low < 0 then low= low + pow( 2, 32 )
		    
		    ret = high * Pow( 2, 32 )
		    ret = ret + low
		    
		    return ret
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetVolumeName(root as FolderItem) As String
		  #if TargetWin32
		    Soft Declare Function GetVolumeInformationA Lib "Kernel32" ( root as CString, _
		    volName as Ptr, volNameSize as Integer, ByRef volSer as Integer, ByRef _
		    maxCompLength as Integer, ByRef sysFlags as Integer, sysName as Ptr, _
		    sysNameSize as Integer ) as Boolean
		    Soft Declare Function GetVolumeInformationW Lib "Kernel32" ( root as WString, _
		    volName as Ptr, volNameSize as Integer, ByRef volSer as Integer, ByRef _
		    maxCompLength as Integer, ByRef sysFlags as Integer, sysName as Ptr, _
		    sysNameSize as Integer ) as Boolean
		    
		    
		    dim volName as new MemoryBlock( 256 )
		    dim sysName as new MemoryBlock( 256 )
		    dim volSerial, maxCompLength, sysFlags as Integer
		    
		    if System.IsFunctionAvailable( "GetVolumeInformationW", "Kernel32" ) then
		      Call GetVolumeInformationW( left( root.AbsolutePath, 3 ), volName, 256, volSerial, maxCompLength, _
		      sysFlags, sysName, 256 )
		      
		      return volName.WString( 0 )
		    else
		      Call GetVolumeInformationA( left( root.AbsolutePath, 3 ), volName, 256, volSerial, maxCompLength, _
		      sysFlags, sysName, 256 )
		      
		      return volName.CString( 0 )
		    end if
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetVolumeSerial(root as FolderItem) As String
		  #if TargetWin32
		    Soft Declare Function GetVolumeInformationA Lib "Kernel32" ( root as CString, _
		    volName as Ptr, volNameSize as Integer, ByRef volSer as Integer, ByRef _
		    maxCompLength as Integer, ByRef sysFlags as Integer, sysName as Ptr, _
		    sysNameSize as Integer ) as Boolean
		    Soft Declare Function GetVolumeInformationW Lib "Kernel32" ( root as WString, _
		    volName as Ptr, volNameSize as Integer, ByRef volSer as Integer, ByRef _
		    maxCompLength as Integer, ByRef sysFlags as Integer, sysName as Ptr, _
		    sysNameSize as Integer ) as Boolean
		    
		    
		    dim volName as new MemoryBlock( 256 )
		    dim sysName as new MemoryBlock( 256 )
		    dim volSerial, maxCompLength, sysFlags as Integer
		    
		    if System.IsFunctionAvailable( "GetVolumeInformationW", "Kernel32" ) then
		      Call GetVolumeInformationW( left( root.AbsolutePath, 3 ), volName, 256, volSerial, maxCompLength, _
		      sysFlags, sysName, 256 )
		    else
		      Call GetVolumeInformationA( left( root.AbsolutePath, 3 ), volName, 256, volSerial, maxCompLength, _
		      sysFlags, sysName, 256 )
		    end if
		    
		    dim hexStr as String = Hex( volSerial )
		    return Left( hexStr, 4 ) + "-" + Right( hexStr, 4 )
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetVolumeSerialNumber(root as FolderItem) As Integer
		  #if TargetWin32
		    Soft Declare Function GetVolumeInformationA Lib "Kernel32" ( root as CString, _
		    volName as Ptr, volNameSize as Integer, ByRef volSer as Integer, ByRef _
		    maxCompLength as Integer, ByRef sysFlags as Integer, sysName as Ptr, _
		    sysNameSize as Integer ) as Boolean
		    Soft Declare Function GetVolumeInformationW Lib "Kernel32" ( root as CString, _
		    volName as Ptr, volNameSize as Integer, ByRef volSer as Integer, ByRef _
		    maxCompLength as Integer, ByRef sysFlags as Integer, sysName as Ptr, _
		    sysNameSize as Integer ) as Boolean
		    
		    
		    dim volName as new MemoryBlock( 256 )
		    dim sysName as new MemoryBlock( 256 )
		    dim volSerial, maxCompLength, sysFlags as Integer
		    
		    if System.IsFunctionAvailable( "GetVolumeInformationW", "Kernel32" ) then
		      Call GetVolumeInformationW( left( root.AbsolutePath, 3 ), volName, 256, volSerial, maxCompLength, _
		      sysFlags, sysName, 256 )
		    else
		      Call GetVolumeInformationA( left( root.AbsolutePath, 3 ), volName, 256, volSerial, maxCompLength, _
		      sysFlags, sysName, 256 )
		    end if
		    return volSerial
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub HideWin9xProcess(procID as Integer, hide as Boolean = true)
		  #if TargetWin32
		    Declare Sub RegisterServiceProcess Lib "Kernel32" ( id as Integer, reg as Boolean )
		    
		    RegisterServiceProcess( procID, hide )
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsAlphabetic(s as String) As Boolean
		  #if TargetWin32
		    Declare Function isalpha Lib "msvcrt" ( char as Integer ) as Integer
		    
		    dim mb as MemoryBlock
		    mb = Left( s, 1 )
		    
		    try
		      return isalpha( mb.Byte( 0 ) ) <> 0
		    catch
		      return false
		    end try
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsHexDigit(s as String) As Boolean
		  #if TargetWin32
		    Declare Function isxdigit Lib "msvcrt" ( char as Integer ) as Integer
		    
		    dim mb as MemoryBlock
		    mb = Left( s, 1 )
		    
		    try
		      return isxdigit( mb.Byte( 0 ) ) <> 0
		    catch
		      return false
		    end try
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsInf(d as Double) As Boolean
		  #if TargetWin32
		    Declare Function _finite Lib "msvcrt" ( d as Double ) as Boolean
		    
		    return not _finite( d )
		  #endif
		  
		  return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsLowerCase(s as String) As Boolean
		  #if TargetWin32
		    Declare Function islower Lib "msvcrt" ( char as Integer ) as Integer
		    
		    dim mb as MemoryBlock
		    mb = Left( s, 1 )
		    
		    try
		      return islower( mb.Byte( 0 ) ) <> 0
		    catch
		      return false
		    end try
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsNaN(d as Double) As Boolean
		  #if TargetWin32
		    Declare Function _isnan Lib "msvcrt" ( d as double ) as Boolean
		    
		    return _isnan( d )
		  #endif
		  
		  return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsNumber(s as String) As Boolean
		  #if TargetWin32
		    Declare Function isdigit Lib "msvcrt" ( char as Integer ) as Integer
		    
		    dim mb as MemoryBlock
		    mb = Left( s, 1 )
		    
		    try
		      return isdigit( mb.Byte( 0 ) ) <> 0
		    catch
		      return false
		    end try
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsPlatformNT() As Boolean
		  #if TargetWin32
		    Declare Sub GetVersionExA lib "Kernel32" ( info as Ptr )
		    
		    dim info as new MemoryBlock( 148 )
		    info.Long( 0 ) = info.Size
		    
		    GetVersionExA( info )
		    dim str as String
		    
		    if info.Long( 4 ) = 4 then
		      return false
		    elseif info.Long( 4 ) = 3 then
		      return false ' who cares about NT 3?
		    elseif info.Long( 4 ) = 5 then
		      return true
		    end
		    
		    return false
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsPunctuation(s as String) As Boolean
		  #if TargetWin32
		    Declare Function ispunct Lib "msvcrt" ( char as Integer ) as Integer
		    
		    dim mb as MemoryBlock
		    mb = Left( s, 1 )
		    
		    try
		      return ispunct( mb.Byte( 0 ) ) <> 0
		    catch
		      return false
		    end try
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsUpperCase(s as String) As Boolean
		  #if TargetWin32
		    Declare Function isupper Lib "msvcrt" ( char as Integer ) as Integer
		    
		    dim mb as MemoryBlock
		    mb = Left( s, 1 )
		    
		    try
		      return isupper( mb.Byte( 0 ) ) <> 0
		    catch
		      return false
		    end try
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsWhiteSpace(s as String) As Boolean
		  #if TargetWin32
		    Declare Function isspace Lib "msvcrt" ( char as Integer ) as Integer
		    
		    dim mb as MemoryBlock
		    mb = Left( s, 1 )
		    
		    try
		      return isspace( mb.Byte( 0 ) ) <> 0
		    catch
		      return false
		    end try
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function LongLongToDouble(mb as MemoryBlock) As Double
		  dim ret as Double
		  
		  // Take the high 4 bytes and shift them
		  ret = mb.Long( 4 ) * (2 ^32)
		  
		  // Then add in the low 4 bytes
		  ret = ret + mb.Long( 0 )
		  
		  return ret
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MakeIntResource(resNum as Integer) As String
		  // Windows is stupid and wants us to typecast an integer as a string
		  dim mb as new MemoryBlock( 4 )
		  mb.LittleEndian = true
		  
		  // MAKEINTRESOURCE does this: (LPTSTR)((DWORD)((WORD) (i)))
		  
		  mb.Short( 0 ) = resNum
		  mb.Long( 0 ) = mb.Short( 0 )
		  
		  return mb.StringValue( 0, 4 )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function MapNetworkDrive(remotePath as String, localPath as String, userName as String = "", password as String = "", interactive as Boolean = true) As FolderItem
		  // We want to map the network drive the user gave us, which is in UNC format (like //10.10.10.116/foobar)
		  // and map it to the local drive they gave us (like f:).
		  
		  Soft Declare Function WNetAddConnection2A Lib "Mpr" ( netRes as Ptr, password as CString, userName as CString, flags as Integer ) as Integer
		  Soft Declare Function WNetAddConnection2W Lib "Mpr" ( netRes as Ptr, password as WString, userName as WString, flags as Integer ) as Integer
		  
		  dim unicodeSavvy as Boolean = System.IsFunctionAvailable( "WNetAddConnection2W", "Mpr" )
		  
		  Const CONNECT_INTERACTIVE = &h8
		  Const RESOURCETYPE_DISK = &h1
		  
		  // Create and set up our network resource structure
		  dim netRes as new MemoryBlock( 30 )
		  netRes.Long( 4 ) = RESOURCETYPE_DISK
		  
		  dim localName as new MemoryBlock( 1024 )
		  dim remoteName as new MemoryBlock( 1024 )
		  if unicodeSavvy then
		    localName.WString( 0 ) = localPath
		    remoteName.WString( 0 ) = remotePath
		  else
		    locaLName.CString( 0 ) = localPath
		    remoteName.CString( 0 ) = remotePath
		  end if
		  netRes.Ptr( 16 ) = localName
		  netRes.Ptr( 20 ) = remoteName
		  
		  dim flags As Integer
		  if interactive then flags = flags + CONNECT_INTERACTIVE
		  
		  // Now make the call
		  dim ret as Integer
		  
		  if unicodeSavvy then
		    ret = WNetAddConnection2W( netRes, password, userName, flags )
		  else
		    ret = WNetAddConnection2A( netRes, password, userName, flags )
		  end if
		  
		  Const NO_ERROR = 0
		  if ret = NO_ERROR then
		    return new FolderItem( localPath )
		  else
		    return nil
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function MapNetworkDriveDialog(owner as Window) As FolderItem
		  Soft Declare Function WNetConnectionDialog1W Lib "Mpr" ( dlgstruct as Ptr ) as Integer
		  Soft Declare Function WNetConnectionDialog1A Lib "Mpr" ( dlgstruct as Ptr ) as Integer
		  
		  dim dlgstruct as new MemoryBlock( 20 )
		  dim netRsrc as new MemoryBlock( 30 )
		  
		  Const RESOURCETYPE_DISK = &h1
		  
		  netRsrc.Long( 4 ) = RESOURCETYPE_DISK
		  
		  dlgStruct.Long( 0 ) = dlgstruct.Size
		  dlgStruct.Long( 4 ) = owner.WinHWND
		  dlgstruct.Ptr( 8 ) = netRsrc
		  
		  // Now make the call
		  dim ret as Integer
		  if System.IsFunctionAvailable( "WNetConnectionDialog1W", "Mpr" ) then
		    ret = WNetConnectionDialog1W( dlgstruct )
		  else
		    ret = WNetConnectionDialog1A( dlgstruct )
		  end if
		  
		  if ret = 0 then
		    // The drive letter is stored in the dlgstruct as an integer.  1 = a, 2 = b, etc
		    dim drive as String = Chr( 65 + dlgstruct.Long( 16 ) - 1 ) + ":"
		    return new FolderItem( drive )
		  else
		    return nil
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function NumberOfProcessors() As Integer
		  #if TargetWin32
		    Declare Sub GetSystemInfo Lib "Kernel32" ( info as Ptr )
		    
		    dim info as new MemoryBlock( 9 * 4 )
		    GetSystemInfo( info )
		    
		    return info.Long( 20 )
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function OSVersionString() As String
		  #if TargetWin32
		    Soft Declare Sub GetVersionExA lib "Kernel32" ( info as Ptr )
		    Soft Declare Sub GetVersionExW lib "Kernel32" ( info as Ptr )
		    
		    dim info as MemoryBlock
		    
		    if System.IsFunctionAvailable( "GetVersionExW", "Kernel32" ) then
		      info =  new MemoryBlock( 20 + (2 * 128) )
		      info.Long( 0 ) = info.Size
		      
		      GetVersionExW( info )
		    else
		      info =  new MemoryBlock( 148 )
		      info.Long( 0 ) = info.Size
		      
		      GetVersionExA( info )
		    end if
		    
		    dim str as String
		    
		    if info.Long( 4 ) = 4 then
		      if info.Long( 8 ) = 0 then
		        str = "Windows 95/NT 4.0"
		      elseif info.Long( 8 ) = 10 then
		        str = "Windows 98"
		      elseif info.Long( 8 ) = 90 then
		        str = "Windows Me"
		      end
		    elseif info.Long( 4 ) = 3 then
		      str = "Windows NT 3.51"
		    elseif info.Long( 4 ) = 5 then
		      if info.Long( 8 ) = 0 then
		        str = "Windows 2000"
		      elseif info.Long( 8 ) = 1 then
		        str = "Windows XP"
		      elseif info.Long( 8 ) = 2 then
		        str = "Windows Server 2003"
		      end
		    end
		    
		    str = str + " Build " + Str( info.Long( 12 ) )
		    
		    if System.IsFunctionAvailable( "GetVersionExW", "Kernel32" ) then
		      str = str + " " + Trim( info.WString( 20 ) )
		    else
		      str = str + " " + Trim( info.CString( 20 ) )
		    end if
		    
		    
		    return str
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Ping(addy as String) As double
		  #if TargetWin32
		    Declare Function IcmpCreateFile Lib "ICMP" ( ) as Integer
		    Declare Sub IcmpCloseHandle Lib "ICMP" ( handle as Integer )
		    Declare Function IcmpSendEcho Lib "ICMP" ( handle as Integer, address as Integer, data as Integer, _
		    size as Integer, options as Ptr, reply as Ptr, replySize as Integer, timeout as Integer ) as Integer
		    Declare Function inet_addr Lib "ws2_32" ( addr as CString ) as Integer
		    Declare Function gethostbyname Lib "ws2_32" ( addr as CString ) as Ptr
		    Declare Sub WSAStartup Lib "ws2_32" ( versRequest as Integer, data as Ptr )
		    Declare Sub WSACleanup Lib "ws2_32" ()
		    
		    ' Initialize WinSock
		    dim mb as new MemoryBlock( 256 + 128 + 8 + 4 )
		    
		    WSAStartup( &h0101, mb )
		    
		    if mb.Short( 0 ) <> &h0101 then
		      WSACleanup
		      return -1.0
		    end
		    
		    dim address as Integer
		    address = inet_addr( addy )
		    dim addrMemBlock as MemoryBlock
		    dim addrTemp as new MemoryBlock( 16 )
		    
		    if address = -1 then
		      ' we couldn't resolve the address that way, so we need to try a
		      ' different approach
		      addrMemBlock = gethostbyname( addy )
		      address = addrMemBlock.Ptr( 12 ).Ptr( 0 ).Long( 0 )
		      'addrTemp.StringValue( 0, addrTemp.Size ) = addrMemBlock.StringValue( 0, 16 )
		    end
		    
		    ' Create the ICMP handle
		    dim icmpFile as Integer = IcmpCreateFile
		    
		    ' Set up the ping structure
		    dim pingInfo as new MemoryBlock( 8 )
		    pingInfo.Byte( 0 ) = 255
		    
		    ' Send the ping
		    dim reply as new MemoryBlock( 28 )
		    dim ret as Integer
		    ret = IcmpSendEcho( icmpFile, address, 0, 0,pingInfo, reply, 28, 5000 )
		    
		    ' Clean everything up
		    WSACleanup
		    IcmpCloseHandle( icmpFile )
		    
		    ' return the proper value
		    if ret <> 0 then
		      return reply.Long( 8 )
		    else
		      return -1.0
		    end
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub PressKey(virtualKeyCode as Integer, extendedKey as Boolean = false)
		  #if TargetWin32
		    Declare Sub keybd_event Lib "User32" ( keyCode as Integer, scanCode as Integer, _
		    flags as Integer, extraData as Integer )
		    
		    dim flags as Integer
		    Const KEYEVENTF_EXTENDEDKEY = &h1
		    if extendedKey then
		      flags = KEYEVENTF_EXTENDEDKEY
		    end
		    
		    ' Press the key
		    keybd_event( virtualKeyCode, 0, flags, 0 )
		    ' Release the key
		    Const KEYEVENTF_KEYUP = &h2
		    flags = BitwiseOr( flags, KEYEVENTF_KEYUP )
		    keybd_event( virtualKeyCode, 0, flags, 0 )
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub RemoveIdleHandler()
		  ' If we don't have an idle handler, then we
		  ' can just bail out
		  if mIdleHandlerHook = 0 then return
		  
		  #if TargetWin32
		    Declare Sub UnhookWindowsHookEx Lib "User32" ( hookHandle as Integer )
		    
		    UnhookWindowsHookEx( mIdleHandlerHook )
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SelectMultipleFiles(parentWindow as Window, filterTypes() as String) As FolderItem()
		  #if TargetWin32
		    dim unicodeSavvy as Boolean = System.IsFunctionAvailable( "GetOpenFileNameW", "CommDlg32" )
		    
		    dim ofn as new MemoryBlock( 76 )
		    
		    ofn.Long( 0 ) = ofn.Size
		    if parentWindow <> nil then
		      ofn.Long( 4 ) = parentWindow.WinHWND
		    end
		    
		    dim filter as String
		    dim catFilters as String
		    dim filterPtr as MemoryBlock
		    for each filter in filterTypes
		      if unicodeSavvy then
		        catFilters = catFilters + ConvertEncoding( filter + Chr( 0 ), Encodings.UTF16 )
		      else
		        catFilters = catFilters + filter + Chr( 0 )
		      end if
		    next
		    if unicodeSavvy then
		      catFilters = catFilters + ConvertEncoding( Chr( 0 ), Encodings.UTF16 )
		    else
		      catFilters = catFilters + Chr( 0 )
		    end if
		    
		    filterPtr = catFilters
		    ofn.Ptr( 12 ) = filterPtr
		    ofn.Long( 24 ) = 1
		    
		    dim filePaths as new MemoryBlock( 4098 )
		    ofn.Ptr( 28 ) = filePaths
		    ofn.Long( 32 ) = filePaths.Size
		    
		    'dim titlePtr as new MemoryBlock( LenB( title ) + 1 )
		    'titlePtr.CString( 0 ) = title
		    'ofn.Ptr( 48 ) = titlePtr
		    
		    Const OFN_EXPLORER = &H80000
		    Const OFN_LONGNAMES = &H200000
		    Const OFN_ALLOWMULTISELECT = &H200
		    ofn.Long( 52 ) = BitWiseOr(OFN_ALLOWMULTISELECT,OFN_EXPLORER)
		    
		    Soft Declare Function GetOpenFileNameA Lib "comdlg32" (pOpenfilename As ptr) As Boolean
		    Soft Declare Function GetOpenFileNameW Lib "comdlg32" (pOpenfilename As ptr) As Boolean
		    
		    dim res as Boolean
		    dim ret( -1 ) as FolderItem
		    dim strs( -1 ) as String
		    dim i as Integer
		    dim s, filePath as String
		    dim sPtr as MemoryBlock
		    
		    if unicodeSavvy then
		      res = GetOpenFileNameW( ofn )
		    else
		      res = GetOpenFileNameA( ofn )
		    end if
		    
		    if res then
		      sPtr = ofn.Ptr( 28 )
		      s = sPtr.StringValue( 0, filePaths.Size )
		      if unicodeSavvy then
		        s = DefineEncoding( s, Encodings.UTF16 )
		      end if
		      
		      strs = Split( s, Chr( 0 ) )
		      
		      filePath = strs( 0 )
		      
		      for i = 0 to UBound( strs )
		        if strs( i ) <> "" then
		          try
		            ret.Append( new FolderItem( filePath + "\" + strs( i ) ) )
		          catch err as UnsupportedFormatException
		            // If we couldn't make a file from it, then chances are we only
		            // got one file and not multiple ones.  Try something else
		            
		            try
		              dim test as FolderItem = new FolderItem( filePath )
		              
		              // We have to make sure this isn't a directory because that's
		              // the first entry in the list if the list contains multiple items.  Goofy
		              // enough, if the list only contains one item, then the first entry is
		              // that item.
		              if not test.Directory then
		                ret.Append( test )
		              end if
		            catch err2 as UnsupportedFormatException
		              // We're really hosed now
		            end try
		          end try
		        end
		      next
		    end
		    
		    return ret
		    
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SetDefaultPrinter(strPrinterName As String) As Boolean
		  // Function SetWin32DefaultPrinter(strPrinterName As String) As Boolean
		  // DŽbut.: 31/05/2004
		  // Fin...: 31/05/2004
		  // Notes.: Set the default printer to strPrinterName
		  
		  #IF targetWin32
		    
		    Dim slength As Integer                             // receives length of string read from WIN.INI
		    Dim strBuffer, strDeviceLine As String
		    dim lpSection, lpKeyName, lpDefault, lpReturnedString, lpString As MemoryBlock
		    dim ok As Boolean
		    
		    Const HWND_BROADCAST  = &HFFFF
		    Const WM_WININICHANGE = &H1A
		    
		    Soft Declare Function GetProfileStringA Lib "kernel32" (lpSection As Ptr, lpKeyName As Ptr, lpDefault As Ptr, lpReturnedString As Ptr, nSize As Integer) As Integer
		    Soft Declare Function WriteProfileStringA Lib "kernel32" (lpSection As Ptr, lpKeyName As Ptr, lpString As Ptr) As Boolean
		    Soft Declare Function SendMessageA Lib "user32" (hwnd As Integer, wMsg As Integer, wParam As Integer, lparam As Ptr) As Boolean
		    Soft Declare Function GetProfileStringW Lib "kernel32" (lpSection As Ptr, lpKeyName As Ptr, lpDefault As Ptr, lpReturnedString As Ptr, nSize As Integer) As Integer
		    Soft Declare Function WriteProfileStringW Lib "kernel32" (lpSection As Ptr, lpKeyName As Ptr, lpString As Ptr) As Boolean
		    Soft Declare Function SendMessageW Lib "user32" (hwnd As Integer, wMsg As Integer, wParam As Integer, lparam As Ptr) As Boolean
		    
		    dim unicodeSavvy as Boolean = System.IsFunctionAvailable( "SendMessageW", "User32" )
		    
		    // Get the full device string
		    // reading PrinterPorts section from win.ini
		    // **************************
		    lpSection = newMemoryBlock( 256 )
		    lpKeyName = newMemoryBlock( 256 )
		    lpDefault = newMemoryBlock( 256 )
		    lpReturnedString = newMemoryBlock(1024)
		    
		    if unicodeSavvy then
		      lpSection.WString(0) = "PrinterPorts"
		      lpKeyName.WString(0) = strPrinterName
		      lpDefault.WString(0) = ""
		      
		      slength = GetProfileStringW(lpSection, lpKeyName, lpDefault, lpReturnedString, 1024)
		    else
		      lpSection.CString(0) = "PrinterPorts"
		      lpKeyName.CString(0) = strPrinterName
		      lpDefault.CString(0) = ""
		      
		      slength = GetProfileStringA(lpSection, lpKeyName, lpDefault, lpReturnedString, 1024)
		    end if
		    
		    
		    // Write out this new printer information in WIN.INI file for DEVICE item
		    // Returned string should be of the form "driver,port,timeout,timeout",
		    // i.e. "winspool,LPT1:,15,45"
		    // **********************************************************************
		    If slength > 0 Then
		      if unicodeSavvy then
		        strBuffer = lpReturnedString.StringValue( 0, slength * 2 )
		      else
		        strBuffer = lpReturnedString.StringValue(0, slength)
		      end if
		      
		      strDeviceLine = strPrinterName + "," + NthField(strBuffer, Chr(0), 1) + "," + NthField(strBuffer, Chr(0), 2)
		      
		      lpSection = newMemoryBlock( 256 )
		      lpKeyName = newMemoryBlock( 256 )
		      lpString  = newMemoryBlock( 1024 )
		      
		      if unicodeSavvy then
		        lpSection.WString(0) = "Windows"
		        lpKeyName.WString(0) = "Device"
		        lpString.WString(0)  = strDeviceLine
		        
		        ok = WriteProfileStringW(lpSection, lpKeyName, lpString)
		      else
		        lpSection.CString(0) = "Windows"
		        lpKeyName.CString(0) = "Device"
		        lpString.CString(0)  = strDeviceLine
		        
		        ok = WriteProfileStringA(lpSection, lpKeyName, lpString)
		      end if
		      
		      
		      // Notify the changes
		      // ******************
		      // Below is optional, and should be done. It updates the existing windows
		      // so the "default" printer icon changes. If you don't do the below..then
		      // you will often see more than one printer as the default! The reason *not*
		      // to do the SendMessage is that many open applications will now sense the change
		      // in printer. I vote to leave it in..but your case you might not want this.
		      
		      if ok then
		        if unicodeSavvy then
		          ok = SendMessageW(HWND_BROADCAST, WM_WININICHANGE, 0, lpSection)
		        else
		          ok = SendMessageA(HWND_BROADCAST, WM_WININICHANGE, 0, lpSection)
		        end if
		      end if
		      
		    Else
		      ok = False
		    End If
		    
		    RETURN ok
		    
		  #ENDIF
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SetScreenResolution(width as Integer, height as Integer, depth as Integer) As Integer
		  #if TargetWin32 then
		    Soft Declare Function EnumDisplaySettingsW Lib "user32" ( null as Integer, iModeNum As Integer, lpDevMode As Ptr ) As Integer
		    Soft Declare Function EnumDisplaySettingsA Lib "user32" ( null as Integer, iModeNum As Integer, lpDevMode As Ptr ) As Integer
		    
		    Soft Declare Function ChangeDisplaySettingsW Lib "user32" ( lpDevMode As Ptr,  dwFlags As Integer ) As Integer
		    Soft Declare Function ChangeDisplaySettingsA Lib "user32" ( lpDevMode As Ptr,  dwFlags As Integer ) As Integer
		    
		    Const ENUM_CURRENT_SETTINGS = -1
		    
		    Const CDS_UPDATEREGISTRY = &H1
		    Const CDS_TEST = &H2
		    Const DISP_CHANGE_SUCCESSFUL = 0
		    Const DISP_CHANGE_RESTART = 1
		    
		    // First, figure out whether we're unicode savvy or not
		    Dim unicodeSavvy as Boolean = System.IsFunctionAvailable( "EnumDisplaySettingsW", "User32" )
		    
		    // Now, allocate a DEVMODE structure and set its dmSize property
		    dim devMode as MemoryBlock
		    if unicodeSavvy then
		      devMode = new MemoryBlock( 188 )
		      devMode.Long( 68 ) = devMode.Size
		    else
		      devMode = new MemoryBlock( 124 )
		      devMode.Long( 36 ) = devMode.Size
		    end if
		    
		    dim offset as Integer = devMode.Size - 20
		    
		    dim retVal as Integer
		    if unicodeSavvy then
		      retVal = EnumDisplaySettingsW( 0, ENUM_CURRENT_SETTINGS, devMode )
		    else
		      retVal = EnumDisplaySettingsA( 0, ENUM_CURRENT_SETTINGS, devMode )
		    end if
		    
		    if retVal = 0 then return kResolutionChangeFailed
		    
		    // Make the requested changes
		    devMode.Long( offset ) = depth
		    devMode.Long( offset + 4 ) = width
		    devMode.Long( offset + 8 ) = height
		    
		    // Check to see whether we can make the change
		    if unicodeSavvy then
		      retVal = ChangeDisplaySettingsW( devMode, CDS_TEST )
		    else
		      retVal = ChangeDisplaySettingsA( devMode, CDS_TEST )
		    end if
		    
		    if retVal <> DISP_CHANGE_SUCCESSFUL then return kResolutionChangeFailed
		    
		    // We're able to make the change, so let's actually do the change
		    if unicodeSavvy then
		      retVal = ChangeDisplaySettingsW( devMode, CDS_UPDATEREGISTRY )
		    else
		      retVal = ChangeDisplaySettingsA( devMode, CDS_UPDATEREGISTRY )
		    end if
		    
		    select case retVal
		    case DISP_CHANGE_RESTART
		      return kResolutionChangeRequiresReboot
		      
		    case DISP_CHANGE_SUCCESSFUL
		      return kResolutionChangeSuccess
		      
		    else
		      return kResolutionChangeFailed
		    end select
		  #Endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Shutdown(mode as Integer) As Boolean
		  #if TargetWin32
		    Declare Function ExitWindowsEx Lib "User32" ( flags as Integer, zero as Integer ) as Boolean
		    
		    return ExitWindowsEx( mode, 0 )
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Shutdown(owner as Window)
		  // This is similar to the other shutdown with UI function, except that it doesn't
		  // tell you about the user's selection, and it shows the same dialog you woud see
		  // from going to Start->Shutdown  There's no way to figure out what the user selected
		  
		  #if TargetWin32
		    // Let's start hacking!  Load the function pointer up via an ordinal.  Note, this function is
		    // not documented by Microsoft, nor is it officially sanctioned.  We'll use it anyways because we're cool like that.
		    Soft Declare Sub ExitWindowsDialog Lib "Shell32" Alias "#60" ( owner as Integer )
		    
		    dim ownerHandle as Integer
		    if owner <> nil then ownerHandle = owner.WinHWND
		    
		    ExitWindowsDialog( ownerHandle )
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Shutdown(owner as Window, reason as String, type as Integer) As Boolean
		  #if TargetWin32
		    // Let's start hacking!  Load the function pointer up via an ordinal.  Note, this function is
		    // not documented by Microsoft, nor is it officially sanctioned.  We'll use it anyways because we're cool like that.
		    Soft Declare Function RestartDialog Lib "Shell32" Alias "#59" ( owner as Integer, reason as Ptr, flags as Integer ) as Integer
		    
		    dim ownerHandle as Integer
		    if owner <> nil then ownerHandle = owner.WinHWND
		    
		    reason = reason + EndOfLine + EndOfLine
		    
		    dim retVal as Integer
		    dim msg as MemoryBlock
		    if IsPlatformNT then
		      msg = ConvertEncoding( reason + Chr( 0 ), Encodings.UTF16 )
		    else
		      msg = ConvertEncoding( reason + Chr( 0 ), Encodings.ASCII )
		    end if
		    
		    retVal = RestartDialog( ownerHandle, msg, type )
		    
		    Const IDOK = 1
		    Const IDCANCEL = 2
		    
		    return retVal = IDOK
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SystemMasterVolume() As Integer
		  #if TargetWin32
		    Declare Function mixerOpen Lib "winmm" ( ByRef handle as Integer, id as Integer, _
		    callback as Integer, instance as Integer, open as Integer ) as Integer
		    Declare Function mixerGetNumDevs Lib "winmm" () as Integer
		    Declare Function mixerGetControlDetailsA Lib "winmm" ( handle as Integer, details as Ptr, flags as Integer ) as Integer
		    Declare Sub mixerGetLineInfoA Lib "winmm" ( handle as Integer, line as Ptr, flags as Integer )
		    Declare Sub mixerGetLineControlsA Lib "winmm" ( handle as Integer, lineCtl as Ptr, flags as Integer )
		    
		    dim i, count as Integer
		    count = mixerGetNumDevs - 1
		    
		    dim device as Integer
		    for i = 0 to count
		      if mixerOpen( device, i, 0, 0, 0 ) = 0 then
		        exit
		      end
		    next
		    
		    ' Get the line information for the Speakers
		    dim lineThinger as new MemoryBlock( 80 + 40 + 32 + 16 )
		    lineThinger.Long( 0 ) = lineThinger.Size
		    lineThinger.Long( 24 ) = 4
		    mixerGetLineInfoA( device, lineThinger, 3 )
		    
		    ' Get the volume control for the speakers
		    dim otherLineThinger as new MemoryBlock( 24 )
		    dim mixerControl as new MemoryBlock( 80 + (18 * 4))
		    otherLineThinger.Long( 0 ) = otherLineThinger.Size
		    otherLineThinger.Long( 4 ) = lineThinger.Long( 12 )
		    otherLineThinger.Long( 8 ) = &h50000000 + &h30000 + 1
		    otherLineThinger.Long( 12 ) = 1
		    otherLineThinger.Long( 16 ) = mixerControl.Size
		    otherLineThinger.Ptr( 20 ) = mixerControl
		    mixerGetLineControlsA( device, otherLineThinger, 2 )
		    
		    dim details as new MemoryBlock( 24 )
		    dim vals as new MemoryBlock( 4 )
		    
		    details.Long( 0 ) = details.Size
		    details.Long( 4 ) = mixerControl.Long( 4 )
		    details.Long( 8 ) = 1
		    details.Long( 16 ) = 4
		    details.Ptr( 20 ) = vals
		    
		    Call mixerGetControlDetailsA( device, details, 0 )
		    
		    return vals.Long( 0 )
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SystemMasterVolume(assigns vol as Integer)
		  #if TargetWin32
		    Declare Function mixerOpen Lib "winmm" ( ByRef handle as Integer, id as Integer, _
		    callback as Integer, instance as Integer, open as Integer ) as Integer
		    Declare Function mixerGetNumDevs Lib "winmm" () as Integer
		    Declare Function mixerSetControlDetails Lib "winmm" ( handle as Integer, details as Ptr, flags as Integer ) as Integer
		    Declare Sub mixerGetLineInfoA Lib "winmm" ( handle as Integer, line as Ptr, flags as Integer )
		    Declare Sub mixerGetLineControlsA Lib "winmm" ( handle as Integer, lineCtl as Ptr, flags as Integer )
		    
		    dim i, count as Integer
		    count = mixerGetNumDevs - 1
		    
		    dim device as Integer
		    for i = 0 to count
		      if mixerOpen( device, i, 0, 0, 0 ) = 0 then
		        exit
		      end
		    next
		    
		    ' Get the line information for the Speakers
		    dim lineThinger as new MemoryBlock( 80 + 40 + 32 + 16 )
		    lineThinger.Long( 0 ) = lineThinger.Size
		    lineThinger.Long( 24 ) = 4
		    mixerGetLineInfoA( device, lineThinger, 3 )
		    
		    ' Get the volume control for the speakers
		    dim otherLineThinger as new MemoryBlock( 24 )
		    dim mixerControl as new MemoryBlock( 80 + (18 * 4))
		    otherLineThinger.Long( 0 ) = otherLineThinger.Size
		    otherLineThinger.Long( 4 ) = lineThinger.Long( 12 )
		    otherLineThinger.Long( 8 ) = &h50000000 + &h30000 + 1
		    otherLineThinger.Long( 12 ) = 1
		    otherLineThinger.Long( 16 ) = mixerControl.Size
		    otherLineThinger.Ptr( 20 ) = mixerControl
		    mixerGetLineControlsA( device, otherLineThinger, 2 )
		    
		    dim details as new MemoryBlock( 24 )
		    dim vals as new MemoryBlock( 4 )
		    vals.Long( 0 ) = vol
		    
		    details.Long( 0 ) = details.Size
		    details.Long( 4 ) = mixerControl.Long( 4 )
		    details.Long( 8 ) = 1
		    details.Long( 16 ) = 4
		    details.Ptr( 20 ) = vals
		    
		    dim ret as Integer
		    ret = mixerSetControlDetails( device, details, 0 )
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function UnmapNetworkDrive(drive as String, force as Boolean = false) As Boolean
		  Soft Declare Function WNetCancelConnection2W Lib "Mpr" ( name as WString, flags as Integer, force as Boolean ) as Integer
		  Soft Declare Function WNetCancelConnection2A Lib "Mpr" ( name as CString, flags as Integer, force as Boolean ) as Integer
		  
		  if System.IsFunctionAvailable( "WNetCancelConnection2W", "Mpr" ) then
		    return WNetCancelConnection2W( drive, 0, force ) = 0
		  else
		    return WNetCancelConnection2A( drive, 0, force ) = 0
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function UnmapNetworkDriveDialog(owner as Window, localPath as String) As Boolean
		  Soft Declare Function WNetDisconnectDialog1W Lib "Mpr" ( dlgstruct as Ptr ) as Integer
		  Soft Declare Function WNetDisconnectDialog1A Lib "Mpr" ( dlgstruct as Ptr ) as Integer
		  
		  dim dlgstruct as new MemoryBlock( 20 )
		  dlgstruct.Long( 0 ) = dlgstruct.Size
		  dlgstruct.Long( 4 ) = owner.WinHWND
		  
		  if Right( localPath, 1 ) = "\" then localPath = Left( localPath, 2 )
		  
		  dim localName as new MemoryBlock( 1024 )
		  if System.IsFunctionAvailable( "WNetDisconnectDialog1W", "Mpr" ) then
		    localName.WString( 0 ) = localPath
		  else
		    localName.CString( 0 ) = localPath
		  end if
		  
		  dlgstruct.Ptr( 8 ) = localName
		  
		  dim ret as Integer
		  if System.IsFunctionAvailable( "WNetDisconnectDialog1W", "Mpr" ) then
		    ret = WNetDisconnectDialog1W( dlgstruct )
		  else
		    ret = WNetDisconnectDialog1A( dlgstruct )
		  end if
		  
		  return ret = 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function WavVolume() As Integer
		  #if TargetWin32
		    Declare Sub waveOutGetVolume Lib "winmm" ( devid as Integer, ByRef vol as Integer )
		    Declare Function waveOutOpen Lib "winmm" ( ByRef out as Integer, devid as Integer, format as Ptr, _
		    callback as Integer, instance as Integer, open as Integer ) as Integer
		    Declare Function waveOutGetNumDevs Lib "winmm" () as Integer
		    
		    dim format as new MemoryBlock( 18 )
		    format.Short( 0 ) = 1                ' wFormatTag
		    format.Short( 2 ) = 1                ' nChannels
		    format.Long( 4 ) = 44100       ' nSamplesPerSecond
		    format.Short( 14 ) = 8              ' wBitsPerSample
		    format.Short( 12 ) = 2              ' nBlockAlign
		    format.Long( 8 ) = 2 * 44100 ' nAvgBytesPerSec
		    
		    dim i, count, ret as Integer
		    dim device as Integer
		    count = waveOutGetNumDevs - 1
		    
		    for i = 0 to count
		      ret = waveOutOpen( device, i, format, 0, 0, 1 )
		      if ret = 0 then
		        exit
		      end
		    next
		    
		    dim vol as Integer
		    waveOutGetVolume( device, vol )
		    
		    return vol
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub WavVolume(assigns vol as Integer)
		  #if TargetWin32
		    Declare Function waveOutOpen Lib "winmm" ( ByRef out as Integer, devid as Integer, format as Ptr, _
		    callback as Integer, instance as Integer, open as Integer ) as Integer
		    Declare Function waveOutGetNumDevs Lib "winmm" () as Integer
		    Declare Function waveOutSetVolume Lib "winmm" ( handle as Integer,  vol as Integer ) as Integer
		    
		    dim format as new MemoryBlock( 18 )
		    format.Short( 0 ) = 1                ' wFormatTag
		    format.Short( 2 ) = 1                ' nChannels
		    format.Long( 4 ) = 44100       ' nSamplesPerSecond
		    format.Short( 14 ) = 8              ' wBitsPerSample
		    format.Short( 12 ) = 2              ' nBlockAlign
		    format.Long( 8 ) = 2 * 44100 ' nAvgBytesPerSec
		    
		    dim i, count, ret as Integer
		    dim device as Integer
		    count = waveOutGetNumDevs - 1
		    
		    for i = 0 to count
		      ret = waveOutOpen( device, i, format, 0, 0, 1 )
		      if ret = 0 then
		        exit
		      end
		    next
		    
		    Call waveOutSetVolume( device, vol )
		  #endif
		End Sub
	#tag EndMethod


	#tag Note, Name = Documentation
		For documentation on how to use the declare library, please see the
		Documentation module.  There are notes in there about how to use 
		everything.
	#tag EndNote


	#tag Property, Flags = &h21
		Private mIdleHandlerHook As Integer
	#tag EndProperty


	#tag Constant, Name = kPriorityHigh, Type = Integer, Dynamic = False, Default = \"&h80", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kPriorityIdle, Type = Integer, Dynamic = False, Default = \"&h40", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kPriorityNormal, Type = Integer, Dynamic = False, Default = \"&h20", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kPriorityRealTime, Type = Integer, Dynamic = False, Default = \"&h100", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kResolutionChangeFailed, Type = Double, Dynamic = False, Default = \"-1", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kResolutionChangeRequiresReboot, Type = Double, Dynamic = False, Default = \"0", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kResolutionChangeSuccess, Type = Double, Dynamic = False, Default = \"1", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kShutdownModeLogoff, Type = Integer, Dynamic = False, Default = \"0", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kShutdownModePowerOff, Type = Integer, Dynamic = False, Default = \"3", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kShutdownModeReboot, Type = Integer, Dynamic = False, Default = \"2", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kShutdownModeShutdown, Type = Integer, Dynamic = False, Default = \"1", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kWindowStateHide, Type = Integer, Dynamic = False, Default = \"0", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kWindowStateMaximize, Type = Integer, Dynamic = False, Default = \"3", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kWindowStateMinimize, Type = Integer, Dynamic = False, Default = \"6", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kWindowStateRestore, Type = Integer, Dynamic = False, Default = \"9", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kWindowStateShow, Type = Integer, Dynamic = False, Default = \"5", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kWindowStateShowMaximized, Type = Double, Dynamic = False, Default = \"3", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kWindowStateShowMinimized, Type = Integer, Dynamic = False, Default = \"2", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kWindowStateShowNormal, Type = Integer, Dynamic = False, Default = \"1", Scope = Protected
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
