<!--#include file = "wbstat4_decode.asp"-->
<!--#include file = "wbstat4_xmlreader.asp"-->
<%
'####################################################################################################
'### WBSTAT statistic class ###
'#
'# * @info		      wbStat 4.4
'# * @author          Simone Cingano <simonecingano@gmail.com>
'# * @copyright       2002-2015 Simone Cingano
'# * @license         http://www.opensource.org/licenses/mit-license.php
'# * @home            https://github.com/yupswing/wbstat
'#
'#  Grazie al prezioso contributo di Baol74 (http://www.aspxnet.it) e Weppos (http://www.simonecarletti.com)
'####################################################################################################

'#  INFORMAZIONI E SITO DI RIFERIMENTO:
'#  visitate il sito di WBstat per informazioni e aggiornamenti
'#  https://github.com/yupswing/wbstat
'####################################################################################################

'# Copyright (c) 2004-2015 Simone Cingano
'# 
'# Permission is hereby granted, free of charge, to any person
'# obtaining a copy of this software and associated documentation
'# files (the "Software"), to deal in the Software without
'# restriction, including without limitation the rights to use,
'# copy, modify, merge, publish, distribute, sublicense, and/or sell
'# copies of the Software, and to permit persons to whom the
'# Software is furnished to do so, subject to the following
'# conditions:
'# 
'# The above copyright notice and this permission notice shall be
'# included in all copies or substantial portions of the Software.
'# 
'# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
'# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
'# OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
'# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
'# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
'# WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
'# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
'# OTHER DEALINGS IN THE SOFTWARE.
'####################################################################################################

'#  FILE WBSTAT:
'#  
'# + wbstat4
'#	wbstat4_class.asp				questo file. il motore del sistema wbstat
'#	wbstat4_decode.asp				funzioni di decode per wbstat
'#	wbstat4_xmlreader.asp			classe di lettura file xml di wbstat
'#	+ wbstat4_SPEC/
'#		wbstat4_agents.xml			file:  specifiche XML (agents+alcuni robot)
'#		wbstat4_agentsfull.xml		file:  specifiche XML (agents+tutti i robot)
'#		wbstat4_languages.xml		file:  specifiche XML (lingue)
'#		wbstat4_os.xml				file:  specifiche XML (sistemi operativi)
'#		wbstat4_linuxdistro.xml		file:  specifiche XML (distribuzioni linux)
'#		wbstat4_handheld.xml		file:  specifiche XML (dispositivi portatili)
'#	+ wbstat4_ICONS/				le icone di agent/os [opzionale]
'#	+ wbstat4_FLAGS/				le bandiere delle lingue [opzionale]
'####################################################################################################

'����������������������������������������������������������������������������������������������������
'����������������������������������������������������������������������������������������������������

' ********************************* COSTANTI ********************************************************
'### NON MODIFICARE #################################################################################
'# - costanti di identificazione
'#   -- caratteri divisori	>>> qualcosa; qualcosa | (qualcosa,qualcosa) | ...
	Const CST_CHAR_VERSION = 	"[- /=_v]{0,2}" 
'#   -- caratteri di versione	>>> SunOS 4 | Netscape/7.2 | linux-2.4.20 | qtver=5.0 | Mac OS X 10_6_4 ...					
	Const CST_CHAR_IDVERSION = 	"((\d{1,3})[.]?(\d{1,3})?[.]?((?:\.|-|\w)+)?)"			
	Const CST_CHAR_IDVERSIOND = "((\d{1,3})[.]?(\d{1,3})?[.]?((?:\.|-|\d)+)?)"
'#   -- caratteri di spaziatura
	Const CST_CHAR_SPACE = 		" ;,/()"
'#   -- caratteri di delimitazione
	Const CST_CHAR_DELIMITERS = ";,/():."
'# - file XML di specifiche
	Const CST_XML_AGENTFULL =	"wbstat4_agentsfull.xml"	'agent+spider
	Const CST_XML_AGENT =		"wbstat4_agents.xml"	 	'solo agent
	Const CST_XML_LANGUAGE = 	"wbstat4_languages.xml"	 	'lingue
	Const CST_XML_OS = 			"wbstat4_os.xml"	 	 	'sistemi operativi
	Const CST_XML_HANDHELD =	"wbstat4_handheld.xml"		'handheld
	Const CST_XML_LINUXDISTRO =	"wbstat4_linuxdistro.xml"	'distribuzioni linux
'# - INFO
	Const CST_WBSTAT_INFO = _
	"WBSTAT/4.4 AUTH:Simone Cingano VER:Original WEB:http://www.useragents.org/wbstat"
	Const CST_WBSTAT_VERSION = "4.4"
	Const CST_USERAGENTSORG = "http://www.useragents.org/"
'# - ITEMS NAME (dal database)
'	valori costanti, nel qual caso si modificasse il valore nel database
'	� cos� possibile aggiornare wbstat evitando di modificare il codice
'	in molti punti ed evitando quindi possibili spiacevoli dimenticanze
	Const ITEM_FIREFOX = 		"mozilla firefox"
	Const ITEM_SAFARI = 		"safari"
	Const ITEM_OMNIWEB = 		"omniweb"
	Const ITEM_LINUX = 			"linux"
	Const ITEM_WIN2008 =		"windows server 2008"
	Const ITEM_WIN2003 =		"windows server 2003"
	Const ITEM_WINVISTA =		"windows vista"
	Const ITEM_WIN7 =		    "windows 7"
	Const ITEM_WIN8 =		    "windows 8"
	Const ITEM_WIN10 =		    "windows 10"
	Const ITEM_WINXP =			"windows xp"
	Const ITEM_WIN2000 =		"windows 2000"
	Const ITEM_WINNT3 =			"windows nt 3"
	Const ITEM_WINNT4 =			"windows nt 4"
	Const ITEM_WINME =			"windows me"
	Const ITEM_WIN98 =			"windows 98"
	Const ITEM_WIN95 =			"windows 95"
	Const ITEM_WIN31 =			"windows 3.1"
	Const ITEM_MAC =			"mac os"
	Const ITEM_MACOSX =			"mac os x"
	Const ITEM_IOS =			"ios"
	Const ITEM_SOLARIS =		"solaris"
	Const ITEM_BEOS =			"beos"
	Const ITEM_KFREEBSD =		"gnu/kfreebsd"
	Const ITEM_NETSCAPENAVID =	 310
	Const ITEM_JAVAOSID = 		 54
	Const ITEM_BROWSERMOBILEID =   353
	Const ITEM_BROWSERMOBILE = 	"Mobile"
'####################################################################################################
' ***************************************************************************************************

'����������������������������������������������������������������������������������������������������
'����������������������������������������������������������������������������������������������������

Class wbstatclass_Options
	Public SessionID
	'*** DIRETTIVE DI LAVORO
	Public Cache
	Public Lang
	Public wbstat3compatible
	Public Path, PathIcons, PathFlags, PathSpec
	Public Debugging
	Public Guessing,GuessingVersion
	Public Robotknown, Robotprecision
	'*** OPZIONI DI OUTPUT
	Public IncludeDescription
	Public IncludeUserAgent
	Public AddLinuxDistroToOs
	Public FillResult
	Public AgVersionPrecision
	Public AgVersionFull
	Public AgVersionMinorSimple
	Public OsVersionPrecision
	Public LanguageHTTP
	Public workAgent,workAgentversion,workAgentdetails,workAgentlanguage
	Public workOS,workOSversion,workOSdetails,workSpecial, workSpecialHandheld
	

	Private Sub Class_Initialize()
		'impostazioni di base
		SessionID				= "__wbstat4__"
		'*** 
		Cache					= False
		Lang 					= "en"
		wbstat3compatible		= false
		Path					= "wbstat4/"
		PathIcons				= Path & "wbstat4_icons/"
		PathFlags				= Path & "wbstat4_flags/"
		PathSpec				= Path & "wbstat4_spec/"
		Debugging				= False
		Guessing				= True
		GuessingVersion			= True
		Robotknown				= True
		Robotprecision			= False
		'***
		IncludeUserAgent		= True
		IncludeDescription		= False
		FillResult				= ""
		AddLinuxDistroToOs		= False
		'***
		AgVersionPrecision		= 1
		AgVersionFull			= false
		AgVersionMinorSimple	= true
		OsVersionPrecision		= -1
		LanguageHTTP			= True
		'***
		workAgent = True
		   workAgentversion = True
		   workAgentdetails = True
		   workAgentlanguage = True
		workOS = True
		   workOSversion = True
		   workOSdetails = True
		workSpecialHandheld = True
		workSpecial = True
		'***
	End Sub
	
	'recupera la path locale dei file di specifiche
	public function getPathSpec()
		on error resume next
			getPathSpec = Server.MapPath(PathSpec) & "\"
			if err.number<>0 then getPathSpec = PathSpec & "\"
		on error goto 0
	end function
End Class

'����������������������������������������������������������������������������������������������������
'����������������������������������������������������������������������������������������������������

Class wbstatclass
	Public Items						'items dictionary (output)
	Public Options						'options class

	Private Reg 						'RegExp object
	Private XML 						'xmlreader object
	
	Private pUserAgent 					'variabile locale
	Private elabtime 					'tempo di lavoro
	
	'variabili locali di interazione
	Private	pLangCode					'codice lingua
	Private pAgentCat					'categoria dell'agent
	Private pOsArchs					'architetture supportate
	Private pAgentAutoOs				'os automatico
	Private pAgentVersionPrecision	    'precisione dell'agent
	Private pAgentVersionID			    'id pattern di versione
    Private pAgentVersion2CHECK         'force second check (Version/x.x)
	Private pAgentPattern				'pattern per agent
	Private pOSPattern					'pattern per os
	Private pHandheldPattern			'pattern per handheld
	
	'variabili locali di interazione mandate in output
	Private pItemOsId, pItemOsName
	Private pItemOsArch, pItemOsCore, pItemOsDistro
	Private pItemOsVersion
	Private pItemAgentId, pItemAgentName
	Private pItemAgentType, pItemAgentSubType
	Private pItemAgentVersion
	
	Private pItemAgentGuessed
	Private pItemAgentIsRobot,pItemAgentIsBrowser,pItemAgentIsSearchEngine
	

	Private Sub Class_Initialize()
		'*** 'inizializzo xmlreader
		set XML = new wbstatclass_xmlreader 
		XML.compatibility = CST_WBSTAT_VERSION
		'*** 'inizializzo regexp
		Set Reg = New RegExp 	
		Reg.Global = True
		Reg.Ignorecase = True
		'*** 'inizializzo gli items
		Set Items = CreateObject("Scripting.Dictionary")
		Items.CompareMode = 1
		'***
		pItemAgentId = 0
		pItemOsId = 0
		pAgentAutoOs = 0
		'*** 'inizializzo le opzioni
		Set Options = new wbstatclass_Options
	End Sub

	Public default Property get Item(key)
		Item = Items(key)
	End Property

	Public Property Get Version()
		Version = CST_WBSTAT_VERSION
	End Property
	
' ***************************************************************************************************
' ******************************* FUNZIONI GENERALI *************************************************

	Private Function IIF(Cond,CondTrue,CondFalse)	'funzione IIF
		If Cond=True then IIF =	CondTrue : else : IIF=CondFalse : end if
	End Function

	Private Function ToBool(value)					'funzione True/False
		ToBool = IIF(value=1,True,False)
	End Function

	Private Function Fill(Value,IsString,Doit)
		Fill = Trim(cstr(Value))
		If Value="" and Doit then Fill = IIF(IsString,trim(options.FillResult),"0")
	End Function
	
	private function cleanRegExp(value)
		Reg.pattern = "([*\[({})\].\\?])"
		cleanRegExp = Reg.replace(value,"\$1")
	end function
	
	private function cleanIconName(value)
		Reg.pattern = "[!/ &]"
		cleanIconName = Reg.replace(value,"-") & ".gif"
	end function
	
	'estrae da una stringa URL solo il nome di dominio
	' E.G. >>> http://www.imente.it  >>> "imente"
	'      >>> http://ciao.com	 >>> "ciao"
	Private Function domainname(domain)
	dim tmp,Matches
		tmp = ""
		Reg.Pattern = "http\:\/\/(?:www.)?([^.]+)\."
		if Reg.Test(domain) then
		    set Matches = reg.Execute(domain)
		    tmp = Matches(0).SubMatches(0)
		end if
	domainname = tmp	
	End Function
	
' ***************************************************************************************************
' ******************************* FUNZIONI DI INPUT *************************************************

	Public Sub SetUserAgent(Value)
		pUserAgent = Value
	End Sub

	Public Sub SetPath(Path)
		Options.Path = Path
		Options.PathIcons = Path & "wbstat4_icons/"
		Options.PathFlags = Path & "wbstat4_flags/"
		Options.PathSpec = Path & "wbstat4_spec/"
	End Sub	

' ***************************************************************************************************
' ************************************** MAIN *******************************************************

	Public Sub Eval()	'Sub principale
	
	elabtime=timer
	
	If Options.Cache And Session(Options.SessionID) <> "" then
		LoadCache()
	else
		
		'init variabili
		pItemAgentIsRobot = false
		pItemAgentIsBrowser = false
		pItemAgentIsSearchEngine = false
		Items.RemoveAll()
		pOSPattern = "" : pAgentPattern ="" : pAgentAutoOS = 0
		Redim pItemAgentVersion(3), pItemOSVersion(3), pItemOsDistro(1)
		pItemAgentVersion(0) = "" : pItemAgentVersion(1) = ""
		pItemAgentVersion(2) = "" : pItemAgentVersion(3) = ""
		pItemOSVersion(0) = "" : pItemOSVersion(1) = ""
		pItemOSVersion(2) = "" : pItemOSVersion(3) = ""
		pItemOsDistro(0) = "" : pItemOsDistro(1) = ""
		
		'imposta la user-agent
		if pUserAgent = "" and Options.Debugging then pUserAgent = trim(request.querystring("UA"))
		If pUserAgent = "" then pUserAgent = Request.ServerVariables("HTTP_USER_AGENT")
		
		'## USERAGENT
		If Options.IncludeUserAgent then
			Items("UserAgent") = 	 Fill(pUserAgent, True, False)
			Items("UserAgent.Url") = Fill(UserAgent_Url(), True, False)
		end if
		
		'## agent
		if options.workAgent then
			Agent_Eval()
			'## agent:VERSION
			if options.workAgentVersion then
				if pItemAgentGuessed then
					if Options.GuessingVersion then pItemAgentVersion = Guess_Version()
				else
					pItemAgentVersion = Agent_Version()
				end if
			end if
		end if
		
		'## OS
		if options.workOS then
			OS_Eval()
			'## OS:VERSION
			if options.workOSversion then pItemOsVersion = OS_Version()
			'## OS:DETAILS
			if options.workOSdetails and not pItemAgentIsRobot then
				pItemOsArch = OS_arch()
				pItemOsDistro = OS_distro()
				Items("OS.Distro.Name") = Fill( pItemOsDistro(0), True, False)
				Items("OS.Distro.Version") = Fill( pItemOsDistro(1), False, False)
			end if
		end if
		
		'## agent
		if options.workAgent then
			'## agent:LANGUAGE
			if pItemAgentIsRobot then
				Items("Agent.Language.Code") = ""
				if options.workAgentLanguage then _
					Items("Agent.Language") = options.FillResult
			else
				pLangCode = Agent_languagecode()
				Items("Agent.Language.Code") = Fill(pLangCode ,True, False)
				'	*** Agent.Language MANTENUTA PER COMPATIBILITA' CON WBSTAT 3.x
				if options.workAgentLanguage then
					if options.wbstat3compatible then
					Items("Agent.Language") = Fill(DecodeLanguage(pLangCode),True,True)
					else
					Items("Agent.Language") = Fill(WBstat_DecodeLang(options.lang,pLangCode),True,True)
					end if
					if options.pathFlags <> "" then _
					Items("Agent.Language.Flag") = Fill(WBstat_printFlag(options.PathFlags,left(pLangCode,2)),True,False)
				end if
			end if
			'## agent:DETAILS
			if options.workAgentDetails then
				if pItemAgentIsRobot then
					Items("Agent.Cookie") = 0
				else
					Items("Agent.Security") = Fill(Agent_Security(), True, False)
					Items("Agent.Cookie") = 	Fill(Agent_Cookie(), False, True)
				end if
			end if
		end if
		
		'## SPECIAL
		if options.workSpecial then
			if pItemAgentIsRobot then
				Items("Special.Mozilla.Version") = 0
				Items("Special.Gecko.Version.Release") = 0
				Items("Special.Gecko.Version") = 0
				Items("Special.Presto.Version") = 0
				Items("Special.Framework.Version") = 0
				Items("Special.AppleWebKit.Version") = 0
				Items("Special.Trident.Version") = 0
			else
				Items("Special.Mozilla.Version") =       Fill(Mozilla_Version(), False, True)
				Items("Special.Gecko.Version.Release") = Fill(Gecko_Release(), False, True)
				Items("Special.Gecko.Version") =         Fill(IIF(Items("Special.Gecko.Version.Release") <> 0,Gecko_Version(),0), False, True)
				Items("Special.Presto.Version") =        Fill(Presto_Release(), False, True)
				Items("Special.Framework.Version") =     Fill(Frameworkdotnet(), False, True)
				Items("Special.AppleWebKit.Version") =   Fill(AppleWebKit_Version(), False, True)
				Items("Special.Trident.Version") =       Fill(Trident_Version(), False, True)
				Items("Special.Screen") = 			     Fill(Screen(), True, False)
			end if
			'## SPECIAL:HANDHELD
			if options.workSpecialHandheld then
				if pItemOsCore = 90 or pItemOsCore = 92 or pItemOsId = ITEM_JAVAOSID or lcase(pItemOsName) = ITEM_LINUX then
				  Items("Special.Handheld.Name") = 	 	 Fill(Handheld_Name(), True, false)
				  Items("Special.Handheld.Version") =  	 Fill(Handheld_Version(), False, False)
				end if
			end if
		end if
		
		'*** COMPILAZIONE ITEMS
		if options.workAgent then
			Items("Agent") = 				Fill(Agent_Resolve(), True, True)
			Items("Agent.Name") = 			Fill(pItemAgentName, True, True)
			Items("Agent.Database.Id") =  	Fill(pItemAgentId, False, True)
			Items("Agent.Type") = 			Fill(pItemAgentType, false, false)
			Items("Agent.Subtype") =  		Fill(pItemAgentSubType, False, false)
	        Items("Agent.Version.Major") = 	Fill(pItemAgentVersion(1),False,True)
	        Items("Agent.Version.Minor") = 	Fill(pItemAgentVersion(2),False,True)
	        Items("Agent.Version.Rest") = 	Fill(pItemAgentVersion(3),False,True)
	        Items("Agent.Version") = 		Fill(pItemAgentVersion(0),False,False)
			Items("Agent.IsSearchEngine") = Fill(pItemAgentIsSearchEngine, False, false)
			Items("Agent.IsRobot") = 		Fill(pItemAgentIsRobot, False, false)
			Items("Agent.IsBrowser") = 		Fill(pItemAgentIsBrowser, False, false)
			Items("Agent.Guessed") = 		Fill(pItemAgentGuessed, False, false)
			if pItemAgentIsSearchEngine then
				Items("Agent.SearchEngine") = Fill(pAgentCat, False, false)
			elseif pItemAgentIsBrowser then
				Items("Agent.Engine") = 		Fill(pAgentCat, False, false)
			end if
		end if
		if options.workOS then
			Items("OS") = 				Fill(OS_Resolve(), True, True)
			Items("OS.Name") = 			Fill(pItemOsName, True, True)
			Items("OS.Database.Id") = 	Fill(pItemOsId, False, True)
			Items("OS.Core") =			Fill(pItemOsCore ,True,	False)
			Items("OS.Arch") =			Fill(pItemOsArch ,True,	False)
	        Items("OS.Version.Major") = Fill(pItemOsVersion(1),False,True)
	        Items("OS.Version.Minor") = Fill(pItemOsVersion(2),False,True)
	        Items("OS.Version.Rest") = 	Fill(pItemOsVersion(3),False,True)
	        Items("OS.Version") = 		Fill(pItemOSVersion(0),False,False)
		end if
		
		'*** COMPILAZIONE DESCRIZIONI
		if options.IncludeDescription then
			if options.workOS then
				Items("OS.Core.Description") = 	WBstat_DecodeCore(options.lang,pItemOsCore)
				Items("OS.Database.Link") = 	IIF(pItemOsId<>0,"<a href='" & CST_USERAGENTSORG &_
												"database-view.asp?cat=9&amp;id=" & pItemOsId &_
												"'>informazioni su useragents.org</a>","")
				if options.workOSdetails and not pItemAgentIsRobot then _
					Items("OS.Arch.Description") = WBstat_DecodeArch(options.lang,pItemOsArch)					 				
			end if
			if options.workAgent then
				if pItemAgentIsSearchEngine then
					Items("Agent.SearchEngine.Description") = WBstat_DecodeSearchEngine(options.lang,pAgentCat)
				elseif pItemAgentIsBrowser then
					Items("Agent.Engine.Description") = 	WBstat_DecodeEngine(options.lang,pAgentCat)
				end if
				Items("Agent.Type.Description") = 	WBstat_DecodeType(options.lang,pItemAgentType)
				Items("Agent.Subtype.Description") = 	WBstat_DecodeSubType(options.lang,pItemAgentSubType)
				Items("Agent.Database.Link") = IIF(pItemAgentId<>0,"<a href='" & CST_USERAGENTSORG &_
												"database-view.asp?cat=" & pItemAgentSubType &_
												"&amp;id=" & pItemAgentId & "'>informazioni su useragents.org</a>","")
			end if
		end if
		
		'*** COMPILAZIONE ICONE
		if options.pathicons <> "" then
			if options.workAgent then
				Items("Agent.Icon") = IIF(pItemAgentId<>0,_
								options.PathIcons & "ag-" & cleanIconName(pItemAgentName),_
								options.PathIcons & "ag-none.gif")
			end if
			if options.workOS then
				Items("OS.Icon") = 		IIF(pItemOsId<>0,_
								options.PathIcons & "os-" & cleanIconName(pItemOsName),_
								options.PathIcons & "os-none.gif")
			end if
		end if
		
		'*** COMPILAZIONE INFO
		Items("WBstat.info")	=	CST_WBSTAT_INFO
		If options.cache then WriteCache()
		Items("WBstat.cachedata") = False
		
	End If
	'*** COMPILAZIONE TIMER
	Items("WBstat.timer") = formatnumber(timer - elabtime,4)*1000 & ""
	End Sub
	
' ***************************************************************************************************
' ************************************* CACHING *****************************************************

	'	### DeleteCache()
	'	elimina tutti gli item in cache
	Public Sub DeleteCache()
		Session.Contents.Remove(Options.SessionID)
	End Sub

	'	### LoadCache()
	'	ricarica tutti gli item dalla cache (utilizza una session)
	Private Sub LoadCache()
	Dim Values
		Values = Session(Options.SessionID)
		values = Replace(Values,"=1|","=cbool(1)|")
		values = Replace(Values,"=0|","=cbool(0)|")
		Values = Replace(Values,"@@@","Items(""")
		Values = Replace(Values,"===",""")=")
		Values = Replace(Values,"|",VbCrLF)
		Execute Values
		Items("WBstat.cachedata") = True
	End Sub

	'	### WriteCache()
	'	scrive tutti gli item nella cache (utilizza una session)
	Private Sub WriteCache()
	Dim Res,Elm,thisval
		Res = ""
		For Each Elm in Items.Keys
			if  Items(Elm) <> "" then
				thisval = ""
				if items(elm) = True and thisval = "" then thisval = 1
				if items(elm) = False and thisval = "" then thisval = 0
				if thisval = "" then thisval = """" & Items(Elm) & """"
				Res = Res & "@@@" &  Elm & "===" & thisval & "|"
			end if
		Next
		Session(Options.SessionID) = Res
	End Sub
	
' ***************************************************************************************************
' *************************************** DEBUG *****************************************************

	'	### Debug()
	'	### 	@sort:	ordinamento [key,value]
	'	### 	@OpenCloseId: id di apertura chiusura [se singolo usare True/False]
	'	stampa in html tutti gli item della classe
	'	utilizzato per debug
	Public Sub Debug(Sort,OpenCloseID)
	Dim Elm,Value,bgcolor,dData,Attrib,Id,Title
	dim osName, agentName
		Attrib = ""
		if pUserAgent = "" then pUserAgent = Request.ServerVariables("HTTP_USER_AGENT")
		If OpenCloseID or OpenCloseID > 0 then
			If OpenCloseID=True then OpenCloseID=0
			id = "wbstat4_tableinfo_" & OpenCloseID
			Attrib = "id=""" & Id & """ style=""display:none;"
			Title = "<div style=""cursor:pointer"" onclick=""javascript:var obj=" & id & _
			".style;obj.display=(obj.display==''?'none':'')""> + " & pUserAgent & "</div>"
		else
			Title = pUserAgent
			Attrib = "style="""
		end if
		Set dData = Server.CreateObject ("ADODB.Recordset")
		dData.CursorLocation = 3
		dData.Fields.Append "Key",200,255
		dData.Fields.Append "Value",200,255
		dData.Open()
		For Each Elm in Items.Keys
			dData.AddNew
			dData("Key") = Elm
			Value = Items(Elm)
			if dData("Key") = "Agent.Name" then agentName = Value 
			if dData("Key") = "OS.Name" then osName = Value 
			
			dData("Value") = IIF(IsNull(Value),"",Value)
			dData.Update()
		Next
		If Sort <> "" then dData.Sort = Sort
		dData.MoveFirst
		Response.Write("<table style=""border-collapse:collapse;border:2px inset #4E4E4E;font-size:0.9em;font-family:verdana,serif;width:100%;background-color:#DFE2E6;"" class=""wbstat4-table-main""><tr><td style=""font-weight:bold;background-color:#263440;padding:5px;color:#FFF;"" class=""wbstat4-useragent"">" & Title & "</td></tr><tr><td><table " & Attrib & "border-collapse:collapse;font-size:0.9em;font-family:verdana,serif;width:100%;"" class=""wbstat4-table-details""><tr style=""background-color:#D9E1E8;border-bottom:1px solid #B0B0B0;"" class=""wbstat4-h""><td style=""padding:2px;width:175px;"">Key</td><td>Value</td></tr>")
		While Not dData.EOF
			If Value="" or IsNull(Value) then value ="&nbsp;"
			select case dData("Key")
				case "OS", "Agent","UserAgent"
				Attrib = "style=""height:30px;background-color:#D9BFC0;border-bottom:1px solid #B0B0B0;font-weight:bold;"" class=""wbstat4-t"""
				case "WBstat.info","WBstat.cachedata","WBstat.timer"
				Attrib = "style=""background-color:#CEE4CD;border-bottom:1px solid #B0B0B0;font-weight:bold;"" class=""wbstat4-i"""
				case "Special.AppleWebKit.Version"
				Response.Write("<tr style=""height:30px;background-color:#D9BFC0;border-bottom:1px solid #B0B0B0;font-weight:bold;"" class=""wbstat4-t""><td style=""padding:2px;"">Special</td>" & _
						   	   "<td></td></tr>")
				case else
				Attrib = IIF(Attrib = _
				"style=""border-bottom:1px solid #CED8E1;background-color:#CFD9E2;"" class=""wbstat4-a""",_
				"style=""border-bottom:1px solid #D9E1E8;background-color:#D9E1E8;"" class=""wbstat4-b""",_
				"style=""border-bottom:1px solid #CED8E1;background-color:#CFD9E2;"" class=""wbstat4-a""")
			end select
			Response.Write("<tr " & Attrib & "><td style=""padding:2px;"">" & dData("Key") & "</td>" & _
						   "<td>")
			if options.pathicons <> "" then
			if  dData("Key") = "OS" then response.write("<img src=""" & options.PathIcons & "os-" & cleanIconName(osName) & """ style=""margin:-2px 0 -6px 0;border:1px solid #888;width:20px;height:20px;background-color:#FFF;"" alt="""" /> ")
			if  dData("Key") = "Agent" then response.write("<img src=""" & options.PathIcons & "ag-" & cleanIconName(agentName) & """ style=""margin:-2px 0 -6px 0;border:1px solid  #888;width:20px;height:20px;background-color:#FFF;"" alt="""" /> ")
			if  dData("Key") = "Agent.Language.Flag" then response.write("<img src=""" & dData("Value") & """ style=""border:1px solid #666666;margin:0 0 -3px;"" alt="""" /> ")
			end if
			response.write(dData("Value") & "</td></tr>")
			dData.MoveNext()
		Wend
		Response.Write("</table></td></tr></table>")
		dData.Close()
		Set dData = Nothing
	End Sub
	
' ***************************************************************************************************
' ***************************** FUNZIONI DI ELABORAZIONE ********************************************

	'	### GetVersion()
	'	restituisce la versione (di OS o agent) in base alle specifiche
	'	calcola la versione indicando solo major, major+minor o full
	'	necessaria per restituire il nome dell'agent o dell'os completo
	Private Function GetVersion(Item)
	Dim VersionPrecision,Res,Temp
	dim VerMaj,VerMin,VerRest
	VerMaj = IIF(Item="Agent",pItemAgentVersion(1),pItemOsVersion(1))
	VerMin = IIF(Item="Agent",pItemAgentVersion(2),pItemOsVersion(2))
	VerRest = IIF(Item="Agent",pItemAgentVersion(3),pItemOsVersion(3))
		VersionPrecision = _
			IIF(Item = "Agent",IIF(pAgentVersionPrecision<>-1 and not Options.AgVersionFull,pAgentVersionPrecision,Options.AgVersionPrecision),Options.OsVersionPrecision)
		if VersionPrecision > -1 then
		Res = VerMaj
		If Res="" then Res = "0"
		If VersionPrecision >= 1 then
		   Res =  Res & "." & _
			   IIF(VerMin<>"", _
				   IIF(Item = "Agent" and Options.AgVersionMinorSimple, _
					   left(VerMin,1),_
			   		   VerMin),_
				   "0")
		   If VersionPrecision = 2 then
		 	Res =  Res & "." & _
			IIF(VerRest<>"",VerRest,"0")
		   End if
		end if
		end if
		If Res="0" or Res="0.0" or Res="0.0.0" then Res=""
		GetVersion = Res
	End Function

	'************************************ Agent	*********************************************

	'	### Agent_Resolve()
	'	restituisce il nome completo dell'agent [Agent.Name] (il dato pi� importante con OS.Name)
	private Function Agent_Resolve()
	dim Res
		if cstr(pItemAgentType)="0" then
			'se l'agent � un robot aggiunge "Robot: " se richiesto
			Res = IIF(Options.RobotPrecision and pItemAgentName <> "Robot" and pItemAgentName <> "",_
				"Robot: " & pItemAgentName,_
				pItemAgentName)
		else
			'eccezione per firefox 1.0 inizialmente rilasciato come firefox 0.10
			if lcase(pItemAgentName) = ITEM_FIREFOX then _
				if pItemAgentVersion(1) = "0" and left(pItemAgentVersion(2),1) = "1" then _
			   			pItemAgentVersion(1) = 1 : pItemAgentVersion(2) = 0
			   
			Res = pItemAgentName & " " & GetVersion("Agent")
		end if
		
	Agent_Resolve = Res
	End Function

	'	### Agent_Eval()
	'	identifica l'agent e imposta tutte le variabili pItem relative all'agente
	Private Sub Agent_Eval()
	dim file,bypass
	Dim AgentName,AgentSubtype,AgentType
		AgentName = ""
		bypass = false
		pAgentCat=0
		pItemAgentId = 0
		pAgentVersionPrecision=-1
		pAgentVersionID=""
		
		if Options.Robotknown then 
			file = Options.getPathSpec() & CST_XML_AGENTFULL
		else 
			file = Options.getPathSpec() & CST_XML_AGENT
		end if
		
		call XML.Open(file,"agent")
		Do While Not XML.EOF
		  pAgentPattern = XML("Pattern")
		  Reg.Pattern = pAgentPattern
		  
		  'se � l'ultimo id ed contiene "compatible" non pu� essere netscape navigator
		  if clng(XML("Id")) = ITEM_NETSCAPENAVID then if instr(pUserAgent,"compatible") <> 0 then bypass = true
		  
		  if Reg.Test(pUserAgent) and not(bypass) then
			 AgentName = cstr(XML("Name"))
			 AgentSubtype = cstr(XML("Type"))
			 AgentType = left(AgentSubtype,1)
			 pItemAgentId = clng(XML("Id"))
			 pAgentAutoOs = clng(XML("AutoOs"))
			 pAgentCat = clng(XML("Cat"))
			 if XML("VersionID") <> "" then
				'spezza la stringa versionID nelle sue due componenti
				pAgentVersionPrecision = left(cstr(XML("VersionID")),1)
				select case pAgentVersionPrecision
					case 8
					pAgentVersionPrecision = -2
					case 9
					pAgentVersionPrecision = Options.AgVersionPrecision
				end select
				if len(XML("VersionID")) > 1 then
                    pAgentVersionID = right(XML("VersionID"),len(XML("VersionID"))-1)
                    pAgentVersionID = replace(pAgentVersionID,"%CHR_IDV%",CST_CHAR_IDVERSION)
                    pAgentVersionID = replace(pAgentVersionID,"%CHR_IDVD%",CST_CHAR_IDVERSIOND)
                    pAgentVersionID = replace(pAgentVersionID,"%CHR_VER%",CST_CHAR_VERSION)
                    pAgentVersion2CHECK = False
                    if instr(pAgentVersionID,"$VERSION") then
                        pAgentVersionID = replace(pAgentVersionID,"$VERSION","")
                        pAgentVersion2CHECK = True
                    end if
				end if
			 end if
			 exit Do
		  end if
		  XML.MoveNext
		Loop
		XML.Close
		
		'guessing
		pItemAgentGuessed = False
		if AgentName = "" then
			pItemAgentGuessed = True
			AgentName = Guess_name()
			AgentType = "9" : AgentSubType = "999" 'considera categoria sconosciuto
		end if
		
		'output
		if AgentType = "0" then pItemAgentIsRobot = true
		if AgentSubtype = "000" then pItemAgentIsSearchEngine = true
		if AgentType = "5" then pItemAgentIsBrowser = true
		pItemAgentName = AgentName
		pItemAgentType = AgentType
		pItemAgentSubType = AgentSubtype
	End Sub

	'	### Agent_Version()
	'	calcola la versione dell'agent e imposta le variabili pItem relative
	Private Function Agent_Version()
	dim Res(3),Full,Major,Minor,Rest,Matches,bypass,versresults
	Major = "" : Minor = "" : Rest = "" : Full = ""
	

        bypass = false
        if lcase(pItemAgentName) = "" then
			Full = ""
			bypass = true
        'safari e omniweb hanno un sistema di versioning anomalo
        'che necessita di una gestione particolare
        elseif lcase(pItemAgentName) = ITEM_SAFARI then
            pAgentVersionPrecision = 0
            Reg.Pattern = "(?:safari|applewebkit)\/(\d+)\.?(\d+|)"
            if Reg.Test(pUserAgent) then
                set Matches = reg.Execute(pUserAgent)
                versresults = WBstat_DecodeSafariVersion(clng(Matches(0).SubMatches(0)),clng("0"&Matches(0).SubMatches(1)))
                pAgentVersionPrecision = versresults(5)
                Major = versresults(1) : Minor = versresults(2)
                Rest = versresults(3) : Full = versresults(4)
                bypass = true
            end if
        elseif lcase(pItemAgentName) = ITEM_OMNIWEB then
            pAgentVersionPrecision = 0
            eg.Pattern = "omniweb\/[v]?(\d+)\.?(\d+|)"
            if Reg.Test(pUserAgent) then
                set Matches = reg.Execute(pUserAgent)
                versresults = WBstat_DecodeOmniwebVersion(clng(Matches(0).SubMatches(0)),clng("0"&Matches(0).SubMatches(1)))
                pAgentVersionPrecision = versresults(5)
                Major = versresults(1) : Minor = versresults(2)
                Rest = versresults(3) : Full = versresults(4)
                bypass = true
            end if
        'agent con versionid
        elseif pAgentVersionID <> "" then
			 Reg.Pattern = replace(pAgentVersionID,"%PATTERN%",pAgentPattern)
			 if Reg.Test(pUserAgent) then
				set Matches = reg.Execute(pUserAgent)
				Major = Matches(0).SubMatches(2)
				Minor = Matches(0).SubMatches(3)
				Rest = Matches(0).SubMatches(4)
				Full = Matches(0).SubMatches(1)
                bypass = true
			 end if
        end if

        'agent comune o speciale ma non riconosciuto
        if bypass = false then
			 Reg.Pattern = pAgentPattern & CST_CHAR_VERSION & CST_CHAR_IDVERSION
			 if Reg.Test(pUserAgent) then
				set Matches = reg.Execute(pUserAgent)
				Major = Matches(0).SubMatches(2)
				Minor = Matches(0).SubMatches(3)
				Rest = Matches(0).SubMatches(4)
				Full = Matches(0).SubMatches(1)
			 end if
        end if

        if pAgentVersion2CHECK then
              redim versresults(5)
              'check "Version/x.x" (solo per agent con versionid che contiene "$VERSION"
              Reg.Pattern = "version\/(\d+)\.(\d+)\.?(\d+|)"
              if Reg.Test(pUserAgent) then
                  set Matches = Reg.Execute(pUserAgent)
                  versresults(0) = True
                  versresults(1) = clng(Matches(0).SubMatches(0))
                  versresults(2) = clng(Matches(0).SubMatches(1))
                  versresults(3) = clng("0"&Matches(0).SubMatches(2))
                  versresults(4) = versresults(1) & "." & versresults(2) & IIF(versresults(3)>0,"." & versresults(3),"")
                  'if different use second check
                  if (Major > versresults(1)) or _
                     (Major = versresults(1) and Minor > versresults(2)) or _
                     (Major = versresults(1) and Minor = versresults(2) and Rest >= versresults(3)) then
                     'la versione "generale" � minore con il second check
                     'viene utilizzato il second check
                     Major = versresults(1) : Minor = versresults(2)
                     Rest = versresults(3) : Full = versresults(4)
                  end if
              end if
        end if

		Res(0) =  	Fill( Full,  False , False)
		Res(1) = 	Fill( Major, False , True)
		Res(2) = 	Fill( Minor, False , True)
		Res(3) =  	Fill( Rest,  False , True)
		Agent_Version = Res

	End Function
	
' ***************************************************************************************************

	'	### Agent_Cookie()
	'	identifica dinamicamente il supporto dei cookie da parte dell'agente
	'	FUNZIONA SOLO SE WBSTAT VIENE RICHIAMATO IN UNA PAGINA SUCCESSIVA AL PRIMO ACCESSO
	'	(in pratica la pagina dove risiede wbstat non deve essere la prima richiesta HTTP al sito)
	'	(sono validi anche richiami di oggetti interni alla pagina)
	Private Function Agent_Cookie()
		If Request.ServerVariables("HTTP_COOKIE") = "" Then
			Agent_Cookie = 0
		else
			Agent_Cookie = 1
		End if
	End Function
	
' ***************************************************************************************************

	'	### Agent_Security()
	'	riconosce il livello di criptazione supportato dal agent
	Private Function Agent_Security()
	dim Res,Matches
		Reg.Pattern = "(?:\[|[ ]|,|;)([uin])(?:\]|[ ]|,|;|\))"
		if Reg.Test(pUserAgent) then
			Set Matches = reg.Execute(pUserAgent)
			Res = Matches(0).SubMatches(0)
		end if
		Res = uCase (Res)
		Agent_Security = Res
	End Function
	
' ***************************************************************************************************


	'	### Agent_languagecode()
	'	identifica il codice lingua
	Private Function Agent_languagecode()
		Dim LanguageCode
		LanguageCode = ""
		
		if Options.LanguageHTTP and not Options.Debugging then _
			LanguageCode = ExtractLanguage(lcase(Request.ServerVariables("HTTP_ACCEPT_LANGUAGE")))
		if LanguageCode = "" then _
			LanguageCode = ExtractLanguage(pUseragent)
		
		Agent_languagecode = LanguageCode
	End Function
	
	'	### ExtractLanguage()
	'	estrae un codice lingua da una stringa
	private function ExtractLanguage(Value)	
		dim Res ,Matches,Patterns(2),Elm
		Patterns(0)="^([a-z]{2}(?:-[a-z]{2})?)[,;\])]"
		Patterns(1)="(?:[ ;,\[(]|^)([a-z]{2}-[a-z]{2})[ ,;\])]"
		Patterns(2)="(?:[ ;,\[(]|^)([a-z]{2})[,;\])]"
		for Each Elm in Patterns
			Reg.Pattern = Elm
			if Reg.Test(Value) then
				set Matches = reg.Execute(Value)
				Res = Matches(0).SubMatches(0)
				'lingue automaticamente non valide (OS = sistema operativo, CE = windows ce)
				if Res <> "OS" and Res <> "CE" then : exit for : else : res = "" : end if
			end if
		next
		ExtractLanguage = lcase(Res)
	end function

	'	### DecodeLanguage()
	'	decodifica il codice lingua
	'	*** MANTENUTA PER COMPATIBILITA' CON WBSTAT 3.x
	Private Function DecodeLanguage(Value)
		call XML.Open(Options.getPathSpec & CST_XML_LANGUAGE,"language")
		
		Do While Not XML.EOF
			Reg.Pattern = "^" & cstr(XML("Pattern"))
			if Reg.Test(Value) then
				DecodeLanguage = cstr(XML("Name"))
				exit Do
			end if
			XML.MoveNext()
		Loop
		XML.Close
	End Function


' ***************************************************************************************************
	'************************************ UserAgent Various **************************************

	'	### UserAgent_Url() [SPERIMENTALE]
	'	identifica un qualsiasi url all'interno della useragent
	Private Function UserAgent_Url()
	dim Res,Matches
	
		Res= ""
		Reg.Pattern = "((http\:\/\/)?(www)?([^\@\.\[\]" & CST_CHAR_SPACE & _
		"]{3,}\.){1,2}[^\@\.\[\]\d" & CST_CHAR_SPACE & "]{2,3})(?:[\@\.\[\]" & _
		CST_CHAR_SPACE & "].*)?$"
		if Reg.Test(pUserAgent) then
			set Matches = reg.Execute(pUserAgent)
			if Matches(0).SubMatches(1) = "" then Res = "http://"
			Res = Res & Matches(0).SubMatches(0)
		end if
		
	UserAgent_Url=lcase(Res)
	End Function


' ***************************************************************************************************
	'************************************ Operating System **************************************

	'	### OS_Eval()
	'	identifica il sistema operativo
	Private Function OS_Eval()
	Dim OsName,find
		find = False
		OsName = ""
		pItemOsId = 0
		pItemOsCore = 0
		
		'se � un robot non controlla il sistema operativo
		if not pItemAgentIsRobot and pAgentAutoOs <> -1 then
		
			call XML.Open(Options.getPathSpec & CST_XML_OS,"os")
			Do While Not XML.EOF
				if pAgentAutoOs <> 0 then
					'se l'agent utilizza UN solo sistema operativo
					'viene automaticamente identificato (tramite ID)
					if pAgentAutoOs = clng(XML("Id")) then find = True
				else
					'altrimenti esegue normale ricerca
					Reg.Pattern = cstr(XML("Pattern"))
					if Reg.Test(pUserAgent) then find = True
				end if
				if find then
					pOSPattern = cstr(XML("Pattern"))
					OsName = cstr(XML("Name"))
					pItemOsId = clng(XML("Id"))
					pItemOsCore = clng(XML("Type"))
					pOsArchs = cstr(XML("Arch"))
					exit do
				end if
				XML.MoveNext
			Loop
			XML.Close
			
			'### MOBILE PATCH
			' se il dispositivo � handheld (palmare o cellulare)
			' e nessun agente � identificato imposta quello generale			
			if pItemOsCore = 92 and pItemAgentId = 0 then
			   pItemAgentType = "5"
			   pItemAgentSubType = "521"
			   pItemAgentId = ITEM_BROWSERMOBILEID
			   pItemAgentName = ITEM_BROWSERMOBILE
			   pItemAgentVersion(0) = ""
			   pItemAgentVersion(1) = ""
			   pItemAgentVersion(2) = ""
			   pItemAgentVersion(3) = ""
			end if
			'### END MOBILE PATH
		
		end if
		
		If OsName = "" then pItemOsCore = 99
		
		pItemOsName = OsName
	End Function
	
	'	### OS_distro()
	'	se trovato restituisce la distribuzione di linux
	'	la distribuzione � spesso indicata nella versione del kernel (es: Linux x.x.xx-distro)
	Private Function OS_Distro()
		dim Res(1),Matches,file,ver
		Res(0) = ""	'name
		Res(1) = ""	'version
		if lcase(pItemOsName) = ITEM_KFREEBSD then 
		  Res(0) = "Debian"
		elseif lcase(pItemOsName) = ITEM_LINUX then
			call XML.Open(Options.getPathSpec() & CST_XML_LINUXDISTRO,"linuxdistro")
			Do While Not XML.EOF
				Reg.Pattern = cstr(XML("pattern"))
				if Reg.Test(pUserAgent) then
					Res(0) = cstr(XML("name"))
					if cstr(XML("patternver")) <> "" then
						Reg.Pattern = cstr(XML("patternver"))
						if Reg.Test(pUserAgent) then
							set Matches = Reg.Execute(pUserAgent)
							Res(1) = Matches(0).SubMatches(0)
						end if
					end if
					exit do
				end if
				XML.MoveNext
			loop
			XML.Close
		end if
		OS_Distro = Res
	End Function

	'	### OS_version()
	'	restituisce la versione del sistema operativo
	Private Function OS_version()
	Dim Res(3),Full,Major,Minor,Rest,Matches
	Major = "" : Minor = "" : Rest = "" : Full = ""
	if pItemOsId <> 0 then
        if pItemOsCore = 15 or pItemOsCore = 16 then
                select case lcase(pItemOsName)
                    case ITEM_WIN2008 	: Major = "6" : Minor = "1" : Full = "6.1"
                    case ITEM_WINVISTA	: Major = "6" : Minor = "0" : Full = "6.0"
                    case ITEM_WIN7	    : Major = "6" : Minor = "1" : Full = "6.1"
                    case ITEM_WIN8   	: Major = "6" : Minor = "2" : Full = "6.2"
                    case ITEM_WIN10	    : Major = "10" : Minor = "0" : Full = "10.0"
                    case ITEM_WIN2003 	: Major = "5" : Minor = "2" : Full = "5.2"
                    case ITEM_WINXP 	: Major = "5" : Minor = "1" : Full = "5.1"
                    case ITEM_WIN2000	: Major = "5" : Minor = "0" : Full = "5.0"
                    case ITEM_WINNT4 	: Major = "4" : Minor = "0" : Full = "4.0"
                    case ITEM_WINNT3 	: Major = "3" : Minor = "0" : Full = "3.0"
                    case ITEM_WINME 	: Major = "4" : Minor = "9" : Full = "4.9"
                    case ITEM_WIN98 	: Major = "4" : Minor = "1" : Full = "4.1"
                    case ITEM_WIN95 	: Major = "4" : Minor = "0" : Full = "4.0"
                    case ITEM_WIN31 	: Major = "3" : Minor = "1" : Full = "3.1"
                end select
        else
            select case lcase(pItemOsName)
               case ITEM_MACOSX:
                  Reg.Pattern = "mac os x ((10)[._](\d+)[._]?(\d+|))"
                  if Reg.Test(pUserAgent) then
                    set Matches = reg.Execute(pUserAgent)
                    Major = clng(Matches(0).SubMatches(1))
                    Minor = clng(Matches(0).SubMatches(2))
                    Rest = clng("0"&Matches(0).SubMatches(3))
                    Full = replace(Matches(0).SubMatches(0),"_",".")
                  else
                    Full = "10"
                    Major = "10"
                  end if
               case ITEM_LINUX:
                  Reg.Pattern = "linux" & CST_CHAR_VERSION &  CST_CHAR_IDVERSION
                  if Reg.Test(pUserAgent) then
                    set Matches = reg.Execute(pUserAgent)
                    Major = Matches(0).SubMatches(1)
                    Minor = Matches(0).SubMatches(2)
                    Rest = Matches(0).SubMatches(3)
                    Full = Matches(0).SubMatches(0)
                  end if
               case ITEM_IOS:
                  Reg.Pattern = "(?:cpu|iphone)[ ]?os[ ]?((\d+)[._](\d+)[._]?(\d+|))"
                  if Reg.Test(pUserAgent) then
                    set Matches = reg.Execute(pUserAgent)
                    Major = clng(Matches(0).SubMatches(1))
                    Minor = clng(Matches(0).SubMatches(2))
                    Rest = clng("0"&Matches(0).SubMatches(3))
                    Full = replace(Matches(0).SubMatches(0),"_",".")
                  end if
               case ITEM_SOLARIS, ITEM_MAC:
                    Full = ""
               case ITEM_BEOS:
                    Major = "5"
                    Full = "r5"
               case Else
                  Reg.Pattern = lcase(pOSPattern) & CST_CHAR_VERSION & "?" &  CST_CHAR_IDVERSION
                  if Reg.Test(pUserAgent) then
                     set Matches = reg.Execute(pUserAgent)
                     Major = Matches(0).SubMatches(2)
                     Minor = Matches(0).SubMatches(3)
                     Rest = Matches(0).SubMatches(4)
                     Full = Matches(0).SubMatches(1)
                  end if
            end select
        end if
	end if

	Res(0) = Fill(Full,False,False)
	Res(1) = Fill(Major,False,True)
	Res(2) = Fill(Minor,False,True)
	Res(3) = Fill(Rest,False,True)
	OS_version = Res
	End Function

' ***************************************************************************************************

	'	### OS_arch()
	'	restituisce l'architettura del sistema
	'	riconosciuto in base alle informazioni conosciute sull'OS o da useragent
	Private Function OS_arch()
	Dim Res,Matches
	Res = ""
	if pItemOsId <> 0 then
	  if len(pOsArchs) = 1 then
		'se il sistema operativo identificato supporta una sola architettura
		'viene automaticamente segnalata...
		Res = pOsArchs
	  else
		'...altrimenti esegue una ricerca sulla useragent in base al tipo di sistema operativo
		select case pItemOsCore
		case 16 'windows nt
			Res = "0"
			Reg.Pattern = "(?:x(?:86)?|ia|amd|win|wow)[_]?64" 'x86_64, x64, ia64, amd64, win64, wow64...
			if Reg.Test(pUserAgent) then Res = "8" 'x64 - 8/9 � indifferente
			Reg.Pattern = "alphaserver" : if Reg.Test(pUserAgent) then Res = "o" 'alphaserver (anche in ELSE)
		case 20 'mac
			if lcase(pItemOsName) = ITEM_MAC then 		res = "A"
			if lcase(pItemOsName) = ITEM_MACOSX then 	res = "B"
			Reg.Pattern = "ppc|power(?:[ ]|_|-)?pc" : if Reg.Test(pUserAgent) then Res = "B" 'mac powerpc
			Reg.Pattern = "m?68k|68000" : if Reg.Test(pUserAgent) then Res = "A" 'mac motorola 68000
			Reg.Pattern = "intel" : if Reg.Test(pUserAgent) then Res = "0" 'mac intel
		case 70,95,92,90 'architetture proprietarie o sconosciute
			Res = ""
		case else 'altre
			Reg.Pattern = "alpha" : if Reg.Test(pUserAgent) then Res = "O" 'alpha
			Reg.Pattern = "alphaserver" : if Reg.Test(pUserAgent) then Res = "o" 'alphaserver (anche in 16)
			Reg.Pattern = "arm" : if Reg.Test(pUserAgent) then Res = "T" 'arm
			Reg.Pattern = "ppc|power[ _-]?pc" : if Reg.Test(pUserAgent) then Res = "0" 'powerpc
			Reg.Pattern = "m?68k|68000" : if Reg.Test(pUserAgent) then Res = "A" 'motorola 68000
			Reg.Pattern = "sparc|sun4[cmu]" : if Reg.Test(pUserAgent) then Res = "E" 'sparc
			Reg.Pattern = "parisc|hp[-]?pa" : if Reg.Test(pUserAgent) then Res = "G" 'parisc
			Reg.Pattern = "mips" : if Reg.Test(pUserAgent) then Res = "L" 'mips
			Reg.Pattern = "vax" : if Reg.Test(pUserAgent) then Res = "P" 'vax
			Reg.Pattern = "s390" : if Reg.Test(pUserAgent) then Res = "U" 'IBM S/390
			
			Reg.Pattern = "i(\d)?86|ia[_]?32" : if Reg.Test(pUserAgent) then Res = "0" 'i386
			Reg.Pattern = "(?:x(?:86)?|ia|amd)[_]?64" 'x86_64, x64, ia64, amd64...
			if Reg.Test(pUserAgent) then Res = "8" 'x64 - 8/9 � indifferente
			
			'scovate su internet, a quale architettura si riferiscono?
			'??? (cris|sh) ???
		end select
		
		'** se non � stata identificata alcuna architettura ma il sistema supporta i386 / m68k
		'   viene considerata tale (per criterio di larga diffusione)
		'** solaris viene considerato SPARC se nessuna architettura � stata identificata
		if Res = "" and lcase(pItemOsName) = ITEM_SOLARIS then Res = "E"
		if Res = "" and instr(pOsArchs,"0") then Res = "0"
		if Res = "" and instr(pOsArchs,"A") then Res = "A"
	  end if
	end if
	OS_arch = Res
	End Function
	
' ***************************************************************************************************

	'	### OS_resolve()
	'	restituisce il nome completo del sistema operativo [OS.Name] (il dato pi� importante con Agent.Name)
	private Function OS_resolve()
	dim Res
		if pItemAgentIsRobot then
			Res = "Robot"
		else
			if pItemOsCore = 30 and lcase(pItemOsName) <> ITEM_LINUX and lcase(pItemOsName) <> ITEM_BEOS then
				Res = pItemOsName & " " & GetVersion("OS")
			else
				Res = trim(pItemOsName)
				if lcase(pItemOsName) = ITEM_LINUX and Options.AddLinuxDistroToOs then Res = Res & " (" & pItemOsDistro(0) & ")"
				if left(lcase(Res),7) = "windows" then Res = "Microsoft " & Res
			end if
		end if
		Os_Resolve = Res
	End Function

	'******************************** Gecko, Mozilla, Framework, Screen *************************

	'	### Gecko_Version()
	'	se l'agent si basa su gecko restituisce la versione (valore numerico: x.x)
	Private Function Gecko_Version()
	Dim Res,Matches
		Reg.Pattern = "rv:(\d+\.\d+)"
		if Reg.Test(pUserAgent) then
			set Matches = reg.Execute(pUserAgent)
			Res = Matches(0).SubMatches(0)
			Set Matches = nothing
		end if
		Gecko_Version = Res
	End Function

	'	### Gecko_Release()
	'	se l'agent si basa su gecko restituisce la release (valore data: YYYYMMDD)
	Private Function Gecko_Release()
	Dim Res,Matches
		Reg.Pattern = "gecko\/(\d{1,8})"
		if Reg.Test(pUserAgent) then
			set Matches = reg.Execute(pUserAgent)
			Res = Matches(0).SubMatches(0)
			Set Matches = nothing
		end if
		Gecko_Release = Res
	End Function

	'	### Presto_Release()
	'	se l'agent si basa su presto restituisce la release (valore numerico x.x.x)
	Private Function Presto_Release()
	Dim Res,Matches
		Reg.Pattern = "presto\/(\d+\.\d+\.\d+)"
		if Reg.Test(pUserAgent) then
			set Matches = reg.Execute(pUserAgent)
			Res = Matches(0).SubMatches(0)
			Set Matches = nothing
		end if
		Presto_Release = Res
	End Function
	
	'	### AppleWebKit_Version()
	'	se l'agent si basa su applewebkit restituisce la versione (valore numerico: xxx)
	Private Function AppleWebKit_Version()
	Dim Res,Matches
		Reg.Pattern = "applewebkit\/(\d{1,3}(?:[.]\d+)?)"
		if Reg.Test(pUserAgent) then
			set Matches = reg.Execute(pUserAgent)
			Res = Matches(0).SubMatches(0)
			Set Matches = nothing
		end if
		AppleWebKit_Version = Res
	End Function
	
	'	### Trident_Version()
	'	se l'agent si basa su internet explorer restituisce la versione di Trident
	Private Function Trident_Version()
	Dim Res,Matches
		Res = 0
		Reg.Pattern = "trident\/(\d+\.\d+)"
		if Reg.Test(pUserAgent) then
			set Matches = reg.Execute(pUserAgent)
			Res = Matches(0).SubMatches(0)
            Set Matches = nothing
		end if
		Trident_Version = Res
	End Function

	'	### Mozilla_Version()
	'	restituisce la versione di compatibilit� di mozilla (vedi articolo su useragents.org)
	Private Function Mozilla_Version()
	Dim Res,Matches
		Reg.Pattern = "^(mozilla)" & CST_CHAR_VERSION & CST_CHAR_IDVERSION
		if Reg.Test(pUserAgent) then
			set Matches = reg.Execute(pUserAgent)
			if Matches(0).SubMatches(2) & "." & Matches(0).SubMatches(3) = "." then
			  Res = 0
			elseif Matches(0).SubMatches(2) & "." & Matches(0).SubMatches(3) = Matches(0).SubMatches(2) & "." then
			  Res = Matches(0).SubMatches(2)
			else
			  Res = Matches(0).SubMatches(2) & "." & Matches(0).SubMatches(3)
			end if
			Set Matches = nothing
		end if
		Mozilla_version = Res
	End Function


	'	### Frameworkdotnet()
	'	restituisce l'ultima versione del framework.net
	Private Function Frameworkdotnet()
	dim Res,Matches,Elm,last,lastreal
	    Res = ""
	    'Reg.Pattern = "\.net clr (\d+(\.\d+)*)" 'FULL
	    Reg.Pattern = "\.net clr (\d+(?:\.\d+)?)"
	    if Reg.Test(pUserAgent) then
		set Matches = reg.Execute(pUserAgent)
		last = 0
		lastreal = 0
		for Each Elm In Matches
			if last < replace(Elm.SubMatches(0),".","") then
			last = replace(Elm.SubMatches(0),".","")
			lastreal = Elm.SubMatches(0)
			end if
		next
		Res = lastreal
	    end if
	Frameworkdotnet = Res
	End Function

	'************************************ Handheld **********************************************

	'	### Handheld_Name()
	'	restituisce il nome del dispositivo (cellulare o palm)
	Private Function Handheld_Name()
	Dim Res,Matches,file
	Res = ""
	pHandheldPattern = ""
		call XML.Open(Options.getPathSpec() & CST_XML_HANDHELD,"handheld")
		Do While Not XML.EOF
			Reg.Pattern = cstr(XML("pattern"))
			if Reg.Test(pUserAgent) then
				set Matches = reg.Execute(pUserAgent)
				Res = cstr(XML("name"))
				pHandheldPattern = replace(cstr(XML("patternver")),"%n",lcase(Matches(0).SubMatches(0)))
				Set Matches = nothing
				exit do
			end if
			XML.MoveNext
		loop
		XML.Close
	Handheld_Name = Res
	end function
	
	'	### Handheld_Version()
	'	restituisce la versione del dispositivo
	Private Function Handheld_Version()
	Dim Res,Matches
	Res = ""
	if pHandheldPattern <> "" then
		Reg.Pattern = pHandheldPattern
		if Reg.Test(pUserAgent) then
			set Matches = reg.Execute(pUserAgent)
			Res = Matches(0).SubMatches(0)
			Set Matches = nothing
		end if
	end if
	Handheld_Version = Res
	end function
	
	'	### Screen()
	'	restituisce la dimensione dello schermo
	Private Function Screen()
	Dim Res,Matches
	Res = ""
		Reg.Pattern = "(\d{3,4}x\d{3,4})"
		if Reg.Test(pUserAgent) then
		 set Matches = reg.Execute(pUserAgent)
		 Res = Matches(0).SubMatches(0)
		end if
	Screen = Res
	end function

	'************************************ Guess *************************************************

	'	### Guess_Name()
	'	tenta di "indovinare" il nome dell'agent seguendo dei pattern comuni
	Private Function Guess_Name()
	dim Res,Matches,Patterns(5),Elm
	
		'Guess_name esegue 4 pattern per tentare di identificare il nome dell'agent
		'testandoli in ordine di importanza
		
		'0 = "........ nome/x.x"						SOLO AL TERMINE DELLA STRINGA CON VERSIONE)
		'1 = "mozilla/x.x (... nome/x.x ...) ..."		DOPO MOZILLA IL PRIMO NOME CON VERSIONE
		'2 = "mozilla/x.x (... nome) ..."				DOPO MOZILLA IL PRIMO NOME
		'3 = "nome ..."									SOLO A INIZIO STRINGA
		'4 = "........ nome"							SOLO AL TERMINE DELLA STRINGA
		'5 = "... nome ..."								UN QUALSIASI NOME
		
		'MOZILLA = stringa "Mozilla"
		'NOME = qualsiasi lettera con delimitazione
	
		Patterns(0)="([^" & CST_CHAR_DELIMITERS & "]+)" & CST_CHAR_VERSION & "?\d+(?:(?:\.[\d\w]+)+)?[" & CST_CHAR_DELIMITERS & "]*$"
		Patterns(1)="^mozilla\/\d\.\d+[^\d]+[" & CST_CHAR_DELIMITERS & "]([^" & CST_CHAR_DELIMITERS & "]+)" & CST_CHAR_VERSION & "?\d+(?:(?:\.[\d\w]+)+)?(?:[^\w]|$)"
		Patterns(2)="^mozilla\/\d\.\d+[^\w]*[" & CST_CHAR_DELIMITERS & "]([^" & CST_CHAR_DELIMITERS & "]+)"
		Patterns(3)="^([^" & CST_CHAR_DELIMITERS & "]+)"
		Patterns(4)="([^" & CST_CHAR_DELIMITERS & "]+)(?:" & CST_CHAR_VERSION & "?\d+(?:(?:\.[\d\w]+)+)?)?[" & CST_CHAR_DELIMITERS & "]*$"
		Patterns(5)="([^" & CST_CHAR_DELIMITERS & "]+)"
		
		dim i
		i=-1
		for Each Elm in Patterns
			i=i+1
			Reg.Pattern = Elm
			if reg.test(pUserAgent) and Res = "" then
				set Matches = reg.Execute(pUserAgent)
				Res = trim(Matches(0).SubMatches(0))
				if lcase(Res) = "compatible" or lcase(Res) = "mozilla" then : Res = "" : else : exit for : end if
			end if
		next

		if Res = "http:" then Res = items("UserAgent.Url")
		
	Guess_Name = Res
	End Function
	
	'	### Guess_Version()
	'	tenta di "indovinare" la versione dell'agent basandosi sul nome individuato
	private Function Guess_Version()
	dim Matches, Res(3)
	Res(0) = "" : Res(1) = "" : Res(2) = "" : Res(3) = ""
	   if pItemAgentVersion(0) = "" or pItemAgentVersion(0) = "0" then
	         Reg.Pattern = cleanRegExp(pItemAgentName) & CST_CHAR_VERSION & CST_CHAR_IDVERSION
	         if Reg.Test(pUserAgent) then
	            set Matches = reg.Execute(pUserAgent)
	            Res(0) = 	Fill(Matches(0).SubMatches(0),False,False)
	            Res(1) = 	Fill(Matches(0).SubMatches(1),False,True)
	            Res(2) = 	Fill(Matches(0).SubMatches(2),False,True)
	            Res(3) = 	Fill(Matches(0).SubMatches(3),False,True)
	         end if
	   end if
	   Guess_Version = Res
	End Function
	
' ***************************************************************************************************
' ************************************* TERMINATE ***************************************************

	Private Sub Class_Terminate()
		Items.RemoveAll
		Set Options = nothing
		Set Items = Nothing
		Set Reg = Nothing
	End Sub

End Class

'####################################################################################################
'#  WBStat statistic class - Copyleft 2002-2010 Simone Cingano										#
'####################################################################################################
%>
