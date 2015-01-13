<% Option Explicit%>
<!--#Include file="wbstat4_class.asp"-->
<%
dim tempo:tempo=timer
DIm oBrowser,engineversion
Set oBrowser = new wbstatclass
oBrowser.SetPath ""		'wbstat4_class.asp è nella stessa cartella
oBrowser.Options.IncludeUserAgent = false
oBrowser.Options.Cache = false
oBrowser.Options.Lang = "it"
oBrowser.Options.IncludeDescription = true
engineversion = oBrowser.Version

response.write "<p><div style=""text-align:center;font-family:Tahoma;"">"
response.write "<span style=""font-size:1.0em;font-weight:bold"">WBstat " & engineversion & " - Copyleft 2003-2011 Simone Cingano - <a href=""http://www.useragents.org/wbstat"">http://www.useragents.org/wbstat</a></span><br/>"
response.write "<strong style=""font-size:1.2em;color:#7B0A94"">Single useragent strings sniffing</strong>"
response.write "<span style=""font-size:10px;"">"
response.write "<br /><br />"
response.write "&raquo; <b>WBStat " & engineversion & "</b>"
response.write "</span>"
response.write "</div></p>"
response.write "<div style=""width:700px;font-size:0.8em;margin:0 auto;"">"

oBrowser.SetUserAgent(request.QueryString("ua"))
oBrowser.Eval()
oBrowser.Debug "Key",0

response.write "</div>"
response.write "<p><div style=""text-align:center;font-family:Tahoma;"">"
response.write "<span style=""font-size:10px;"">"
response.write "&raquo; <b>Processing Time:</b> " & formatnumber(timer - tempo,4) & "s"
response.write "</span>"
response.write "</div></p>"
%>