<!--#include file="config.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>ASG 2.1.3/2.1.4 WBSTAT4.1.3 UPDATE WIZARD</title>
<style type="text/css">
	body { margin:0;padding:0;font-family:arial,serif; }
	#container { width:700px; margin:20px auto; padding:5px; border:2px solid #0099FF; }
	.dbresponse { font-size:0.8em; }
	form { border:1px solid #0099FF; margin:3px; padding:3px; }
</style>
</head>
<body>
<div id="container">
<h1>ASG 2.1.3/2.1.4 WBSTAT UPDATE WIZARD</h1>
<%

dim step
step = trim(request.QueryString("step"))
if step = "" then step = "0"



dim urs,urs2

dim Reg
Set Reg = New RegExp 	'inizializzo la regexp
Reg.Global = True
Reg.Ignorecase = True

select case step
	case "0"
	
	%><h2>step 0: fase preliminare</h2>
	<p style="color:red;font-weight:bold;">ATTENZIONE: SE HAI GIA' INSTALLATO PRECEDENTEMENTE L'UPDATE WBSTAT 4.0.1 O 4.1.x SUL TUO ASG CHIUDI QUESTO WIZARD E LEGGI IL FILE LEGGIMI.TXT PER AVERE INFORMAZIONI.<br />
	QUESTA PROCEDURA E' PENSATA SOLO PER CHI STA EFFETTUANDO UN AGGIORNAMENTO DA ASG CON WBSTAT 3.x</p>
	<p>wbstat &egrave; l'applicazione che si occupa dell'identificazione si sistemi operativi e browser dalla user-agent dei tuoi visitatori. il sistema, perfettamente integrato con ASG, permette quindi la generazione di statistiche sui sistemi utilizzati per navigare il tuo sito</p>
	<p>dopo circa 3 anni dall'ultimo aggiornamento (2004) &egrave; stata sviluppata una nuova versione di wbstat, molto pi&ugrave; veloce e precisa, e questo aggiornamento ti permetter&agrave; di installarla senza alcuna difficolt&agrave;</p>
	<hr/>
	<p>stai utilizzando ASG versione <%=strAsgVersion%><br />
	<% if strAsgVersion = "2.1.3" or strAsgVersion = "2.1.4" then %>
	la tua versione di ASG &egrave; compatibile con questo aggiornamento
	<% elseif strAsgVersion = "2.1.2" then %>
	l'aggiornamento &egrave; stato pensato per la versione 2.1.3 o 2.1.4, ma non dovrebbero risultare problemi con la tua versione. nel caso ne riscontrassi non esitare a segnalarli sul forum di weppos.com
	<% else %>
	<span style="color:red;">la tua versione non &egrave; compatibile con questo aggiornamento che &egrave; stato espressamente sviluppato per la versione 2.1.3<br />
	si sconsiglia pertanto di installarlo.<br />
	in ogni caso, consci dei problemi che potrebbero sorgere da una installazione su una versione differente dalla 2.1.3, siete liberi di continuare.
	<% end if %></p>
	<hr/>
	<p><span style="color:red;">per iniziare l'aggiornamento &egrave; necessario eseguire alcuni passaggi preliminari.</span><br />
	sono indicati tutti i file che verranno modificati, ma per maggiore sicurezza &egrave; consigliato effettuare un backup dell'intera cartella di ASG</p>
	<ul>
	<li>esegui una copia di backup dell'intero database (<em>"dbstats.mdb"</em>) <strong></strong></li>
	<li>elimina il file <em>"myasg/count.asp"</em> nella cartella ASG</em> <strong></strong></li>
	<li>eseguite backup e cancellate la cartella "myasg/wbstat".</li>
	<li>eseguite backup dei file "myasg/browser.asp", "myasg/os.asp", "myasg/system.asp", "myasg/images/browser.asp", "myasg/images/os.asp".</li>
	</ul>
	<hr/>
	<p>ora si passa alla copia dei nuovi file.<br />
	<span  style="color:red;">caricate i file contenuti nello zip dentro al vostro myasg:</span>
	</p>
	<ul>
	<li>l'intera cartella "myasg/wbstat"</li>
	<li>"myasg/_count.asp"</li>
	<li>"myasg/browser.asp"</li>
	<li>"myasg/os.asp"</li>
	<li>&quot;myasg/system.asp&quot;</li>
	<li>"myasg/images/browser.asp"</li>
	<li>"myasg/images/os.asp"</li>
	</ul>
	<hr/>
	<p>terminato l'upload dei nuovi file possiamo passare alla fase successiva di aggiornamento del database</p>
	<p><a href="?step=1">continua</a></p><%
	
	
	case "1"
	
	%><h2>step 1: aggiornamento database</h2>
	<p>wbstat riconosce ora molti piu' browser e sistemi operativi rispetto alle precedenti versioni.<br />
	nell'ampliamento del riconoscimento, grazie anche a ricerche approfondite, sono stati modificati i nomi di alcuni browser e alcuni sono stati completamente eliminati o integrati con altri.<br />
a causa di questi cambiamenti per rendere il vostro database compatibile con wbstat4, e quindi fornire dei riassuntivi "Browser" e "Sistemi operativi" coerenti, &egrave; necessario applicare alcune modifiche</p>
	<p>questo wizard si occuper&agrave; ora di aggiornare il vostro database.<br />
	<strong>non &egrave; necessario alcun intervento, solo un po' di pazienza: l'aggiornamento potrebbe infatti richiedere da pochi secondi fino a qualche minuto</strong>; durante questo periodo di tempo il browser rimarr&agrave; in attesa della pagina, e al termine visualizzer&agrave; un riassuntivo delle modifiche effettuate.</p>
	<p>nel caso in cui l'aggiornamento non andasse a buon fine (caduta della connessione, blocco da parte dell'utente...) sar&agrave; necessario RIPRISTINARE il database di cui si era effettuato il backup nello step 0 e ritornare in questa pagina per eseguirlo nuovamente.<br />
<span style="color:red;"><strong>&egrave; vitale per la buona riuscita dell'aggiornamento il non essere applicato su un database in parte gi&agrave; aggiornato, altrimenti potrebbero verificarsi spiacevoli incongruenze!</strong><br />
nel caso in cui l'aggiornamento non venga terminato è essenziale ripristinare il vecchio database ed eseguire nuovamente l'aggiornamento da questa pagina.</span></p>
<p>quando siete pronti per l'esecuzione dell'aggiornamento del database cliccate su continua.</p>
<p><a href="?step=2">continua</a></p><%
	
	case "2"
	%><h2>step 2: aggiornamento database effettuato</h2>
	
	<p>il database &egrave; stato aggiornato correttamente.<br />
	per eseguire gli ultimi passaggi clicca su continua</p>
	<p>qui di seguito &egrave; visualizzato un riassuntivo delle modifiche effettuate sui nomi dei browser e dei sistemi operativi</p>
	<p><a href="?step=3">continua</a></p>
	
	<div class="dbresponse">
	<%
		
		'----------------------------------------------------------------------------------------------------
		'----------------------------------------------------------------------------------------------------
		'----------------------------------------------------------------------------------------------------
		' MODIFICHE BROWSER
		'----------------------------------------------------------------------------------------------------
		'----------------------------------------------------------------------------------------------------
				
		'SAFARI
		call updateRecords("system","browser","SAFARI","safari%","safari","")
		
		'FIREBIRD (aggiunta la parte "mozilla")
		call updateRecords("system","browser","FIREBIRD","firebird%","^firebird (\d(?:\.\d)?)","Mozilla Firebird $1")
		
		'FIREFOX (aggiunta la parte "mozilla")
		call updateRecords("system","browser","FIREFOX","firefox%","firefox","")
		
		'INTERNET EXPLORER (eliminata la parte "microsoft")
		call updateRecords("system","browser","MSIE","microsoft internet explorer%","^microsoft internet explorer (\d.\d).*$","Internet Explorer $1")
		
		'SMART EXPLORER (inserito spazio come da nome ufficiale)
		call updateRecords("system","browser","SMART_EXPLORER","smartexplorer%","","Smart Explorer")
		
		'OPERA (viene indicata solo la major version)
		call updateRecords("system","browser","OPERA","opera%","^opera (\d).*$","Opera $1")
		
		'AOL (aol browser è in realtà il browser "aol", esiste poi un browser chiamato AOL Explorer)
		call updateRecords("system","browser","AOL","aol browser%","^aol browser (\d\.\d).*$","AOL $1")
		
		'NETSCAPE NAVIGATOR (da 1 a 4 "netscape navigator", successivi "netscape")
		call updateRecords("system","browser","NETSCAPE","netscape%","netscape","")
		
		'NUTSCRAPE (da 1 a 4 "netscape navigator", successivi "netscape")
		call updateRecords("system","browser","NUTSCRAPE","nutscrape%","netscape","")
		
		'AWEB (case errato)
		call updateRecords("system","browser","AWEB","aweb%","^aweb (\d(?:\.\d)?).*$","AWeb $1")
		
		'MYIE2 (esiste anche una versione 1)
		call updateRecords("system","browser","MYIE2","myie%","^myie2.*$","MyIE 2")
		
		'MULTIZILLA (non è un browser ma una estensione)
		call updateRecords("system","browser","MULTIZILLA","multizilla%","^multizilla (\d(?:\.\d)?).*$","Mozilla $1")
		
		
		'DAP (download accelerator)
		call updateRecords("system","browser","DAP","robot: dap","","Download Accelerator")
		
		'IOPUS (viene mantenuto per compatibilità, in realtà non viene più riconosciuto
		'		le motivazioni sono esplicate nella scheda relativa su useragents.org)
		call updateRecords("system","browser","IOPUS","%iopus%","","Internet Explorer 6.0")
		
		'MSN (robot)
		call updateRecords("system","browser","ROBOT_MSN","robot: microsoft msn","","MSN Explorer 6.0")
		
		'WANADOO (è in realtà il robot di voila.fr)
		call updateRecords("system","browser","ROBOT_WANADOO","robot: wanadoo","","Internet Explorer 6.0")
		
		'ALTAVISTA (non ha più un motore proprio, è da considerarsi yahoo)
		call updateRecords("system","browser","ROBOT_ALTAVISTA","robot: altavista","","Internet Explorer 6.0")
		
		'TEOMA (è il robot di AskJeeves)
		call updateRecords("system","browser","ROBOT_TEOMA","robot: teoma","","Internet Explorer 6.0")
		
		'EXALEAD
		call updateRecords("system","browser","ROBOT_EXALEAD","robot: exalead","","Robot: ExaleadThumbnails")
		
		
		
		'SEGA CONSOLE (non può essere che PlanetWeb)
		call updateRecords("system","browser","SEGACONSOLLE","sega%","","Planetweb")
		
		'AMIGAVOYAGER (ora chiamato solo Voyager)
		call updateRecords("system","browser","VOYAGER","amigavoyager%","^amigavoyager (\d(?:\.\d)?).*$","Voyager $1")
		
		'MOSAIC (aggiunta "NCSA")
		call updateRecords("system","browser","MOSAIC","mosaic%","^mosaic (\d(?:\.\d)?).*$","NCSA Mosaic $1")
		
		'WINDOWS MEDIA PLAYER
		call updateRecords("system","browser","WINDOWSMEDIAPLAYER","microsoft windows media player%","^microsoft windows media player (\d(?:\.\d)?)","Windows Media Player $1")
		
		'NETSHOW
		call updateRecords("system","browser","NETSHOW","microsoft netshow%","^microsoft netshow (\d(?:\.\d)?).*$","Netshow $1")
		
		'LIBWWW
		call updateRecords("system","browser","LIBWWW-PERL","libwww%","","libwww-perl")
		
		'JAVA
		call updateRecords("system","browser","JAVA","java%","","Java")
		
		'NOKIA
		call updateRecords("system","browser","NOKIA","nokia%","","Mobile")
		
		'ALCATEL
		call updateRecords("system","browser","ALCATEL","alcatel%","","Mobile")
		
		'SONYERICCSON
		call updateRecords("system","browser","SONYERICCSON","sonyericsson%","","Mobile")
		
		'MOTOROLA
		call updateRecords("system","browser","MOTOROLA","motorola%","","Mobile")
		
		'BLACKBERRY
		call updateRecords("system","browser","BLACKBERRY","blackberry%","","Mobile")
		
		'----------------------------------------------------------------------------------------------------
		'----------------------------------------------------------------------------------------------------
		'----------------------------------------------------------------------------------------------------
		' MODIFICHE OS
		'----------------------------------------------------------------------------------------------------
		'----------------------------------------------------------------------------------------------------
		
		
		'MAC OS X
		call updateRecords("system","os","MACOS X","mac os 10","","Mac OS X")
		'MACINTOSH (erano divisi, ma in realtà sono sempre sistemi MacOS)
		call updateRecords("system","os","MACINTOSH","macintosh","","Mac OS")
		'WINDOWS 2003 (aggiunta keywork SERVER)
		call updateRecords("system","os","WIN2003","microsoft windows 2003","","Microsoft Windows Server 2003")
		'WINDOWS 2008 (aggiunta keywork SERVER)
		call updateRecords("system","os","WIN2008","microsoft windows 2008","","Microsoft Windows Server 2008")
		'WINDOS NT SENZA VERSIONE
		call updateRecords("system","os","WINNT","microsoft windows nt","","Microsoft Windows NT 3")
		'SUNOS
		call updateRecords("system","os","SUNOS","sun os%","","Solaris")
		'JAVA BASED
		call updateRecords("system","os","JAVA","java","","JavaOS")
		'IRIX
		call updateRecords("system","os","IRIX","irix%","","IRIX")
		'AIX
		call updateRecords("system","os","AIX","aix%","","AIX")
		'IRIX
		call updateRecords("system","os","HP-UX","hp-ux%","","HP-UX")
		'IRIX
		call updateRecords("system","os","AMIGA","amiga%","","AmigaOS")
		
		'ROBOT
		call updateRecords("system","os","ROBOT","robot","","(unknown)")
		'UNIX
		call updateRecords("system","os","UNIX","unix%","","(unknown)")
		'EMPTY
		call updateRecords("system","os","EMPTY","","","(unknown)")
		
		
		%>
	</div>
		<%
		
	case "3"
	
		set urs = objAsgConn.execute("SELECT user_agent FROM "&strAsgTablePrefix&"Detail WHERE os = '(unknown)' OR browser = '(unknown)' GROUP BY user_agent ORDER BY user_agent")
		while not urs.eof
			if trim(urs("user_agent")) <> "" then _
				ua = ua & server.HTMLEncode(urs("user_agent")) & "|"
			urs.movenext
		wend
	
	%><h2>step 3: supporto a wbstat</h2>
	<p>questo passaggio vi permette di aiutare lo sviluppo di WBstat segnalando le user-agent che non sono state riconosciute da Wbstat3 durante il lavoro di identificazione che ha svolto per le vostre statistiche. </p>
	<p>i dati verranno inviati al sito ufficiale di wbstat (<a href="http://www.useragents.org">http://www.useragents.org</a>) in forma TOTALMENTE anonima<br />
	non verranno infatti memorizzate informazioni sui vostri utenti, ma SOLO ed esclusivamente sulle user-agent che non sono state riconosciute.</p>
	<p style="color:red;">se avete gi&agrave; inviato le vostre user-agent e siete stati rimandati a questa pagina o la pagina a cui vengono inviati i dati non fosse disponibile  cliccate su continua</p>
	<form id="wbstatsend" action="http://www.useragents.org/updatewbstat.asp" method="post">
	<p><input type="submit" value="segnala user-agent" />
	<input type="hidden" name="useragents" value="<%=ua%>" /><br/>
	<strong>ecco l'elenco delle user-agent che verranno segnalate:</strong><br/>
	<%=replace(ua,"|","<br/>")%></p>
	</form>
	<p><a href="?step=4">continua</a></p>
		<%
		
	case "4"
	
	%><h2>step 4: ultimi passaggi</h2>
	<p>l'aggiornamento a wbstat4 &egrave; stato completato.<br />
	sono necessari alcuni passaggi finali per rendere nuovamente la vostra applicazione di statistiche preferita operativa.</p>
	<p style="color:red;">rinominate "myasg/_count.asp" con il nome "myasg/count.asp"</p>
	<p>ora andate a controllare se il sistema funziona correttamente. se ci sono problemi potete ripristinare tutti i file (compreso il database!) cui si era fatto precedentemente il backup e ripetere le operazioni di aggiornamento dal primo step</p>
	<p style="color:red;font-weight:bold;">&egrave; molto importante, come ultima operazione, eliminare il file "update-wbstat411.asp"</p>
	<p>un ringraziamento a Weppos per l'ottimo sistema di statistiche, un ringraziamento a Pukos per i test e lo stimolo a riprendere in mano il progetto wbstat</p>
	<p>per qualsiasi problema o richiesta utilizzate il <a href="http://forums.weppos.com/">forum di ASG</a> o il <a href="http://forum.imente.org/viewforum.php?f=6">forum useragents.org</a></p>
	<p><a href="statistiche.asp">vai alle tue statistiche</a> </p>
	<p><strong>01/01/2008<br />
  Simone Cingano</strong>, alias IMENTE</p>
	<%
		
		
	case else
	%>nessuno step valido indicato<%
end select
%>
<%

' PRINCIPALI MODIFICHE

'-------- BROWSER --------
'"Firefox" 							> "Mozilla Firefox"
'"Microsoft Internet Explorer" 		> "Internet Explorer"
'"Opera x.x"						> "Opera x"
'"AOL Browser"						> "AOL"
'"Netscape 4.x"						> "Netscape Navigator 4.x" 'anche 3,2,1
'"Multizilla x.x"					> "Mozilla x.x"
'"Safari xxx"						> "Safari 0" > "Safari 1" > "Safari 2"
'"Robot: iOpus Internet Monitoring" > "Robot: iOpus"
'"Robot: Microsoft MSN"				> "Robot: MSN"
'"Robot: Wanadoo"					> "Robot: Voila.fr"
'"Robot: Altavista"					> "Robot: Yahoo"
'"Robot: Teoma"						> "Robot: Ask Jeeves"
'-------- SISTEMI OPERATIVI --------
'"Mac OS 10"						> "Mac OS X"
'"Macintosh"						> "Mac OS"
'"Microsoft Windows 2003"			> "Microsoft Windows Server 2003"
'"Microsoft Windows 2008"			> "Microsoft Windows Server 2008"

sub selectRecords(table,field,pattern)
	set urs = objAsgConn.execute("SELECT " & field & " FROM "&strAsgTablePrefix&table & " WHERE " & field & " LIKE '" & pattern & "' GROUP BY " & field & " ORDER BY " & field & " DESC")
end sub

sub updateRecords(table,field,id,likes,pattern,replace)
	
	dim tmp,value,executesql,valueadd
	valueadd = ""
	
	response.write "<hr/><b>" & id & "</b><br/>"
		
	Reg.pattern = pattern
	select case lcase(id)
		case "safari"
		Reg.pattern = "safari (\d{1,3})"
		case "firefox"
		Reg.pattern = "firefox (\d\.\d)"
		case "netscape"
		Reg.Pattern = "netscape ((\d)\.\d)"
		valueadd = ".0"
		case "nutscrape"
		Reg.Pattern = "nutscrape ((\d)\.\d)"
		valueadd = ".0"
		case "msie"
		valueadd = ".0"
	end select
		
	set urs = objAsgConn.execute("SELECT " & field & " FROM "&strAsgTablePrefix&table & " WHERE " & field & " LIKE '" & likes & "' GROUP BY " & field & " ORDER BY " & field & " DESC")
	
	while not urs.eof
	
		executesql = false
		value = urs(field)
		
		select case pattern
			case ""
				tmp = replace
				executesql = true
			case "firefox"
				if Reg.Test(value) then
					set Matches = reg.Execute(value)
					if Matches(0).SubMatches(0) = "0.1" then
						tmp = "Mozilla Firefox 1.0" 'prerelease erroneamente marcata 0.1
					else
						tmp = "Mozilla Firefox " & Matches(0).SubMatches(0)
					end if
					executesql = true
				end if
			case "netscape"
				if Reg.Test(value & valueadd) then
					set Matches = reg.Execute(value & valueadd)
					select case cstr(Matches(0).SubMatches(1))
						case 1,2,3,4
						tmp = "Netscape Navigator " & Matches(0).SubMatches(0)
						case else
						tmp = "Netscape " & Matches(0).SubMatches(0)
					end select
					executesql = true
				end if
			case "safari"
				if lcase(value) <> "safari 0" and lcase(value) <> "safari 1" and lcase(value) <> "safari 2" then
				if Reg.Test(value) then
					set Matches = reg.Execute(value)
					if cint(Matches(0).SubMatches(0)) < 73 then
						tmp = "Safari 0.8"
					elseif cint(Matches(0).SubMatches(0)) < 85 then
						tmp = "Safari 0.9"
					elseif cint(Matches(0).SubMatches(0)) < 412 then
						tmp = "Safari 1.0"
					elseif cint(Matches(0).SubMatches(0)) < 522 then
						tmp = "Safari 2.0"
					else
						tmp = "Safari 3.0"
					end if
					executesql = true
				end if
				end if
			case else
				if Reg.test(value & valueadd) then
				tmp = Reg.replace(value & valueadd,replace)
				executesql = true
				end if
		end select
		
		if not executesql then
			response.write value & " --> nessuna modifica<br/>"
		else
			response.write value & " --> <i>" & tmp & "</i><br/>"
			SQL = "UPDATE "&strAsgTablePrefix&"System SET " & field & " = '" & tmp & "' " & _
			  	"WHERE " & field & " = '" & value & "'"
			objAsgConn.execute(SQL)
			SQL = "UPDATE "&strAsgTablePrefix&"Detail SET " & field & " = '" & tmp & "' " & _
			  	"WHERE " & field & " = '" & value & "'"
			objAsgConn.execute(SQL)
		end if
		
		urs.movenext
	
	wend
	

end sub
objAsgConn.Close
%>
</div>
</body>
</html>