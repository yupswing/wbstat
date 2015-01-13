<%
'####################################################################################################
'### WBSTAT xmlreader class ###
'#
'# * @info		      wbStat 4.3
'# * @author          Simone Cingano <simonecingano@imente.org>
'# * @copyright       2002-2011 Simone Cingano
'# * @license         http://www.opensource.org/licenses/mit-license.php
'# * @version         SVN: $Id: wbstat4_xmlreader.asp 7 2008-09-03 00:20:34Z imente $
'# * @home            http://www.useragents.org/wbstat
'#
'####################################################################################################

'#  INFORMAZIONI, LICENZA E SITO DI RIFERIMENTO:
'#  vedere file wbstat4_class.asp
'####################################################################################################

Class wbstatclass_xmlreader
	Private xmlfile 	'l'oggetto xml
	Private xmlrecord	'un dictionary per gli attributi del nodo corrente
	Private xmlpointer	'il puntatore del nodo
	Private xmleof		'la proprietà EOF
	Private xmltype, xmlversion, xmlrelease 'le proprietà standard di una specifica wbstat
	Private reqtype 'il tipo di specifica richiesto
	Private reqfile 'il file richiesto
	Public compatibility 'versione da controllare
	
	Public default Property get Item(key)
		'*** Restituisce il valore dell'attributo del nodo corrente (record)
		'*** se non esiste un nodo corrente (EOF) restituisce NULL
		if xmleof then
			Item = null
		else
			Item = xmlrecord(key)
		end if
	End Property
	
	Public Property Get Eof()
		'*** Restituisce la proprietà EOF
		Eof = xmleof
	End Property
	
	Public Sub Open(file,spectype)
		'*** RESET VARIABILI DI LAVORO
		xmlpointer = 0
		xmleof = false
		xmltype = "" : xmlversion = "" : xmlrelease = ""
		reqtype = spectype
		reqfile = file
		Set xmlrecord = CreateObject("Scripting.Dictionary")
		xmlrecord.CompareMode = 1
		Set xmlfile = Server.CreateObject("Microsoft.XMLDOM")
		xmlfile.async = False
		'*** CARICA IL FILE INDICATO
		on error resume next
		xmlfile.load file
		if err.number <> 0 then xml_error(0) : exit sub
		on error goto 0
		'*** CARICA LE PROPRIETA' DELLA SPECIFICA
		dim attributes,attr
		on error resume next
		Set attributes = xmlfile.documentElement.attributes
		if err.number <> 0 then xml_error(1) : exit sub 'nessuna proprietà standard
		on error goto 0
		For Each attr in attributes
			select case attr.name
				case "type" : xmltype = attr.value
				case "version" : xmlversion = attr.value
				case "release" : xmlrelease = attr.value
			end select
		Next
		'*** CONTROLLA CONFORMITA' SPECIFICA (VERSIONE E TIPOLOGIA)
		if compatibility <> "" then if left(xmlversion,len(compatibility)) <> compatibility then : xml_error(2)
		if xmltype <> reqtype then : xml_error(3)
		'*** CARICA IL PRIMO RECORD
		call movenext()
	End Sub
	
	Public Sub MoveNext()
		'*** CARICA GLI ATTRIBUTI DAL NODO CORRENTE
		dim attr,attributes
		on error resume next
		Set attributes = xmlfile.documentElement.childNodes(xmlpointer).attributes
		if err.number <> 0 then xmleof = true : exit sub 'nessun nodo -> EOF (end of file)
		on error goto 0
		'*** COPIA GLI ATTRIBUTI NEL DICTIONARY
		For Each attr in attributes : xmlrecord(attr.name) = attr.value : Next
		'*** IMPOSTA IL PUNTATORE AL NODO SUCCESSIVO
		xmlpointer = xmlpointer + 1
		
	End Sub
	
	Public Sub Close()
		'*** IMPOSTA EOF E ELIMINA GLI OGGETTI
		xmleof = true
		Set xmlrecord = Nothing : Set xmlfile = Nothing
	End Sub
	
	Private Sub xml_error(error)
		'*** GESTIONE ERRORI (blocca esecuzione e scarica memoria)
		select case error
			case 0 : response.write "<hr/><b>ERRORE:</b> File wbstatspec inesistente<br/><small>" & reqfile & "</small><hr/>"
			case 1 : response.write "<hr/><b>ERRORE:</b> File wbstatspec non valido o inesistente; nessuna propriet&agrave; standard individuata<br/><small>" & reqfile & "</small>"
			case 2 : response.write "<hr/><b>ERRORE:</b> Versione non compatibile ( " & compatibility & " [req] vs " & xmlversion & " [xml] )<hr/>"
			case 3 : response.write "<hr/><b>ERRORE:</b> Tipo di specifica non corrispondente ( '" & xmlspectype & "' [req]  vs '" & xmltype & "' [xml] )<hr/>"
		end select
		call Close()
		response.end
	end sub
	
End Class
%>
