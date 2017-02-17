#tag Module
Protected Module M_Text
	#tag Method, Flags = &h21
		Private Function Base64LookupTable() As Text()
		  static r() as text
		  if r.Ubound = -1 then
		    dim bunch as Text = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
		    r = bunch.Split
		  end if
		  
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Base64ReverseLookupTable() As UInt8()
		  static r() as UInt8
		  if r.Ubound = -1 then
		    redim r( 127 )
		    dim lookup() as text = Base64LookupTable
		    for each char as text in lookup
		      dim code as integer = char.CodepointOfFirstCharacter_MTC
		      r( code ) = Base64ValueOf( code )
		    next
		  end if
		  
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Base64ValueOf(byteValue As Integer) As UInt8
		  select case byteValue
		  case 65 to 90 // A to Z
		    return byteValue - 65
		    
		  case 97 to 122 // a to z
		    return 26 + ( byteValue - 97 )
		    
		  case 48 to 57 // 0 - 9
		    return 52 + ( byteValue - 48 )
		    
		  case 43 // +
		    return 62
		    
		  case 47 // /
		    return 63
		    
		  case 61 // =
		    return 0
		    
		  else
		    raise new OutOfBoundsException
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CodepointOfFirstCharacter(src As Text) As Integer
		  return src.CodepointOfFirstCharacter_MTC
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CodepointOfFirstCharacter_MTC(Extends src As Text) As Integer
		  if src.Empty then
		    raise new Xojo.Core.InvalidArgumentException
		  end if
		  
		  for each code as integer in src.Codepoints
		    return code
		  next
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Compare(src As Text, other As Text, options As Integer = 0, locale As Xojo.Core.Locale = Nil) As Integer
		  return src.Compare( other, options, locale )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Contains(src As Text, other As Text, compareOptions As Integer = 0, locale As Xojo.Core.Locale = Nil) As Boolean
		  return src.Contains_MTC( other, compareOptions, locale )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Contains_MTC(Extends src As Text, other As Text, compareOptions As Integer = 0, locale As Xojo.Core.Locale = Nil) As Boolean
		  return src.IndexOf( other, compareOptions, locale ) <> -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CountFields(src As Text, sep As Text, compareOptions As Integer = 0, locale As Xojo.Core.Locale = Nil) As Integer
		  return src.CountFields_MTC( sep, compareOptions, locale )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CountFields_MTC(Extends src As Text, sep As Text, compareOptions As Integer = 0, locale As Xojo.Core.Locale = Nil) As Integer
		  if src.Empty then
		    return 0
		  end if
		  
		  dim arr() as text = NthFieldGetFromCache( src, sep, compareOptions, locale )
		  return arr.Ubound + 1
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DecodeBase64(src As Text) As Xojo.Core.MemoryBlock
		  // Returns a MemoryBlock rather than text because the encoded data may be
		  // binary.
		  
		  static last4BitsMask as UInt8 = &b00001111
		  static last2BitsMask as UInt8 = &b00000011
		  
		  if src.Empty then
		    return nil
		  end if
		  
		  //
		  // Get rid of the EOL
		  //
		  src = src.ReplaceAll( &u0A, "" )
		  src = src.ReplaceAll( &u0D, "" )
		  
		  if src.Length mod 4 <> 0 then
		    raise new OutOfBoundsException
		  end if
		  
		  dim lookup() as UInt8 = Base64ReverseLookupTable
		  
		  dim nullCount as integer
		  if src.Right( 2 ) = "==" then
		    nullCount = 2
		  elseif src.Right( 1 ) = "=" then
		    nullCount = 1
		  end if
		  
		  dim mb as Xojo.Core.MemoryBlock = Xojo.Core.TextEncoding.UTF8.ConvertTextToData( src )
		  dim result as new Xojo.Core.MemoryBlock( ( mb.Size * 3 / 4 ) - nullCount )
		  dim resultIndex as integer
		  
		  dim lastByteIndex as integer = mb.Size - 1
		  dim sourcePtr as Ptr = mb.Data
		  dim resultPtr as Ptr = result.Data
		  
		  for i as integer = 0 to lastByteIndex step 4
		    dim raw1 as UInt8 = sourcePtr.Byte( i )
		    dim raw2 as UInt8 = sourcePtr.Byte( i + 1 )
		    dim raw3 as UInt8 = sourcePtr.Byte( i + 2 )
		    dim raw4 as UInt8 = sourcePtr.Byte( i + 3 )
		    
		    dim lookup1 as UInt8 = lookup( raw1 )
		    dim lookup2 as UInt8 = lookup( raw2 )
		    dim lookup3 as UInt8 = lookup( raw3 )
		    dim lookup4 as UInt8 = lookup( raw4 )
		    
		    dim thisByte as UInt8
		    
		    thisByte = ( lookup1 * 4 ) + ( lookup2 \ 16 )
		    resultPtr.Byte( resultIndex ) = thisByte
		    resultIndex = resultIndex + 1
		    
		    if resultIndex >= result.Size then
		      exit
		    end if
		    
		    dim last4Bits as UInt8 = lookup2 and last4BitsMask
		    dim first4Bits as UInt8 = lookup3 \ 4
		    thisByte = ( last4Bits * 16 ) + first4Bits
		    resultPtr.Byte( resultIndex ) = thisByte
		    resultIndex = resultIndex + 1
		    
		    if resultIndex >= result.Size then
		      exit
		    end if
		    
		    dim last2Bits as UInt8 = lookup3 and last2BitsMask
		    thisByte = ( last2Bits * 64 ) + lookup4
		    resultPtr.Byte( resultIndex ) = thisByte
		    resultIndex = resultIndex + 1
		    
		  next
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DecodeHex(src As Text) As Xojo.Core.MemoryBlock
		  src = src.ReplaceAll( " ", "" )
		  
		  if src.Empty then
		    return nil
		  end if
		  
		  dim blockIndex as integer
		  
		  dim mb as new Xojo.Core.MutableMemoryBlock( src.Length \ 2 )
		  dim byteIndex as integer
		  dim p as Ptr = mb.Data
		  
		  dim srcLen as integer = src.Length
		  while blockIndex < srcLen
		    dim block as text = src.Mid( blockIndex, 2 )
		    dim thisByte as integer = Integer.FromHex( block )
		    
		    p.Byte( byteIndex ) = thisByte
		    
		    blockIndex = blockIndex + 2
		    byteIndex = byteIndex + 1
		  wend
		  
		  dim r as new Xojo.Core.MemoryBlock( mb )
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function EncodeBase64(srcMB As Xojo.Core.MemoryBlock) As Text
		  if srcMB.Size = 0 then
		    return ""
		  end if
		  
		  dim lookup() as Text = Base64LookupTable
		  
		  dim maskByte1 as UInt8 = &b11111100
		  dim maskByte2 as UInt16 = &b0000001111110000
		  dim maskByte3 as UInt16 = &b0000111111000000
		  dim maskByte4 as Uint8 = &b00111111
		  
		  dim chars() as text
		  dim mb as Xojo.Core.MemoryBlock = srcMB.Clone
		  
		  //
		  // Pad the text if needed
		  //
		  dim nullCount as integer = mb.Size mod 3
		  if nullCount <> 0 then
		    nullCount = 3 - nullCount
		    dim tempMB as new Xojo.Core.MutableMemoryBlock( mb )
		    static nullBytes( 0 ) as Byte
		    tempMB.Append nullBytes
		    mb = new Xojo.Core.MemoryBlock( tempMB )
		  end if
		  
		  mb.LittleEndian = false
		  
		  const kLineLength = 76
		  const kEOL = &u0D + &u0A
		  
		  dim lineCharCount as integer
		  
		  dim lastByteIndex as integer = mb.Size - 1
		  for masterIndex as integer = 0 to lastByteIndex step 3
		    dim byteIndex as integer = masterIndex
		    
		    dim lookupIndex as integer = mb.UInt8Value( byteIndex ) and maskByte1
		    lookupIndex = lookupIndex \ 4
		    chars.Append lookup( lookupIndex )
		    
		    if byteIndex = lastByteIndex then
		      exit
		    end if
		    
		    lookupIndex = mb.UInt16Value( byteIndex ) and maskByte2
		    lookupIndex = lookupIndex \ 16
		    chars.Append lookup( lookupIndex )
		    
		    byteIndex = byteIndex + 1
		    if byteIndex = lastByteIndex then
		      exit
		    end if
		    
		    lookupIndex = mb.UInt16Value( byteIndex ) and maskByte3
		    lookupIndex = lookupIndex \ 64
		    chars.Append lookup( lookupIndex )
		    
		    byteIndex = byteIndex + 1
		    
		    lookupIndex = mb.UInt8Value( byteIndex ) and maskByte4
		    chars.Append lookup( lookupIndex )
		    
		    lineCharCount = lineCharCount + 4
		    if lineCharCount = kLineLength then
		      chars.Append kEOL
		      lineCharCount = 0
		    end if
		  next
		  
		  if nullCount = 2 then
		    chars.Append "=="
		  elseif nullCount = 1 then
		    chars( chars.Ubound ) = "="
		  end if
		  
		  dim whole as Text = Text.Join( chars, "" )
		  return whole
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function EncodeHex(srcMB As Xojo.Core.MemoryBlock, insertSpaces As Boolean = False) As Text
		  dim lastByteIndex as integer = srcMB.Size - 1
		  if lastByteIndex = -1 then
		    return ""
		  end if
		  
		  dim codes() as text
		  redim codes( lastByteIndex )
		  
		  dim p as Ptr = srcMB.Data
		  
		  for byteIndex as integer = 0 to lastByteIndex
		    dim thisByte as byte = p.Byte( byteIndex )
		    codes( byteIndex ) = thisByte.ToHex( 2 )
		  next
		  
		  dim sep as text = if( insertSpaces, " ", "" )
		  dim r as text = Text.Join( codes, sep )
		  
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function EndOfLineOf(src As Text) As Text
		  // Attempts to determine the EOL character of the given text
		  // If it can't be found, returns the platform default
		  
		  const kCR = &u0D
		  const kLF = &u0A
		  const kCRLF = &u0D + &u0A
		  
		  #if TargetWin32
		    const kDefaultEOL = kCRLF
		  #else
		    const kDefaultEOL = kLF
		  #endif
		  
		  if src.Empty then
		    return kDefaultEOL
		  end if
		  
		  //
		  // Optimization:
		  //
		  // If the last character is an EOL character, reduce the src to the last two characters
		  //
		  dim lastChar as text = src.Right( 1 )
		  if lastChar = kCR  then
		    return kCR // We already know so return it
		    
		  elseif lastChar = kLF then
		    if src.Length = 1 then
		      return kLF // We already know so return it
		    else
		      src = src.Right( 2 )
		    end if
		    
		  end if
		  
		  //
		  // Work backwards through the text
		  //
		  dim chars() as text = src.Split
		  for i as integer = chars.Ubound downto 0
		    dim thisChar as text = chars( i )
		    if thisChar = kCR then
		      return kCR
		    elseif thisChar = kLF then
		      if i > 0 and chars( i - 1 ) = kCR then
		        return kCRLF
		      else
		        return kLF
		      end if
		    end if
		  next i
		  
		  //
		  // If we get here, return the default
		  //
		  return kDefaultEOL
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Expand(src As Text, ParamArray vars() As Auto) As Text
		  return ExpandWithArray( src, vars )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ExpandWithArray(src As Text, vars() As Auto) As Text
		  // Takes a text and replaces the occurrences of a token with the values of the
		  // Autos. Those Autos must be able to get a text value.
		  // Values that exceed the number of tokens will be ignored.
		  //
		  // Two forms of tokens are accepted. If "\?" is present in the string, it will
		  // replace those in order. Otherwise, it will look for the form "${#}"
		  // where # represents a specific value in the array.
		  //
		  // Examples:
		  //  s = Expand( "The ${1} beat the ${2} by a score of ${3} to ${4}", "Yankees", "Red Sox", 15, 1 )
		  //  s will be "The Yankees beat the Red Sox by a score of 15 to 1"
		  //  s = Expand( "\? is a great \?", "Derek Jeter", "shortstop" )
		  //  s will be "Derek Jeter is a great shortstop"
		  
		  if vars.Ubound = -1 then
		    return src
		  end if
		  if src.Empty then 
		    return src
		  end if
		  
		  const kToken = "\?"
		  
		  if src.IndexOf( kToken ) = -1 then
		    
		    //
		    // Using the "${#}" form
		    //
		    
		    //
		    // Create a cache of tokens that will expand as needed
		    //
		    static prefabTokens() as text = Array( "${1}", "${2}", "${3}", "${4}", "${5}" )
		    
		    //
		    // Increase the cache if needed
		    //
		    while prefabTokens.Ubound < vars.Ubound
		      prefabTokens.Append "${" + ToText( prefabTokens.Ubound + 2 ) + "}"
		    wend
		    
		    for i as Integer = 0 to vars.Ubound
		      dim token as text = prefabTokens( i )
		      src = src.ReplaceAll( token, ToText( vars( i ) ) )
		    next i
		    
		  else // Using the "\?" form
		    
		    dim srcArr() as text = src.Split( kToken )
		    
		    dim resultArr() as text
		    if srcArr.Ubound <> -1 then
		      resultArr.Append srcArr( 0 )
		      dim srcIndex as Integer = 1
		      dim varIndex as Integer = 0
		      do until srcIndex > srcArr.Ubound or varIndex > vars.Ubound
		        dim thisVar as text = ToText( vars( varIndex ) )
		        varIndex = varIndex + 1
		        
		        resultArr.Append thisVar
		        resultArr.Append srcArr( srcIndex )
		        srcIndex = srcIndex + 1
		      loop 
		      
		      //
		      // Add any missing source
		      //
		      for i as Integer = srcIndex to srcArr.Ubound
		        resultArr.Append kToken
		        resultArr.Append srcArr( i )
		      next i
		      
		      src = Text.Join( resultArr, "" )
		    end if
		    
		  end if
		  
		  return src
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Filter(src As Text, filterChars As Text, compareOptions As Integer = 0, locale As Xojo.Core.Locale = Nil) As Text
		  // Filters the given text to whatever is contained in filterChars
		  //
		  // Example:
		  //  src = "123-456-789"
		  //  src = src.Filter_MTC( "0123456789" )
		  //
		  //  src will equal "123456789"
		  
		  dim srcChars() as Text = src.Split
		  dim goodChars() as text
		  for i as integer = 0 to srcChars.Ubound
		    dim thisChar as text = srcChars( i )
		    if filterChars.IndexOf( thisChar, compareOptions, locale ) <> -1 then
		      goodChars.Append thisChar
		    end if
		  next i
		  
		  dim r as Text = Text.Join( goodChars, "" )
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FromBase64(src As Text, encoding As Xojo.Core.TextEncoding) As Text
		  if src.Empty then
		    return ""
		  end if
		  
		  dim mb as Xojo.Core.MemoryBlock = M_Text.DecodeBase64( src )
		  
		  dim t as Text = encoding.ConvertDataToText( mb )
		  return t
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FromHex(src As Text, encoding As Xojo.Core.TextEncoding) As Text
		  if src.Empty then
		    return ""
		  end if
		  
		  dim mb as Xojo.Core.MemoryBlock = M_Text.DecodeHex( src )
		  return encoding.ConvertDataToText( mb )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FromUnknownEncoding(mb As Xojo.Core.MemoryBlock, trustBOM As Boolean = True) As Text
		  // Attempts to parse the data in a memory block into it's Text
		  
		  //
		  // Use a pointer to boost speed
		  //
		  dim p as Ptr = mb.Data
		  
		  //
		  // Check for a BOM.
		  // Will raise an exception if we are supposed to trust the BOM
		  // but the data is invalid.
		  //
		  dim foundBOM as boolean
		  
		  if not foundBOM and mb.Size > 3 then
		    if p.Byte( 0 ) = &h00 and p.Byte( 1 ) = &h00 and p.Byte( 2 ) = &hFE and p.Byte( 3 ) = &hFF then
		      //
		      // UTF-32BE
		      //
		      if mb.Size = 4 then
		        return ""
		      end if
		      
		      mb = mb.Right( mb.Size - 4 )
		      foundBOM = true
		      
		      if trustBOM then
		        dim enc as Xojo.Core.TextEncoding = Xojo.Core.TextEncoding.UTF32BigEndian
		        return enc.ConvertDataToText( mb )
		      end if
		      
		    elseif p.Byte( 0 ) = &hFF and p.Byte( 1 ) = &hFE and p.Byte( 2 ) = &h00 and p.Byte( 3 ) = &h00 then
		      //
		      // UTF-32LE
		      //
		      if mb.Size = 4 then
		        return ""
		      end if
		      
		      mb = mb.Right( mb.Size - 4 )
		      foundBOM = true
		      
		      if trustBOM then
		        dim enc as Xojo.Core.TextEncoding = Xojo.Core.TextEncoding.UTF32LittleEndian
		        return enc.ConvertDataToText( mb )
		      end if
		    end if
		  end if
		  
		  if not foundBOM and mb.Size > 2 then
		    if p.Byte( 0 ) = &hEF and p.Byte( 1 ) = &hBB and p.Byte( 2 ) = &hBF then
		      //
		      // UTF-8
		      //
		      if mb.Size = 3 then
		        return ""
		      end if
		      
		      mb = mb.Right( mb.Size - 3 )
		      foundBOM = true
		      
		      if trustBOM then
		        dim enc as Xojo.Core.TextEncoding = Xojo.Core.TextEncoding.UTF8
		        return enc.ConvertDataToText( mb )
		      end if
		    end if
		  end if
		  
		  if not foundBOM and mb.Size > 1 then
		    if p.Byte( 0 ) = &hFE and p.Byte( 1 ) = &hFF then
		      //
		      // UTF-16BE
		      //
		      if mb.Size = 2 then
		        return ""
		      end if
		      
		      mb = mb.Right( mb.Size - 2 )
		      foundBOM = true
		      
		      if trustBOM then
		        dim enc as Xojo.Core.TextEncoding = Xojo.Core.TextEncoding.UTF16BigEndian
		        return enc.ConvertDataToText( mb )
		      end if
		      
		    elseif p.Byte( 0 ) = &hFF and p.Byte( 1 ) = &hFE then
		      //
		      // UTF-16LE
		      //
		      if mb.Size = 2 then
		        return ""
		      end if
		      
		      mb = mb.Right( mb.Size - 2 )
		      foundBOM = true
		      
		      if trustBOM then
		        dim enc as Xojo.Core.TextEncoding = Xojo.Core.TextEncoding.UTF16LittleEndian
		        return enc.ConvertDataToText( mb )
		      end if
		    end if
		  end if
		  
		  //
		  // If we get here, there was no BOM
		  // or it was ignored and stripped
		  // 
		  
		  p = mb.Data // Update p, just in case
		  
		  #pragma BreakOnExceptions false
		  dim converted32BE as Text
		  dim isValid32BE as boolean
		  try
		    converted32BE = Xojo.Core.TextEncoding.UTF32BigEndian.ConvertDataToText( mb )
		    isValid32BE = true
		  catch err as RuntimeException
		    if err IsA EndException or err IsA ThreadEndException then
		      raise err
		    end if
		  end try
		  
		  dim converted32LE as Text
		  dim isValid32LE as boolean
		  try
		    converted32LE = Xojo.Core.TextEncoding.UTF32LittleEndian.ConvertDataToText( mb )
		    isValid32LE = true
		  catch err as RuntimeException
		    if err IsA EndException or err IsA ThreadEndException then
		      raise err
		    end if
		  end try
		  
		  dim converted16BE as Text
		  dim isValid16BE as boolean
		  try
		    converted16BE = Xojo.Core.TextEncoding.UTF16BigEndian.ConvertDataToText( mb )
		    isValid16BE = true
		  catch err as RuntimeException
		    if err IsA EndException or err IsA ThreadEndException then
		      raise err
		    end if
		  end try
		  
		  dim converted16LE as Text
		  dim isValid16LE as boolean
		  try
		    converted16LE = Xojo.Core.TextEncoding.UTF16LittleEndian.ConvertDataToText( mb )
		    isValid16LE = true
		  catch err as RuntimeException
		    if err IsA EndException or err IsA ThreadEndException then
		      raise err
		    end if
		  end try
		  
		  dim converted8 as Text
		  dim isValid8 as boolean
		  try
		    converted8 = Xojo.Core.TextEncoding.UTF8.ConvertDataToText( mb )
		    isValid8 = true
		  catch err as RuntimeException
		    if err IsA EndException or err IsA ThreadEndException then
		      raise err
		    end if
		  end try
		  #pragma BreakOnExceptions default
		  
		  dim isValid32 as boolean = isValid32BE or isValid32LE
		  dim isValid16 as boolean = isValid16BE or isValid16LE
		  
		  if isValid8 or isValid16 or isValid32 then
		    //
		    // It's valid for at least one of these so figure out if it's only one and return it
		    //
		    if isValid32BE and not ( isValid32LE or isValid16 or isValid8 ) then
		      return converted32BE
		    end if
		    
		    if isValid32LE and not ( isValid32BE or isValid16 or isValid8 ) then
		      return converted32LE
		    end if
		    
		    if isValid16BE and not ( isValid32 or isValid16LE or isValid8 ) then
		      return converted16BE
		    end if
		    
		    if isValid16LE and not ( isValid32 or isValid16BE or isValid8 ) then
		      return converted16LE
		    end if
		    
		    if isValid8 and not ( isValid32 or isValid16 ) then
		      return converted8
		    end if
		    
		    //
		    // It's valid for more than one
		    //
		    
		    if isValid32 or isValid16 then
		      //
		      // It's valid for more than one so count the nulls
		      //
		      dim lastByteIndex as integer = mb.Size - 1
		      dim nullCount( 3 ) as integer // Counts nulls by position
		      dim combinedNullCount as integer
		      dim nullCountIndex as integer = -1
		      for i as integer = 0 to lastByteIndex
		        if nullCountIndex = 3 then
		          nullCountIndex = 0
		        else
		          nullCountIndex = nullCountIndex + 1
		        end if
		        
		        if p.Byte( i ) = 0 then
		          nullCount( nullCountIndex ) = nullCount( nullCountIndex ) + 1
		        end if
		      next i
		      
		      combinedNullCount = nullCount( 0 ) + nullCount( 1 ) + nullCount( 2 ) + nullCount( 3 )
		      if combinedNullCount <> 0 and combinedNullCount < mb.Size then // If there are no nulls, there is no way to tell, and if it's all nulls, it's meaningless
		        
		        dim isLittleEndian as Boolean
		        dim oddNullCount, evenNullCount as integer
		        
		        if isValid32 then
		          oddNullCount = nullCount( 0 ) + nullCount( 1 )
		          evenNullCount = nullCount( 2 ) + nullCount( 3 )
		          isLittleEndian = ( evenNullCount > oddNullCount )
		          if NullCountWithinRatio( oddNullCount, evenNullCount, mb.Size ) then
		            if isLittleEndian and isValid32LE then
		              return converted32LE
		            elseif not isLittleEndian and isValid32BE then
		              return converted32BE
		            end if
		          end if
		        end if // isValid32
		        
		        if isValid16 then
		          oddNullCount = nullCount( 0 ) + nullCount( 2 )
		          evenNullCount = nullCount( 1 ) + nullCount( 3 )
		          isLittleEndian = ( evenNullCount > oddNullCount )
		          if NullCountWithinRatio( oddNullCount, evenNullCount, mb.Size ) then
		            if isLittleEndian and isValid16LE then
		              return converted16LE
		            elseif not isLittleEndian and isValid16BE then
		              return converted16BE
		            end if
		          end if
		        end if // isValid16
		        
		      end if // combinedNullCount <> 0 and ...
		      
		    end if // isValid32 or isValid16
		    
		    //
		    // Still nothing?
		    //
		    if isValid8 then
		      return converted8 // We can make this assumption
		    end if
		    
		  end if // isValid8 or isValid16 or isValid32
		  
		  //
		  // Either the convertion to one of the UTF encodings failed
		  // or it just isn't valid for any so return ISO-Latin
		  //
		  return Xojo.Core.TextEncoding.Windows1252.ConvertDataToText( mb )
		  
		  //
		  // If that fails too (and I can't imagine it will), raise an exception
		  //
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FromURLEncoded(src As Text, encoding As Xojo.Core.TextEncoding = Nil) As Text
		  // Emulates DecodeURLComponent from classic framework
		  // If encoding is not specified, assumed to be UTF-8
		  
		  if src.Empty then
		    return ""
		  end if
		  
		  if encoding is nil then
		    encoding = Xojo.Core.TextEncoding.UTF8
		  end if
		  
		  dim srcMB as Xojo.Core.MemoryBlock = Xojo.Core.TextEncoding.ASCII.ConvertTextToData( src )
		  
		  dim destMB as new Xojo.Core.MutableMemoryBlock( src.Length )
		  dim mbIndex as integer
		  
		  dim charIndex as integer
		  dim lastCharIndex as integer = srcMB.Size - 1
		  while charIndex <= lastCharIndex
		    dim code as integer = srcMB.Data.Byte( charIndex )
		    if code = 37 then // "%"
		      code = Integer.FromHex( src.Mid( charIndex + 1, 2 ) )
		      charIndex = charIndex + 3
		    else
		      charIndex = charIndex + 1
		    end if
		    destMB.Data.Byte( mbIndex ) = code
		    mbIndex = mbIndex + 1
		  wend
		  
		  dim mb as Xojo.Core.MemoryBlock = destMB.Left( mbIndex )
		  dim r as text = encoding.ConvertDataToText( mb )
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IndexesOf_MTC(Extends src As Text, other As Text, compareOptions As Integer = 0, locale As Xojo.Core.Locale = Nil) As Integer()
		  // Returns all the indexes of the other text as an array
		  
		  dim r() as integer
		  
		  dim otherLen as integer = other.Length
		  
		  dim pos as integer = src.IndexOf( other, compareOptions, locale )
		  while pos <> -1
		    r.Append pos
		    pos = src.IndexOf( pos + otherLen, other, compareOptions, locale )
		  wend
		  
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IndexOf(src As Text, other As Text, compareOptions As Integer = 0, locale As Xojo.Core.Locale = Nil) As Integer
		  return src.IndexOf( other, compareOptions, locale )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IndexOfOccurrence(src As Text, other As Text, occurrence As Integer, compareOptions As Integer = 0, locale As Xojo.Core.Locale = Nil) As Integer
		  return src.IndexOfOccurrence_MTC( other, occurrence, compareOptions, locale )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IndexOfOccurrence_MTC(Extends src As Text, other As Text, occurrence As Integer, compareOptions As Integer = 0, locale As Xojo.Core.Locale = Nil) As Integer
		  // Returns the position of the other text that occurs at occurrence.
		  // So if you want the second occurrence of "3" in "123123", the result will
		  // be 5.
		  
		  const kNotFound = -1
		  
		  if occurrence < 1 or src.Empty or other.Empty then
		    return kNotFound
		  end if
		  
		  dim otherLen as integer = other.Length
		  dim thisOccurence as integer
		  dim pos as integer = src.IndexOf( other, compareOptions, locale )
		  while pos <> -1
		    thisOccurence = thisOccurence + 1
		    if thisOccurence = occurrence then
		      return pos
		    end if
		    
		    pos = src.IndexOf( pos + otherLen, other, compareOptions, locale )
		  wend
		  
		  return kNotFound
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsIn(src As Text, other As Text, compareOptions As Integer = 0, locale As Xojo.Core.Locale = Nil) As Boolean
		  return other.IndexOf( src, compareOptions, locale ) <> -1
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsInteger(src As Text) As Boolean
		  return src.IsInteger_MTC
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsInteger_MTC(Extends src As Text) As Boolean
		  // Determines if the text is a whole number
		  
		  if src.Empty then
		    return false
		  end if
		  
		  //
		  // Strip the negative sign, if any
		  //
		  if src.Compare( "-" ) = 0 then
		    return false
		  end if
		  
		  if src.Left( 1 ) = "-" then
		    src = src.Mid( 1 )
		  end if
		  
		  dim justNums as text = Filter( src, "0123456789" )
		  return src.Compare( justNums ) = 0
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsIn_MTC(Extends src As Text, other As Text, compareOptions As Integer = 0, locale As Xojo.Core.Locale = Nil) As Boolean
		  // A reverse Contains
		  
		  return other.IndexOf( src, compareOptions, locale ) <> -1
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsLowercase(src As Text, locale As Xojo.Core.Locale = Nil) As Boolean
		  return src.IsLowercase_MTC( locale )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsLowercase_MTC(Extends src As Text, locale As Xojo.Core.Locale = Nil) As Boolean
		  // Determines if the given text is already lowercase
		  
		  dim compare as text = src.Lowercase( locale )
		  return src.Compare( compare, Text.CompareCaseSensitive, locale ) = 0
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsNumeric(src As Text) As Boolean
		  return src.IsNumeric_MTC
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsNumeric_MTC(Extends src As Text) As Boolean
		  if src.IndexOf( "e" ) <> -1 then
		    //
		    // Look for scientific notation
		    //
		    
		    dim parts() as text = src.Split( "e" )
		    if parts.Ubound <> 1 or parts( 0 ).Empty or parts( 1 ).Empty then
		      return false
		    end if
		    
		    //
		    // Before the "e" should be a whole number or a decimal
		    //
		    if not parts( 0 ).IsNumeric_MTC then
		      return false
		    end if
		    
		    //
		    // So far, so good
		    //
		    dim thisPart as text = parts( 1 )
		    if thisPart = "+" then
		      return false
		    end if
		    
		    dim firstChar as text = thisPart.Left( 1 )
		    if firstChar = "+" then
		      thisPart = thisPart.Mid( 1 ) // Get the rest of the string
		    end if
		    
		    //
		    // The rest has to be an integer
		    //
		    return thisPart.IsInteger_MTC
		    
		  elseif src.IndexOf( "." ) = -1 then
		    if src = "+" then
		      return false
		    elseif src.Left( 1 ) = "+" then
		      src = src.Mid( 1 )
		      dim firstChar as text = src.Left( 1 )
		      if firstChar < "0" or firstChar > "9" then
		        return false
		      end if
		    end if
		    return src.IsInteger_MTC
		    
		  else
		    //
		    // A decimal
		    //
		    
		    dim chars() as text = src.Split
		    dim index as integer
		    if chars( 0 ) = "-" or chars( 0 ) = "+" then
		      index = 1
		    end if
		    
		    dim inDecimal as boolean
		    while index <= chars.Ubound
		      dim thisChar as text = chars( index )
		      if thisChar = "." then
		        if inDecimal then
		          return false
		        else
		          inDecimal = true
		        end if
		      elseif thisChar.Compare( "0" ) = -1 or thisChar.Compare( "9" ) = 1 then
		        return false
		      end if
		      
		      index = index + 1
		    wend
		    
		    return true
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsTitleCase(src As Text, locale As Xojo.Core.Locale = Nil) As Boolean
		  return src.IsTitlecase_MTC( locale )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsTitlecase_MTC(Extends src As Text, locale As Xojo.Core.Locale = Nil) As Boolean
		  // Determines if the given text is already TitleCase
		  
		  dim compare as text = src.TitleCase( locale )
		  return src.Compare( compare, Text.CompareCaseSensitive, locale ) = 0
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsUppercase(src As Text, locale As Xojo.Core.Locale = Nil) As Boolean
		  return src.IsUpperCase_MTC( locale )
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsUpperCase_MTC(Extends src As Text, locale As Xojo.Core.Locale = Nil) As Boolean
		  // Determines if the given text is already uppercase
		  
		  dim compare as text = src.Uppercase( locale )
		  return src.Compare( compare, Text.CompareCaseSensitive, locale ) = 0
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsValidJSON(src As Text) As Boolean
		  return src.IsValidJSON_MTC
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsValidJSON_MTC(Extends src As Text) As Boolean
		  #pragma BreakOnExceptions false
		  
		  try
		    dim a as Auto = Xojo.Data.ParseJSON( src )
		    #pragma unused a
		    
		    return true
		    
		  catch err as Xojo.Data.InvalidJSONException
		    return false
		  end try
		  
		  #pragma BreakOnExceptions default
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function LeftUpTo(src As Text, countOrLess As Integer) As Text
		  return src.LeftUpTo_MTC( countOrLess )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LeftUpTo_MTC(Extends src As Text, countOrLess As Integer) As Text
		  // Matches the behavior in the classic framework
		  
		  if countOrLess <= 0 then
		    return ""
		  end if
		  
		  if src.Length <= countOrLess then
		    return src
		  end if
		  
		  return src.Left( countOrLess )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Length(src As Text) As Integer
		  return src.Length
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Lowercase(src As Text, locale As Xojo.Core.Locale = Nil) As Text
		  return src.Lowercase( locale )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function MidUpTo(src As Text, start As Integer, countOrLess As Integer) As Text
		  return src.MidUpTo_MTC( start, countOrLess )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MidUpTo_MTC(Extends src As Text, start As Integer, countOrLess As Integer) As Text
		  // Matches the behavior in the classic framework
		  
		  if start < 0 then
		    countOrLess = countOrLess + start
		    start = 0
		  end if
		  
		  if countOrLess <= 0 then
		    return ""
		  end if
		  
		  if start > ( src.Length - 1 ) then
		    return ""
		  end if
		  
		  if ( start + countOrLess ) >= src.Length then
		    return src.RightUpTo_MTC( src.Length - start )
		  end if
		  
		  return src.Mid( start, countOrLess )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function NthField(src As Text, sep As Text, oneBasedIndex As Integer, compareOptions As Integer = 0, locale As Xojo.Core.Locale = Nil) As Text
		  return src.NthField_MTC( sep, oneBasedIndex, compareOptions, locale )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function NthFieldGetFromCache(src As Text, sep As Text, compareOptions As Integer, locale As Xojo.Core.Locale) As Text()
		  #pragma BackgroundTasks false
		  
		  if src.Empty then
		    dim empty() as Text
		    return empty
		  end if
		  
		  if sep <> NthFieldSepCache or _
		    compareOptions <> NthFieldCompareOptionsCache or _
		    locale <> NthFieldLocaleCache or _
		    NthFieldCache.Compare( src, compareOptions, locale ) <> 0 then
		    NthFieldCache = src
		    NthFieldSepCache = sep
		    NthFieldCompareOptionsCache = compareOptions
		    NthFieldLocaleCache = locale
		    NthFieldArrCache = src.Split( sep, compareOptions, locale )
		  end if
		  
		  return NthFieldArrCache
		  
		  #pragma BackgroundTasks true
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NthField_MTC(Extends src As Text, sep As Text, oneBasedIndex As Integer, compareOptions As Integer = 0, locale As Xojo.Core.Locale = Nil) As Text
		  dim arr() as Text = NthFieldGetFromCache( src, sep, compareOptions, locale )
		  return arr( oneBasedIndex - 1 )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function NullCountWithinRatio(oddNullCount As Integer, evenNullCount As Integer, srcLen As Integer) As Boolean
		  const kLowRatio = 0.3
		  const kHighRatio = 0.6
		  
		  dim r as boolean
		  dim ratio as double
		  
		  if oddNullCount > evenNullCount then
		    ratio = oddNullCount / srcLen
		  else
		    ratio = evenNullCount / srcLen
		  end if
		  if ratio > kLowRatio and ratio < kHighRatio then
		    r = true
		  end if
		  
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Paragraphs(src As Text) As Text()
		  return src.Paragraphs_MTC
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Paragraphs_MTC(Extends src As Text) As Text()
		  dim r() as text
		  
		  if src.Empty then
		    return r
		  end if
		  
		  dim eol as Text = M_Text.EndOfLineOf( src )
		  r = src.Split( eol )
		  
		  if r( r.Ubound ).Empty then
		    r.Remove r.Ubound // Remove the trailing EOL
		  end if
		  
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Repeat(src As Text, repetitions As Integer) As Text
		  if repetitions = 1 then
		    return src
		  elseif repetitions < 1 then
		    dim err as new OutOfBoundsException
		    #if TargetDesktop
		      err.Message = "You must specify a valid number of times to repeat the text"
		    #endif
		    raise err
		  end if
		  
		  if src.Empty then
		    return src
		  end if
		  
		  dim currentLen as integer = src.Length
		  dim targetLen as integer = currentLen * repetitions
		  dim halfTargetLen as integer = ( targetLen + 1 ) \ 2
		  
		  while currentLen < halfTargetLen
		    src = src + src
		    currentLen = currentLen + currentLen
		  wend
		  
		  if currentLen > targetLen then
		    src = src.Left( targetLen )
		  elseif currentLen < targetLen then
		    dim diff as integer = targetLen - currentLen
		    src = src + src.Left( diff )
		  end if
		  
		  return src
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ReplaceLineEndings(src As Text, other As Text) As Text
		  const kCR as Text = &u0D
		  const kLF as Text = &u0A
		  const kCRLF as Text = &u0D + &u0A
		  
		  //
		  // Normalize the line endings first
		  //
		  src = src.ReplaceAll( kCRLF, kLF )
		  src = src.ReplaceAll( kCR, kLF )
		  
		  //
		  // Now replace them
		  //
		  src = src.ReplaceAll( kLF, other )
		  
		  return src
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function RightUpTo(src As Text, countOrLess As Integer) As Text
		  return src.RightUpTo_MTC( countOrLess )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RightUpTo_MTC(Extends src As Text, countOrLess As Integer) As Text
		  // Matches the behavior in the classic framework
		  
		  if countOrLess <= 0 then
		    return ""
		  end if
		  
		  if src.Length <= countOrLess then
		    return src
		  end if
		  
		  return src.Right( countOrLess )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Split_MTC(src As Text) As Text()
		  return src.Split
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Split_MTC(src As Text, sep As Text, compareOptions As Integer = 0, locale As Xojo.Core.Locale = Nil) As Text()
		  return src.Split( sep, compareOptions, locale )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Squeeze(src As Text, charSet As Text = " ", compareOptions As Integer = 0, locale As Xojo.Core.Locale = Nil) As Text
		  // Takes a run of characters within charSet and turns them into one
		  
		  if charSet.Empty or src.Empty then
		    return src
		  end if
		  
		  dim charSetArr() as text = charSet.Split
		  for each thisChar as Text in charSetArr
		    dim beforeReplace as Text
		    
		    //
		    // Since we don't have regular expressions yet...
		    //
		    dim lookFor2 as text = thisChar + thisChar
		    dim lookFor4 as text = lookFor2 + lookFor2
		    
		    //
		    // Replace runs of 4 characters
		    //
		    do
		      beforeReplace = src
		      src = src.ReplaceAll( lookFor4, thisChar, compareOptions, locale )
		    loop until src.Compare( beforeReplace, Text.CompareCaseSensitive, locale ) = 0
		    
		    //
		    // Replace runs of 2 characters
		    //
		    do
		      beforeReplace = src
		      src = src.ReplaceAll( lookFor2, thisChar, compareOptions, locale )
		    loop until src.Compare( beforeReplace, Text.CompareCaseSensitive, locale ) = 0
		  next
		  
		  return src
		  
		  //
		  // I tried this too, but it took twice as long
		  //
		  
		  'dim clearedChars() as text
		  'dim matchedChar as text
		  'for each char as text in src.Split
		  'if char.Compare( matchedChar, compareOptions, locale ) = 0 then
		  '//
		  '// Do nothing
		  '//
		  'continue for char
		  '
		  'elseif charSet.IndexOf( char, compareOptions, locale ) <> -1 then
		  'matchedChar = char
		  'clearedChars.Append matchedChar
		  '
		  'else
		  'matchedChar = ""
		  'clearedChars.Append matchedChar
		  '
		  'end if
		  'next
		  '
		  'dim r as text = Text.Join( clearedChars, "" )
		  'return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TitleCase(src As Text, locale As Xojo.Core.Locale = Nil) As Text
		  return src.TitleCase( locale )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ToBase64(src As Text, asEncoding As Xojo.Core.TextEncoding) As Text
		  return src.ToBase64_MTC( asEncoding )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToBase64_MTC(Extends src As Text, asEncoding As Xojo.Core.TextEncoding) As Text
		  if src.Empty then
		    return ""
		  end if
		  
		  dim mb as Xojo.Core.MemoryBlock = asEncoding.ConvertTextToData( src )
		  return EncodeBase64( mb )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ToCodepoints(src As Text) As Integer()
		  return src.ToCodeponts_MTC
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToCodeponts_MTC(Extends src As Text) As Integer()
		  dim r() as integer
		  for each code as integer in src.Codepoints
		    r.Append code
		  next
		  
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ToHex(src As Text, asEncoding As Xojo.Core.TextEncoding, insertSpaces As Boolean = False) As Text
		  return src.ToHex_MTC( asEncoding, insertSpaces )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToHex_MTC(Extends src As Text, asEncoding As Xojo.Core.TextEncoding, insertSpaces As Boolean = False) As Text
		  if src.Empty then
		    return ""
		  end if
		  
		  dim mb as Xojo.Core.MemoryBlock = asEncoding.ConvertTextToData( src )
		  return M_Text.EncodeHex( mb, insertSpaces )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ToText(a As Auto, locale As Xojo.Core.Locale = Nil, format As Text = "") As Text
		  select case Xojo.Introspection.GetType( a ).FullName
		    
		  case "String"
		    #if not TargetIOS
		      dim s as string = a
		      return s.ToText
		    #endif
		    
		  case "Text"
		    dim t as text = a
		    return t
		    
		  case "Double"
		    dim d as double = a
		    return M_Text.ToText( d, locale, format )
		    
		  case "Single"
		    dim s as single = a
		    return M_Text.ToText( s, locale, format )
		    
		  case "Currency"
		    dim c as currency = a
		    return M_Text.ToText( c, locale )
		    
		  case "Boolean"
		    dim b as boolean = a
		    return M_Text.ToText( b )
		    
		  case "Int64"
		    dim i as Int64 = a
		    return M_Text.ToText( i, locale, format )
		    
		  case "Int32"
		    dim i as Int32 = a
		    return M_Text.ToText( i, locale, format )
		    
		  case "Int16"
		    dim i as Int16 = a
		    return M_Text.ToText( i, locale, format )
		    
		  case "Int8"
		    dim i as Int8 = a
		    return M_Text.ToText( i, locale, format )
		    
		  case "UInt64"
		    dim i as UInt64 = a
		    return M_Text.ToText( i, locale, format )
		    
		  case "UInt32"
		    dim i as UInt32 = a
		    return M_Text.ToText( i, locale, format )
		    
		  case "UInt16"
		    dim i as UInt16 = a
		    return M_Text.ToText( i, locale, format )
		    
		  case "UInt8"
		    dim i as UInt8 = a
		    return M_Text.ToText( i, locale, format )
		    
		  end select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ToText(b As Boolean) As Text
		  if b then
		    return "True"
		  else
		    return "False"
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ToText(c As Currency, locale As Xojo.Core.Locale = Nil) As Text
		  if locale is nil then
		    return c.ToText
		  else
		    return c.ToText( locale )
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ToText(d As Double, locale As Xojo.Core.Locale = Nil, format As Text = "") As Text
		  if locale is nil and format.Empty then
		    return d.ToText
		  else
		    return d.ToText( locale, format )
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ToText(i As Int16, locale As Xojo.Core.Locale = Nil, format As Text = "") As Text
		  if locale is nil then
		    return i.ToText
		  else
		    return i.ToText( locale, format )
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ToText(i As Int32, locale As Xojo.Core.Locale = Nil, format As Text = "") As Text
		  if locale is nil then
		    return i.ToText
		  else
		    return i.ToText( locale, format )
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ToText(i As Int64, locale As Xojo.Core.Locale = Nil, format As Text = "") As Text
		  if locale is nil then
		    return i.ToText
		  else
		    return i.ToText( locale, format )
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ToText(i As Int8, locale As Xojo.Core.Locale = Nil, format As Text = "") As Text
		  if locale is nil then
		    return i.ToText
		  else
		    return i.ToText( locale, format )
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ToText(s As Single, locale As Xojo.Core.Locale = Nil, format As Text = "") As Text
		  if locale is nil and format.Empty then
		    return s.ToText
		  else
		    return s.ToText( locale, format )
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, CompatibilityFlags = (not TargetHasGUI and not TargetWeb and not TargetIOS) or  (TargetWeb) or  (TargetHasGUI)
		Protected Function ToText(s As String) As Text
		  return s.ToText
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ToText(i As UInt16, locale As Xojo.Core.Locale = Nil, format As Text = "") As Text
		  if locale is nil then
		    return i.ToText
		  else
		    return i.ToText( locale, format )
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ToText(i As UInt32, locale As Xojo.Core.Locale = Nil, format As Text = "") As Text
		  if locale is nil then
		    return i.ToText
		  else
		    return i.ToText( locale, format )
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ToText(i As UInt64, locale As Xojo.Core.Locale = Nil, format As Text = "") As Text
		  if locale is nil then
		    return i.ToText
		  else
		    return i.ToText( locale, format )
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ToText(i As UInt8, locale As Xojo.Core.Locale = Nil, format As Text = "") As Text
		  if locale is nil then
		    return i.ToText
		  else
		    return i.ToText( locale, format )
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ToURLEncoded(src As Text, encoding As Xojo.Core.TextEncoding = Nil) As Text
		  return src.ToURLEncoded_MTC( encoding )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToURLEncoded_MTC(Extends src As Text, encoding As Xojo.Core.TextEncoding = Nil) As Text
		  // Emulates the classic framework's EncodeURLComponent
		  // If encoding is not specified, will be UTF-8.
		  
		  if src.Empty then
		    return ""
		  end if
		  
		  if encoding is nil then
		    encoding = Xojo.Core.TextEncoding.UTF8
		  end if
		  
		  dim newChars() as Text
		  
		  dim mb as Xojo.Core.MemoryBlock = encoding.ConvertTextToData( src )
		  dim lastByteIndex as integer = mb.Size - 1
		  for byteIndex as integer = 0 to lastByteIndex
		    dim code as integer = mb.Data.Byte( byteIndex )
		    if code >= 97 and code <= 122 then
		      newChars.Append Text.FromUnicodeCodepoint( code )
		      
		    elseif code >= 65 and code <= 90 then
		      newChars.Append Text.FromUnicodeCodepoint( code )
		      
		    elseif code >= 48 and code <= 57 then
		      newChars.Append Text.FromUnicodeCodepoint( code )
		      
		    else
		      dim converted as text = "%" + code.ToHex( 2 )
		      newChars.Append converted
		      
		    end if
		  next
		  
		  return Text.Join( newChars, "" )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Trim(src As Text) As Text
		  return src.Trim
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TrimLeft(src As Text) As Text
		  return src.TrimLeft
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TrimRight(src As Text) As Text
		  return src.TrimRight
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Uppercase(src As Text, locale As Xojo.Core.Locale = Nil) As Text
		  return src.Uppercase( locale )
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private NthFieldArrCache() As Text
	#tag EndProperty

	#tag Property, Flags = &h21
		Private NthFieldCache As Text
	#tag EndProperty

	#tag Property, Flags = &h21
		Private NthFieldCompareOptionsCache As Integer = -99
	#tag EndProperty

	#tag Property, Flags = &h21
		Private NthFieldLocaleCache As Xojo.Core.Locale
	#tag EndProperty

	#tag Property, Flags = &h21
		Private NthFieldSepCache As Text
	#tag EndProperty


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
