<!--#include file="config.asp" -->
<%
sub updateRecords(field,value,pattern)
		SQL = "UPDATE "&strAsgTablePrefix&"System SET " & field & " = '" & value & "' " & _
			  "WHERE " & field & " LIKE '" & pattern & "'"
		objAsgConn.execute(SQL)
		SQL = "UPDATE "&strAsgTablePrefix&"Detail SET " & field & " = '" & value & "' " & _
			  "WHERE " & field & " LIKE '" & pattern & "'"
		objAsgConn.execute(SQL)
end sub

call updateRecords("browser","Safari 4.0","Safari 5%")
call updateRecords("os","Microsoft Windows 7","Microsoft Windows Server 2008")
call updateRecords("os","iOS","iPhone")
call updateRecords("os","iOS","iPod")
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>ASG 2.1.5 WBSTAT4.3.1 UPDATE WIZARD</title>
<style type="text/css">
	body { margin:0;padding:0;font-family:arial,serif; }
	#container { width:700px; margin:20px auto; padding:5px; border:2px solid #0099FF; }
	.dbresponse { font-size:0.8em; }
	form { border:1px solid #0099FF; margin:3px; padding:3px; }
</style>
</head>
<body>
<div id="container">
<h1>ASG 2.1.5 WBSTAT UPDATE</h1>
<h2>update da wbstat 4.2.x a 4.3.1</h2>
	<p><strong>L'UPDATE DEL DATABASE E' STATO ESEGUITO CORRETTAMENTE</strong></p>
<p> per testare se non vi è alcun problema eseguite i seguenti passaggi<br/>
<strong>1. <a href="count.asp" target="_blank">aprite "myasg/count.asp"</a> direttamente dal browser</strong><br/>
se ciò che vedete è una pagina bianca significa che è tutto ok<br/>
(altrimenti verra' visualizzato un errore, nel qual caso ripristinate la precedente installazione)<br/>
<strong>2. <a href="browser.asp" target="_blank">aprite "myasg/browser.asp"</a> direttamente dal browser</strong><br/>
è tutto ok se visualizzate le icone dei browser</p>
<hr/>
<h1>ASG 2.1.5 WBSTAT UPDATE</h1>
<h2>update from wbstat 4.2.x a 4.3.1</h2>
	<p><strong>DATABASE UPDATE EXECUTED CORRECTLY</strong></p>
<p> testing<br/>
<strong>1. <a href="count.asp" target="_blank">open "myasg/count.asp"</a> directly in browser</strong><br/>
everything is working properly if you get a blank page<br/>
(otherwise you will get an error, in this case restore the backup of your asg)<br/>
<strong>2. <a href="browser.asp" target="_blank">open "myasg/browser.asp"</a> directly in browser</strong><br/>
everything is working properly if you see browser icons</p>
</div>
</body></html>
