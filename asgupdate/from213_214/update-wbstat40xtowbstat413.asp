<!--#include file="config.asp" -->
<%
SQL = "UPDATE "&strAsgTablePrefix&"Detail SET browser = 'Safari 1.0' " & _
	"WHERE browser = 'Safari 1'"
objAsgConn.execute(SQL)
SQL = "UPDATE "&strAsgTablePrefix&"System SET browser = 'Safari 1.0' " & _
	"WHERE browser = 'Safari 1'"
objAsgConn.execute(SQL)
SQL = "UPDATE "&strAsgTablePrefix&"Detail SET browser = 'Safari 2.0' " & _
	"WHERE browser = 'Safari 2'"
objAsgConn.execute(SQL)
SQL = "UPDATE "&strAsgTablePrefix&"System SET browser = 'Safari 2.0' " & _
	"WHERE browser = 'Safari 2'"
objAsgConn.execute(SQL)
SQL = "UPDATE "&strAsgTablePrefix&"Detail SET browser = 'Safari 3.0' " & _
	"WHERE browser = 'Safari 3'"
objAsgConn.execute(SQL)
SQL = "UPDATE "&strAsgTablePrefix&"System SET browser = 'Safari 3.0' " & _
	"WHERE browser = 'Safari 3'"
objAsgConn.execute(SQL)
%>
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
<h1>ASG 2.1.3/2.1.4 WBSTAT UPDATE</h1>
<h2>update da wbstat 4.0.x a 4.1.3</h2>
	<p><strong>L'UPDATE DEL DATABASE E' STATO ESEGUITO CORRETTAMENTE</strong></p>
	<p>- caricare l'intera cartella "wbstat/" sovrascrivendo l'originale nella vostra installazione di ASG<br/>
	   - caricare i file "images/os.asp" e "images/browser.asp" sovrascrivendo gli originali nella vostra installazione di ASG</p>
<p> per testare se non vi è alcun problema eseguite i seguenti passaggi<br/>
<strong>1. <a href="count.asp" target="_blank">aprite "myasg/count.asp"</a> direttamente dal browser</strong><br/>
se ciò che vedete è una pagina bianca significa che è tutto ok<br/>
(altrimenti verra' visualizzato un errore, nel qual caso ripristinate la precedente installazione)<br/>
<strong>2. <a href="browser.asp" target="_blank">aprite "myasg/browser.asp"</a> direttamente dal browser</strong><br/>
se le icone che vedete nella lista vi paiono corrette è tutto ok</p>

<p>se l'update ha avuto successo cancellate il file update-wbstat40xtowbstat413.asp</p>

<p>nel caso in cui vi fossero problemi ripristinate i backup eseguiti
prima dell'update e contattatemi pure sul <a href="http://forums.weppos.com/">forum di ASG</a> o sul <a href="http://forum.imente.org/viewforum.php?f=6">forum useragents.org</a></p>
</div>
</body></html>