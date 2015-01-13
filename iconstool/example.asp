<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>esempio di utilizzo di wbstaticons</title>
</head>
<body>
<h1>informazioni sul tool</h1>
<p>
questi due tool (wbstatosicons.asp e wbstatagenticons.asp) permettono, tramite solo due file, di visualizzare icone per 90 sistemi operativi e 150 browser.<br />
&egrave; consigliato l'utilizzo in abbinamento a WBstat, poich&egrave; i nomi dei browser che restituisce wbstat sono compatibili con questo tool.
</p>
<p>richiamate il file con le icone passando come parametro ?c=NOMEBROWSER+VERSIONE[OPZIONALE]<br/>
es: wbstatagenticons.asp?c=mozilla firefox 1.0 > <img src="wbstatagenticons.asp?c=mozilla firefox 1.0" alt="" />
<h1>esempi pratici</h1>
<p>
icona di firefox<br/>
<img src="wbstatagenticons.asp?c=mozilla firefox" alt="" />
</p>
<p>
icona di internet explorer 4<br/>
<img src="wbstatagenticons.asp?c=internet explorer 4" alt="" />
</p>
<p>
icona di internet explorer 7<br/>
<img src="wbstatagenticons.asp?c=internet explorer 7" alt="" />
</p>
<p>
icona sconosciuta<br/>
<img src="wbstatagenticons.asp?c=qualcosa" alt="" />
</p>
<p>
icona di windows xp<br/>
<img src="wbstatosicons.asp?c=microsoft windows xp" alt="" />
</p>
</body>
</html>
