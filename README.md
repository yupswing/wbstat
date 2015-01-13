
<h3><a id="site"></a> WBstat changelog</h3>
<h4>changelog</h4>
<div class="version">
<p class="tb">4.3</p>
<p class="s">ultima versione  [ 18/10/2010 ]</p>
<ul class="c">
<li>feature » special.presto</li>
<li>bugfix » opera 10</li>
<li>bugfix » safari, safari mobile</li>
<li>new agents » opera mobile, chromeframe, thunderbird, namoroka, firefox mobile, wyzo, adobeair, netfront, shredder, facebook, linkedin...</li>
<li>new os » windows 7, iOS, Chrome OS, Windows Mobile, Windows Phone...</li>
<li>edit » rewritten all windows regexp</li>
<li>info » +11 browser [177], +5 os [95], +11 spider [258], lingua [181]</li>
<li>info » +3 distro [19], +4 handheld [14]</li>
<li class="i">per implementazione su sistema che utilizza wbstat3.1 consultare la <a href="develop-wbstat.asp?w=docs">documentazione</a></li>
<li class="i">per informazioni più dettagliate consultare le <a href="develop-wbstat-release4.asp">release notes 4.x</a></li>
</ul>

<p class="tb">4.2</p>
<p class="s">data di rilascio 03/09/2008</p>
<ul class="c">
<li>bugfix » versioni safari e omniweb</li>
<li>bugfix » minori correzioni</li>
<li>info » +16 browser [166], +1 os [90], +28 spider [247], lingua [181]</li>
<li>info » +3 distro [16], +1 handheld [10]</li>
<li class="i">per implementazione su sistema che utilizza wbstat3.1 consultare la <a href="develop-wbstat.asp?w=docs">documentazione</a></li>
<li class="i">per informazioni più dettagliate consultare le <a href="develop-wbstat-release4.asp">release notes 4.x</a></li>
</ul>

<p class="tb">4.1</p>
<p class="s">data di rilascio 01/01/2008</p>
<ul class="c">
<li>new » formato specifiche xml riscritto</li>
<li>new » identificazione handheld (nome e versione dispositivi cellulari)</li>
<li>new » identificazione version AppleWebKit</li>
<li>edit » distribuzioni linux e handheld su specifiche xml</li>
<li>edit » lievi modifiche al sistema di categorizzazione</li>
<li>edit » modifiche ai nomi degli item risultanti (OS.Distro.x e Special.x)</li>
<li>bugfix » versioni safari e omniweb</li>
<li>bugfix » identificazione sistemi mobile</li>
<li>bugfix » identificazione versione firefox betas</li>
<li>improve » varie ottimizzazioni di codice</li>
<li>new » file di esempio nello zip</li>
<li>info » ELIMINATE FUNZIONI DI ISTANZA CREATEWBSTAT (consulta documentazione!)</li>
<li>info » +10 browser [150], +14 os [89], +2 spider [219], lingua [181]</li>
<li>info » +4 distro [13], +9 handheld [9]</li>
<li class="i">per implementazione su sistema che utilizza wbstat3.1 consultare la <a href="develop-wbstat.asp?w=docs">documentazione</a></li>
<li class="i">per informazioni più dettagliate consultare le <a href="develop-wbstat-release4.asp">release notes 4.x</a></li>
</ul>

<p class="tb">4.0</p>
<p class="s">data di rilascio 15/08/2007</p>
<ul class="c">
<li>new » ampliato database utilizzando risorse useragents.org</li>
<li>change » integrata in un unico file xml le versioni windows</li>
<li>new » nuovo sistema di categorizzazione</li>
<li>improve » gecko.version</li>
<li>improve » os.type diventa os.core e os.distro</li>
<li>improve » descrizione dei campi in output</li>
<li>improve » output del debug</li>
<li>improve » identificazione lingua secondo standard ISO 639</li>
<li>change » browser.url diventa useragent.url</li>
<li>bugfix e ampie ottimizzazioni sul codice di wbstat3.1 </li>
<li>delete » sistema di riconoscimento ACTandCAP sui browser!!! </li>
<li>info » browser [140], sistemi operativi [75], spider [217], lingua [181] </li>
<li>info » distro linux [9]</li>
<li class="i">per implementazione su sistema che utilizza wbstat3.1 consultare la <a href="develop-wbstat.asp?w=docs">documentazione</a></li>
<li class="i">per informazioni più dettagliate consultare le <a href="develop-wbstat-release4.asp">release notes 4.x</a></li>
<li><b>tempo medio di esecuzione di una elaborazione di user agent: 0,16 secondi</b></li>
</ul>

<p class="t">3.1</p>
<p class="s">data di rilascio 03/06/2004</p>
<ul class="c">
<li>aggiunto sistema riconoscimento (non certo!) distribuzioni linux (Debian, RedHat, Mandrake, Gentoo, Slackwave, SuSE)</li>
<li>aggiunto file wbstat3_LISTDATABASE.ASP [ visualizza in XML (con XLS di stile) tutti i dati del database in maniera diretta ]</li>
<li>migliorato » in caso di assenza di Browser_name, ma presenza di URL, utilizza il Domainname come Browser_name</li>
<li>bugfix » browser Mozilla e Mozilla Version</li>
<li>bugfix » mancata dichiarazione di variabili </li>
<li>bugfix » wbstat3_createfunc.asp (BUG! inversione booleane BRLANG e BRACTCAP)</li>
<li class="i">CONTROLLATE LE VOSTRE STRINGHE DI FUNZIONE 'CREATEWBSTAT()'!!!</li>
<li>info » browser [119], sistemi operativi [50], spider [110], lingua [55] </li>
</ul>

<p class="tb">3.0</p>
<p class="s">lo sviluppo della versione 3.0 dalla versione 2.4 è stato ampliamente ideato e realizzato con l'amichevole collaborazione di Baol74 [lorenzomail[@]tiscali.it]. GRAZIE!!!</p>
<ul class="c">
<li>nuovo sistema distinzione browser (tipo e sottotipo)</li>
<li>potenziamento riconoscimento browser e robot</li>
<li>modifica struttura XML e Database per migliore rapporto dati/velocità</li>

<li>utilizzo XML per i file di specifiche (più veloce caricamento dati) [baol74]</li>
<li>funzione di lingua spostata in specifiche (meno codice, più veloce)</li>
<li>funzioni ripulite e migliorate [baol74]</li>
<li>utilizzo di un minor numero di variabili (più veloce) [baol74]</li>
<li>inserimento funzioni generiche per velocizzazione codice [baol74]</li>
<li>creazione database per le specifiche e relativo traspositore nei file XML (solo development) [baol74]</li>
<li>aggiunta una classe di OPZIONI per la personalizzazione anche on-the-fly (un tempo solo costanti) [baol74]</li>
<li>creata funzione di debug che stampa a schermo i risultati [baol74]</li>
<li>migliorate le funzioni di guessing</li>

<li>migliorate funzioni per il livello di versione (e il riconoscimento delle stesse)
nuovo: oggetto Browser.Engine, per i browser conosciuti identifica anche il motore (IE, Mozilla...)</li>
<li>nuovo: sistema di Caching (opzionale) dei dati attraverso le session [baol74]</li>
<li>funzione flash eliminata (impossibile avere dati certi) </li>
<li>bugfix vari</li>
<li>funzione di guessing potenziata e affinata (identificazione funzionante)</li>
<li>info » browser [119], sistemi operativi [50], spider [110], lingua [55] </li>
<li><b>funzioni aggiuntive:</b> mozilla ver, gecko ver, framework.net, specifiche browser (VB, JS, CSS...), lingua user agent</li>
<li><b>tempo medio di esecuzione di una elaborazione di user agent: 0,20 secondi</b></li>
</ul>

<p class="tf">2.5</p>
<ul class="c">
<li>versione mai rilasciata, sostituita in corsa dalla versione 3.0</li>
</ul>

<p class="tb">2.4</p>

<ul class="c">
<li>aggiunti 20 browser e il nuovo sistema di AUTO-OS per i singoli browser</li>
<li>bugfix funzione lingua del browser</li>
<li>ampliamento identificazione browser</li>
<li>bugfix vari</li>
</ul>

<p class="tb">2.3</p>
<ul class="c">
<li>dichiarate TUTTE le variabili</li>
<li>aggiunte specifiche Act&amp;Cap per quasi tutti i Browser</li>

</ul>

<p class="tb">2.2</p>
<ul class="c">
<li>ristrutturazione delle funzioni secondarie</li>
<li>ampliato meccanismo di personalizzazione</li>
<li>bugfix vari</li>
</ul>

<p class="tb">2.1</p>
<ul class="c">
<li>bugfix vari</li>

</ul>

<p class="tb">2.0</p>
<ul class="c">
<li>ampliato riconoscimento browser e os</li>
<li>pulizia del codice</li>
<li>nuovo sistema di identificazione</li>
<li class="i">identificazione: 210 browser e robots e 46 os</li>
<li><b>funzioni aggiuntive:</b> mozilla_version, gecko version, framework.net, cookie, flash, robot, language</li>

<li><b>tempo medio di esecuzione di una elaborazione di user agent: 0,65 secondi</b></li>
</ul>

<p class="t">1.9</p>
<p class="s">rilasciata il 13/07/2003</p>
<ul class="c">
<li>corretto riconoscimento robot e migliorato guessing</li>
<li>migliorato riconoscimento OS Windows (ora molto più preciso) e creato guessing OS Windows</li>
<li>pulite alcune funzioni, risolti molti piccoli bug sparsi</li>
</ul>

<p class="tb">1.8</p>
<ul class="c">
<li>corretto riconoscimento robot in alcuni casi erroneo e migliorato guessing</li>
<li>migliorato riconoscimento OS ii (Cellulari e Console)</li>
<li>corretto riconoscimento errato Netscape e Opera vecchie versioni</li>
</ul>

<p class="tb">1.7</p>
<ul class="c">
<li>ripulite le regexp e rese più veloci</li>
<li>sistema gestione versioni rivoluzionato (ora diviso in MAJOR, MINOR e REST)</li>

<li>aggiunti robot e browser</li>
</ul>

<p class="tb">1.6</p>
<ul class="c">
<li>nuova funzione per i cookie attivi e per flash presente (sperimentale)</li>
</ul>

<p class="tb">1.5</p>
<ul class="c">
<li>migliorato riconoscimento versioni OS e Browser</li>
</ul>

<p class="tb">1.4</p>
<ul class="c">
<li>lavoro di pulizia generale</li>
<li>migliorato sistema di personalizzazione dei risultati</li>
</ul>

<p class="tb">1.0</p>
<p class="s">codice ripulito e preparato sito di supporto</p>
<ul class="c">
<li class="i">identificazione: 62 browser e 37 os</li>

<li><b>funzioni aggiuntive:</b> mozilla_version, gecko version, framework.net, cookie, robot, language</li>
</ul>

<p class="t">0.5</p>
<p class="s">codice rivoluzionato. funzione ROBOT perfezionata</p>
<ul class="c">
<li class="i">identificazione: 62 browser e 37 os</li>
<li><b>funzioni aggiuntive:</b> mozilla_version, gecko version, framework.net, cookie, robot, language</li>

</ul>

<p class="t">0.4</p>
<p class="s">codice ripulito e migliorato. aggiunti browser e os</p>
<ul class="c">
<li class="i">identificazione: 62 browser e 37 os</li>
<li><b>funzioni aggiuntive:</b> mozilla_version, gecko version, framework.net, cookie, robot, language</li>
</ul>

<p class="t">0.3</p>

<p class="s">codice ripulito e migliorato. aggiunte funzioni</p>
<ul class="c">
<li class="i">identificazione: 20 browser e 20 os</li>
<li><b>funzioni aggiuntive:</b> mozilla_version, gecko version, framework.net, cookie, robot, language</li>
</ul>

<p class="t">0.2</p>
<p class="s">preso un codice ASP in JScript, tradotto in VBScript (da Baol74 lorenzomail[@]tiscali.it) e leggermente modificato per fini tecnici</p>
<ul class="c">
<li class="i">identificazione: 5 browser e 3 os</li>

<li><b>funzioni aggiuntive:</b> mozilla_version, gecko version, framework.net, cookie, robot, language</li>
</ul>

<p class="t">0.1</p>
<p class="s">prima versione, codice originale</p>
<ul class="c">
<li class="i">identificazione: 3 browser e 3 os</li>
</ul>
</div>

<div style="font-family:tahoma,helvetica,serif"><p><strong><a href="#index-1-0">1. DEFINIZIONE</a></strong><br />
  <strong><a href="#index-2-0">2. COME USARE LA CLASSE</a></strong><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-2-1">2.1 installare la classe</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-2-2">2.2 creare una pagina minima </a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-2-3">2.3 
funzioni di assegnazione di istanza </a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-2-4">2.4 
recuperare i dati dalla classe </a><br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-2-5">2.5 i dati che restituisce la classe </a><br />
<strong><a href="#index-3-0">3. 
SPECIFICHE DEI DATI RESTITUITI</a></strong><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-1">3.1 Agent</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-1-1">3.1.1 Agent</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-1-2">3.1.2 Agent.name</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-1-3">3.1.3 Agent.version, Agent.version.major, Agent.version.minor, Agent.version.rest</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-1-4">3.1.4 Agent.Type, Agent.Type.Description </a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-1-5">3.1.5 Agent.SubType, Agent.SubType.Description </a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-1-6">3.1.6 Agent.Language, Agent.Language.Code</a><br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-1-7">3.1.7 Agent.Security</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-1-8">3.1.8 Agent.Engine, Agent.Engine.Description</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-1-9">3.1.9 Agent.Cookie</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-1-10">3.1.10 Agent.Guessed</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-2">3.2 Sistema Operativo</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-2-1">3.2.1 OS</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-2-2">3.2.2 OS.name</a><br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-2-3">3.2.3 OS.version, OS.version.major, OS.version.minor, OS.version.rest</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-2-4">3.2.4 OS.Core, OS.Core.Description</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-2-5">3.2.5 OS.Arch, OS.Arch.Description</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-2-6">3.2.6 OS.Distro.Name, OS.Distro.Version</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-3">3.3 Speciali</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-3-1">3.3.1 Special.Framework.Version</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-3-2">3.3.2 Special.Mozilla.Version</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-3-3">3.3.3 Special.Gecko.Version, Gecko.Version.Release</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-3-4">3.3.4 Special.AppleWebKit.Version</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-3-5">3.3.5 Special.Screen</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-3-6">3.3.6 Special.Handheld.Name, Special.Handheld.Version</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-3">3.4 Condivisi</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-4-1">3.4.1 x.Database.ID, x.Database.Link</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-4-2">3.4.2 x.Icon</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-3">3.5 Informativi</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-5-1">3.5.1 Useragent</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-5-2">3.5.2 Useragent.Url</a><br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-5-3">3.5.3 WBstat.Version</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-5-4">3.5.3 WBstat.Cached</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-3-5-5">3.5.5 WBstat.Timer</a><br />
<a href="#index-4-0"><strong>4. DIFFERENZE CON PRECEDENTI VERSIONI</strong></a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-4-1">4.1 da wbStat v3.x a v4.0</strong></a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-4-1-1">4.1.1 Panoramica dei cambiamenti</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-4-1-2">4.1.2 Item non pi&ugrave; disponibili</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-4-2">4.2 da wbStat v4.0 a v4.1</strong></a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-4-2-1">4.2.1 Panoramica dei cambiamenti</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-4-3">4.3 da wbStat v4.1 a v4.2</strong></a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-4-3-1">4.3.1 Panoramica dei cambiamenti</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-4-4">4.4 da wbStat v4.2 a v4.3</strong></a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#index-4-4-1">4.4.1 Panoramica dei cambiamenti</a><br />
  <h3>1. DEFINIZIONE<a name="index-1-0" id="index-1-0"></a></h3>
<p align="justify"><strong> </strong>WBstat &egrave; una classe, ovvero un &quot;comodo&quot; oggetto che pu&ograve; essere caricato e scaricato, che esegue operazioni attraverso Metodi e restituisce Propriet&agrave;, e nel nostro caso un Oggetto Dictionary.</p>

<p align="justify">un oggetto Dictionary &egrave; un Array letterale: al posto dei numeri si utilizzano delle stringhe per identificare un valore nell'array Dictionary.</p>
<p align="justify">WBstat &egrave; relativamente complesso, e per lavorare al meglio necessit&agrave; di una ottimizzazione dei carichi, a seconda dell'esigenza dell'utente; quindi, prima di utilizzare WBstat, &egrave; sempre necessario impostarne i carichi di lavoro correttamente.</p>
<p align="justify"> ricapitolando a grandi linee le fasi nell'utilizzo della classe: </p>

<ol>
<li>&nbsp;si carica l'oggetto wbstat nella propria pagina</li>
<li>&nbsp;si imposta la classe secondo le proprie esigenze</li>
<li>&nbsp;si avvia il lavoro della classe</li>
<li>&nbsp;si recuperano i dati elaborati</li>
</ol>
<p>vediamo ora di cosa consta il progetto, ovvero tutti i file che trovate nel file ZIP</p>
<p><span class="code"><strong>WBSTAT4.x.ZIP</strong></span><br />
  <span class="code">'# + WBSTAT4<br />
'# &nbsp;&nbsp;&nbsp;&nbsp;wbstat4_class.asp<br />
'# &nbsp;&nbsp;&nbsp;&nbsp;wbstat4_decode.asp<br />
'# &nbsp;&nbsp;&nbsp;&nbsp;wbstat4_xmlreader.asp<br />
'# &nbsp;&nbsp;&nbsp;&nbsp;sample_multi.asp<br />
'# &nbsp;&nbsp;&nbsp;&nbsp;sample_multi_list.txt<br />
'# &nbsp;&nbsp;&nbsp;&nbsp;sample_single.asp<br />
'# &nbsp;&nbsp;&nbsp;&nbsp;sample_simpleuse.txt<br />
'# &nbsp;&nbsp;&nbsp;&nbsp;+ WBSTAT4_SPEC/<br />
'# &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;wbstat4_agents.xml<br />
'# &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;wbstat4_agentsfull.xml<br />
'# &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;wbstat4_handheld.xml<br />
'# &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;wbstat4_language.xml<br />
'# &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;wbstat4_linuxdistro.xml<br />
'# &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;wbstat4_os.xml</span></p>
<p><span class="code"> &nbsp;&#8226; wbstat4_class.asp</span><br />
questa &egrave; la classe, il motore che elabora i dati </p>
<p><span class="code"> &nbsp;&#8226; wbstat4_decode.asp e wbstat4_xmlreader.asp</span><br />
questi sono file paralleli utilizzati implicitamente dalla classe</p>
<p><span class="code">&nbsp;&#8226; file xml</span><br />
questi sono i file che contengono le specifiche per il confronto delle stringhe.</p>
<p><span class="code">&nbsp;&#8226; file "sample_"</span><br />
questi sono file di esempio tranquillamente eliminabili.</p>
<hr/>
<h3>2. COME USARE LA CLASSE<a name="index-2-0" id="index-2-0"></a></h3>
<h4>2.1 installare la classe<a name="index-2-1" id="index-2-1"></a></h4>
<p> posizioniamo la cartella WBSTAT4 in una path a nostra scelta.</p>
<p><span class="code"><strong>SERVER</strong><br />
'# + MIOSITO<br />

'# &nbsp;&nbsp;&nbsp;&nbsp;test.asp<br />
'# &nbsp;&nbsp;&nbsp;&nbsp;+ wbstat4/<br />
'# &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;...</span></p>
<p>in questo caso WBSTAT4 si trova nella stessa cartella del file su cui lavoreremo che &egrave; TEST.ASP.</p>

<hr/>
<h4>2.2 creare una pagina minima<a name="index-2-2" id="index-2-2"></a></h4>
<p>vediamo come fare in modo che la pagina TEST.ASP utilizzi la classe</p>
<p>esempio minimo di codice:</p>
<p><strong>TEST.ASP {<br />

</strong><span class="code">&nbsp;&lt;!--#include file=&quot;wbstat4/wbstat4_class.asp&quot;--&gt;<br />
&nbsp;&lt;%<br />
&nbsp;dim oBrowser<br />
&nbsp;Set oBrowser = new wbstatclass<br />
&nbsp;oBrowser.SetPath "wbstat4"<br />
&nbsp;oBrowser.Options.Cache = false<br />
&nbsp;oBrowser.Options.IncludeDescription = true<br />
&nbsp;oBrowser.SetUserAgent ""<br />
&nbsp;oBrowser.Eval()<br />
&nbsp;oBrowser.Debug "Key",0<br />
&nbsp;%&gt;
</span><br />
<strong>}</strong> </p>

<p></p>
<hr/>
<h4>2.3 impostazioni e opzioni della classe<a name="index-2-3" id="index-2-3"></a></h4>
<p>la classe permette un'ampia ottimizzazione sia del carico di lavoro che della formattazione e ricchezza dei dati restituiti (d'ora in poi <strong>items</strong>)<br/>
<small>( in tutte le versioni precedenti alla 4.1 la creazione dell'istanza e le relative opzioni erano eseguite tramite una funzione chiamata CreateWbstat() )</small>
<p>dopo aver istanziato la classe ( <span class="code">Set oBrowser = new wbstatclass</span> ) si rende necessario impostare i parametri principali e le opzioni a seconda delle proprie necessit&agrave;<br/>
tutte le impostazioni sono <em>opzionali</em>, ricordando che le proprietà non impostate mantengono il valore di default. (indicato in questo caso fra parentesi quadre)</p>

<p align="justify">


<a name="opt-setpath" id="opt-setpath"></a>
<p><span class="doc-method">method</span> [<span class="doc-value">"wbstat4/"</span>]<br/>
&#8226; <strong>SetPath(<span class="doc-type">string</span>)</strong><br/>
la cartella dove &egrave; presente la classe (wbstat4_class.asp) con relative cartelle e file.<br />
il sistema si occupa automaticamente di impostare le 3 cartelle "figlie" (<em>wbstat4_spec</em> per le specifiche xml, <em>wbstat4_icons</em> [opzionale] per le icone, <em>wbstat4_flags</em> [opzionale] per le bandiere) che dovranno essere sempre presenti nella stessa cartella della classe.<br />
<strong><em>E' IMPORTANTE CHE LA PATH TERMINI CON "/"</em></strong></p>

<a name="opt-pathicons" id="opt-pathicons"></a>
<p><span class="doc-property">property</span> <span class="doc-type">string</span> [<span class="doc-value">"PATHBASE/wbstat4_icons/"</span>]<br/>
&#8226; <strong>Options.PathIcons</strong><br/>
la cartella dove sono posizionate le icone di browser e os. (scaricabili dal sito ufficiale)<br />
se si vuole impostare una path differente da quella calcolata automaticamente impostare Options.PathIcons <strong>DOPO</strong> aver impostato la path di base con il metodo <a href="#opt-setpath">SetPath</a>.<br />
<strong><em>E' IMPORTANTE CHE LA PATH TERMINI CON "/"</em></strong></p>

<a name="opt-pathflags" id="opt-pathflags"></a>
<p><span class="doc-property">property</span> <span class="doc-type">string</span> [<span class="doc-value">"PATHBASE/wbstat4_flags/"</span>]<br/>
&#8226; <strong>Options.PathFlags</strong><br/>
la cartella dove sono posizionate le bandiere della lingua. (scaricabili dal sito ufficiale)<br />
se si vuole impostare una path differente da quella calcolata automaticamente impostare Options.PathFlags <strong>DOPO</strong> aver impostato la path di base con il metodo <a href="#opt-setpath">SetPath</a>.<br />
<strong><em>E' IMPORTANTE CHE LA PATH TERMINI CON "/"</em></strong></p>

<a name="opt-cache" id="opt-cache"></a>
<p><span class="doc-property">property</span> <span class="doc-type">boolean</span> [<span class="doc-value">False</span>]<br/>
&#8226; <strong>Options.Cache</strong><br/>
ogni volta che viene aperta una sessione vengono salvati gli item in una variabile di sessione. se viene richiesta nuovamente un'elaborazione e la sessione &egrave; ancora aperta, i dati non vengono ricalcolati ma presi dalla variabile (utile in situazioni in cui la user-agent elaborata &egrave; la stessa in tutta la sessione; es: la user-agent dell'utente)</p>

<a name="opt-wbstat3compatible" id="opt-wbstat3compatible"></a>
<p><span class="doc-property">property</span> <span class="doc-type">boolean</span> [<span class="doc-value">False</span>]<br/>
&#8226; <strong>Options.wbstat3compatible</strong><br/>
offre compatibilit&agrave; negli item di lingua con la versione 3.x della classe (utile solo quando si effettua un aggiornamento dalla 3.x alla 4.x dato che i valori di lingua debbano rimanere coerenti)</p>

<a name="opt-Lang" id="opt-Lang"></a>
<p><span class="doc-property">property</span> <span class="doc-type">string ["en"|"it"]</span> [<span class="doc-value">"en"</span>]<br/>
&#8226; <strong>Options.Lang</strong><br/>
imposta la lingua in cui dovranno essere offerte tutte le Description degli item non autoesplicativi (supporta solo i valori "en" o "it")</p>

<hr/>

<a name="opt-includeuseragent" id="opt-includeuseragent"></a>
<p><span class="doc-property">property</span> <span class="doc-type">boolean</span> [<span class="doc-value">True</span>]<br/>
&#8226; <strong>Options.IncludeUserAgent</strong><br/>
inclusione negli items della stringa user-agent come &quot;UserAgent&quot;</p>

<a name="opt-includedescription" id="opt-includedescription"></a>
<p><span class="doc-property">property</span> <span class="doc-type">boolean</span> [<span class="doc-value">False</span>]<br/>
&#8226; <strong>Options.IncludeDescription</strong><br/>
inclusione negli items le descrizioni testuali ai valori non autoesplicativi. (da attivarsi solo se gli item vengono proposti all'utente senza elaborazione, per esempio se si utilizza il metodo Debug)</p>

<a name="opt-debugging" id="opt-debugging"></a>
<p><span class="doc-property">property</span> <span class="doc-type">boolean</span> [<span class="doc-value">False</span>]<br/>
&#8226; <strong>Options.Debugging</strong><br/>
se non si indica alcuna user-agent (metodo <span class="code">SetUserAgent</span>) il sistema accetta automaticamente user-agent provenienti da querystring (es: ?ua=xxx)</p>

<a name="opt-guessing" id="opt-guessing"></a>
<p><span class="doc-property">property</span> <span class="doc-type">boolean</span> [<span class="doc-value">True</span>]<br/>
&#8226; <strong>Options.Guessing</strong><br/>
nel caso in cui non venga individuato alcun browser il sistema tenta di &quot;indovinare&quot; il nome dello stesso tramite una funzione apposita di guessing</p>

<a name="opt-guessingversion" id="opt-guessingversion"></a>
<p><span class="doc-property">property</span> <span class="doc-type">boolean</span> [<span class="doc-value">True</span>]<br/>
&#8226; <strong>Options.GuessingVersion</strong><br/>
se il guessing è attivo calcola anche la versione del browser a seconda dei dati risultati dalla funzione di guessing</p>

<a name="opt-robotknown" id="opt-robotknown"></a>
<p><span class="doc-property">property</span> <span class="doc-type">boolean</span> [<span class="doc-value">True</span>]<br/>
&#8226; <strong>Options.Robotknown</strong><br/>
indica se devono essere confrontati anche gli agenti categorizzati come robot (spider principalmente). questa opzione appesantisce il carico di lavoro poiché il database di confronto è notevolmente più grande (utilizza wbstat4_agentsfull.xml invece che wbstat4_agents.xml). se l'intento è quello di individuare solo agenti con intervento umano si può tranquillamente disattivare questa opzione</p>

<a name="opt-robotprecision" id="opt-robotprecision"></a>
<p><span class="doc-property">property</span> <span class="doc-type">boolean</span> [<span class="doc-value">False</span>]<br/>
&#8226; <strong>Options.Robotprecision</strong><br/>
se attiva inserisce davanti al nome di ogni robot la stringa "Robot: ". (es: "Google" diventa "Robot: Google")</p>

<a name="opt-fillresult" id="opt-fillresult"></a>
<p><span class="doc-property">property</span> <span class="doc-type">string</span> [<span class="doc-value">""</span>]<br/>
&#8226; <strong>Options.FillResult</strong><br/>
indica la stringa da utilizzare (per i valori testuali) negli item non valorizzati. (es: "Sconosciuto")</p>

<a name="opt-addlinuxdistrotoos" id="opt-addlinuxdistrotoos"></a>
<p><span class="doc-property">property</span> <span class="doc-type">boolean</span> [<span class="doc-value">False</span>]<br/>
&#8226; <strong>Options.AddLinuxDistroToOs</strong><br/>
inclusione nell'item "OS" della distribuzione linux:<br />
es: Red Hat Linux<br/>
<span class="code">Options.AddLinuxDistroToOs = True&nbsp;&nbsp;&nbsp;=>&nbsp;&nbsp;("OS") = "Linux (Red Hat)"<br/>
Options.AddLinuxDistroToOs = False&nbsp;&nbsp;=>&nbsp;&nbsp;("OS") = "Linux"</span></p>

<a name="opt-brversionprecision" id="opt-brversionprecision"></a>
<p><span class="doc-property">property</span> <span class="doc-type">numeric</span> [<span class="doc-value">1</span>]<br/>
&#8226; <strong>Options.BrVersionPrecision</strong><br/>
indica il livello di precisione nell'indicare la versione nell'item riassuntivo &quot;Agent&quot;<br />
(questi sono i valori standard applicati nella maggior parte dei casi; alcuni browser però hanno impostazioni specifiche non modificabili)<br/>
<em>valori possibili:</em><br />
<span class="code">-1 = non indicare&nbsp;&nbsp;&nbsp;-> es risultante: "Mozilla Firefox"<br />
&nbsp;0 = indica major&nbsp;&nbsp;&nbsp;-> es risultante: "Mozilla Firefox 2"<br />
&nbsp;1 = indica maj+min&nbsp;-> es risultante: "Mozilla Firefox 2.0"<br />
&nbsp;2 = indica tutto&nbsp;&nbsp;&nbsp;-> es risultante: "Mozilla Firefox 2.0.0.11"</span></p>

<a name="opt-brversionfull" id="opt-brversionfull"></a>
<p><span class="doc-property">property</span> <span class="doc-type">boolean</span> [<span class="doc-value">False</span>]<br/>
&#8226; <strong>Options.BrVersionFull</strong><br/>
se attivo <em>TUTTI</em> i browser utilizzeranno il valore predefinito di precisione (indicato in <a href="#opt-brversionprecision">Options.BrVersionPrecision</a>) a prescindere dalle loro impostazioni specifiche</p>

<a name="opt-brversionminorsimple" id="opt-brversionminorsimple"></a>
<p><span class="doc-property">property</span> <span class="doc-type">boolean</span> [<span class="doc-value">True</span>]<br/>
&#8226; <strong>Options.BrVersionMinorSimple</strong><br/>
se attivo nell'item riassuntivo Agent semplifica la minor version al solo primo carattere.<br/>
<span class="code">es: Internet Explorer 5.02 => Internet Explorer 5.0</span></p>

<a name="opt-osversionprecision" id="opt-osversionprecision"></a>
<p><span class="doc-property">property</span> <span class="doc-type">numeric</span> [<span class="doc-value">-1</span>]<br/>
&#8226; <strong>Options.OsVersionPrecision</strong><br/>
indica il livello di precisione nell'indicare la versione nell'item riassuntivo &quot;Os&quot;<br />
<em>i valori possibili sono gli stessi di <a href="#opt-brversionprecision">Options.BrVersionPrecision</a></em></p>

<a name="opt-languagehttp" id="opt-languagehttp"></a>
<p><span class="doc-property">property</span> <span class="doc-type">boolean</span> [<span class="doc-value">True</span>]<br/>
&#8226; <strong>Options.LanguageHTTP</strong><br/>
specifica se la ricerca del valore lingua debba essere effettuato, oltre che nella stringa user-agent, anche nella variabile HTTP di lingua.</p>

<hr/>

<a name="opt-workbrowser" id="opt-workbrowser"></a>
<p><span class="doc-property">property</span> <span class="doc-type">boolean</span> [<span class="doc-value">True</span>]<br/>
&#8226; <strong>Options.workAgent</strong><br/>
attiva l'individuazione del Agent.</p>

<a name="opt-workbrowserversion" id="opt-workbrowserversion"></a>
<p><span class="doc-property">property</span> <span class="doc-type">boolean</span> [<span class="doc-value">True</span>]<br/>
&#8226; <strong>Options.workAgentVersion</strong><br/>
attiva l'individuazione della versione del Agent.</p>

<a name="opt-workbrowserdetails" id="opt-workbrowserdetails"></a>
<p><span class="doc-property">property</span> <span class="doc-type">boolean</span> [<span class="doc-value">True</span>]<br/>
&#8226; <strong>Options.workAgentDetails</strong><br/>
attiva l'individuazione dei Cookie e del livello di sicurezza.</p>

<a name="opt-workbrowserlanguage" id="opt-workbrowserlanguage"></a>
<p><span class="doc-property">property</span> <span class="doc-type">boolean</span> [<span class="doc-value">True</span>]<br/>
&#8226; <strong>Options.workAgentLanguage</strong><br/>
attiva l'individuazione della lingua del browser.</p>

<a name="opt-workos" id="opt-workos"></a>
<p><span class="doc-property">property</span> <span class="doc-type">boolean</span> [<span class="doc-value">True</span>]<br/>
&#8226; <strong>Options.workOS</strong><br/>
attiva l'individuazione del Sistema Operativo.</p>

<a name="opt-workosversion" id="opt-workosversion"></a>
<p><span class="doc-property">property</span> <span class="doc-type">boolean</span> [<span class="doc-value">True</span>]<br/>
&#8226; <strong>Options.workOSVersion</strong><br/>
attiva l'individuazione del Sistema Operativo.</p>

<a name="opt-workosdetails" id="opt-workosdetails"></a>
<p><span class="doc-property">property</span> <span class="doc-type">boolean</span> [<span class="doc-value">True</span>]<br/>
&#8226; <strong>Options.workOSDetails</strong><br/>
attiva l'individuazione dell'architettura di sistema e della distribuzione linux.</p>

<a name="opt-workspecial" id="opt-workspecial"></a>
<p><span class="doc-property">property</span> <span class="doc-type">boolean</span> [<span class="doc-value">True</span>]<br/>
&#8226; <strong>Options.workSpecial</strong><br/>
attiva l'individuazione delle informazioni aggiuntive (Framework.net, Mozilla Version, Gecko...).</p>

<a name="opt-workspecialhandheld" id="opt-workspecialhandheld"></a>
<p><span class="doc-property">property</span> <span class="doc-type">boolean</span> [<span class="doc-value">True</span>]<br/>
&#8226; <strong>Options.workSpecialHandheld</strong><br/>
attiva l'individuazione del nome e versione di un dispositivo portatile (cellulari, palmari...).</p>


<hr/>
<h4>2.4 recuperare i dati dalla classe<a name="index-2-4" id="index-2-4"></a></h4>
<p>dopo aver quindi impostato a seconda delle esigenze i vari parametri si imposta la user-agent e si esegue l'elaborazione (non impostando alcuna user-agent viene utilizzata quella reale)</p>

<p><span class="code">
oBrowser.SetUserAgent("")<br/>
oBrowser.Eval()
</span></p>

<p>a questo punto gli item sono stati calcolati ed è solo necessario estraporarli: il metodo da utilizzarsi &egrave; il seguente:</p>
<p><span class="code">response.write oBrowser(&quot;OS.Version.Minor&quot;)</span></p>
<p>l'oggetto classe infatti, &egrave; anche un Dictionary, e richiamando certe stringhe si possono avere direttamente i risultati elaborati.</p>

<p>se invece si vuole semplicemente testare le &quot;qualit&agrave;&quot; della classe, esiste un metodo apposito, che visualizza le informazioni direttamente.</p>
<p><span class="code">oBrowser.Debug &quot;Key&quot;,false</span></p>
<p>in questa maniera vengono stampati in HTML tutti i dati, formattati in una tabella e facilmente fruibili<br />
possono essere ordinati per &quot;Key&quot; oppure &quot;Value&quot;.<br />

il secondo parametro &egrave; necessario per le multielaborazioni ed &egrave; spiegato nel file di esempio incluso nello zip</p>
<hr/>
<h4>2.5 gli item restituiti la classe<a name="index-2-5" id="index-2-5"></a></h4>
<p>vediamo ora quindi tutti i valori che la classe produce e una breve descrizione (verranno trattati pi&ugrave; avanti approfonditamente)<br />
<small>(questi dati sono tutti quelli recuperabili tramite la sintassi <span class="code">OGGETTOCLASSE(&quot;nomerisultato&quot;)</span> dopo l'esecuzione di un <span class="code">Eval()</span>)</small></p>

<ul class="list">
<li class="hr"><a href="#index-3-5-1"><strong>Useragent</strong></a>&nbsp;la stringa useragent analizzata</li>
<li><a href="#index-3-5-2"><strong>Useragent.Url</strong></a>&nbsp;un URL trovato nella user-agent, se conosciuto</li>
<li class="hr"><a href="#index-3-1-1"><strong>Agent </strong></a>&nbsp;nome risolutivo (NOME + VERSIONE)</li>
<li><a href="#index-3-1-2"><strong>Agent.Name</strong></a>&nbsp;nome del browser</li>
<li><a href="#index-3-1-3"><strong>Agent.Version</strong></a>&nbsp;versione (completa)</li>
<li><a href="#index-3-1-3"><strong>Agent.Version.Major</strong></a>&nbsp;versione (solo major)</li>
<li><a href="#index-3-1-3"><strong>Agent.Version.Minor</strong></a>&nbsp;versione (solo major)</li>
<li><a href="#index-3-1-3"><strong>Agent.Version.Rest</strong></a>&nbsp;versione (solo build+rest)</li>
<li class="hr"><a href="#index-3-1-4"><strong>Agent.Type</strong></a>&nbsp;tipo di browser (numerico)</li>
<li><a href="#index-3-1-4"><strong>Agent.Type.Description</strong></a>&nbsp;definizione tipo di browser (testuale)</li>
<li><a href="#index-3-1-5"><strong>Agent.SubType</strong></a>&nbsp;sottotipo di browser (numerico)</li>
<li><a href="#index-3-1-5"><strong>Agent.SubType.Description</strong></a>&nbsp;definizione sottotipo di browser (testuale)</li>
<li><a href="#index-3-1-6"><strong>Agent.Language</strong></a>&nbsp;NOME lingua del browser [ITALIANO, INGLESE...]</li>
<li><a href="#index-3-1-6"><strong>Agent.Language.Code</strong></a>&nbsp;CODICE lingua del browser [it, en-us...]</li>
<li><a href="#index-3-1-7"><strong>Agent.Security</strong></a>&nbsp;il livello di sicurezza dell'enconding [ U | I | N ]</li>
<li><a href="#index-3-1-8"><strong>Agent.Engine</strong></a>&nbsp;codice motore di rendering  (numerico)</li>
<li><a href="#index-3-1-8"><strong>Agent.Engine.Description </strong></a>&nbsp;nome del motore di rendering (testuale)</li>
<li><a href="#index-3-1-10"><strong>Agent.Guessed</strong></a>&nbsp;true se il browser &egrave; stato &quot;indovinato&quot; poich&egrave; sconosciuto</li>
<li><a href="#index-3-1-9"><strong>Agent.Cookie</strong></a>&nbsp;permesso all'utilizzo dei cookie [sperimentale] </li>
<li><a href="#index-3-4-2"><strong>Agent.Icon</strong></a>&nbsp;url dell'icona del browser </li>
<li><a href="#index-3-4-1"><strong>Agent.Database.ID</strong></a>&nbsp;id del browser nel database di useragents.org </li>
<li><a href="#index-3-4-1"><strong>Agent.Database.Link</strong></a>&nbsp;link alla scheda del browser su useragents.org</li>
<li class="hr"><a href="#index-3-2-1"><strong>OS</strong></a>&nbsp;nome risolutivo (NOME + VERSIONE)</li>
<li><a href="#index-3-2-2"><strong>OS.Name</strong></a>&nbsp;nome del sistema operativo</li>
<li><a href="#index-3-2-3"><strong>OS.Version</strong></a>&nbsp;versione (completa)</li>
<li><a href="#index-3-2-3"><strong>OS.Version.Major</strong></a>&nbsp;versione (solo major)</li>
<li><a href="#index-3-2-3"><strong>OS.Version.Minor</strong></a>&nbsp;versione (solo minor)</li>
<li><a href="#index-3-2-3"><strong>OS.Version.Rest</strong></a>&nbsp;versione (solo build+rest)</li>
<li class="hr"><a href="#index-3-2-4"><strong>OS.Core</strong></a>&nbsp;codice tipologia di os (ppc, NT, 9x...) (numerico) </li>
<li><a href="#index-3-2-4"><strong>OS.Core.Description</strong></a>&nbsp;tipologia di os (testuale)</li>
<li><a href="#index-3-2-5"><strong>OS.Arch</strong></a>&nbsp;codice architettura di sistema (i386, x64, sparc...) (numerico) </li>
<li><a href="#index-3-2-5"><strong>OS.Arch.Description</strong></a>&nbsp;architettura di sistema (testuale)</li>
<li><a href="#index-3-2-6"><strong>OS.Distro.Name</strong></a>&nbsp;distribuzione di linux <em>[rilevazione relativa]</em> </li>
<li><a href="#index-3-2-6"><strong>OS.Distro.Version</strong></a>&nbsp;versione distro di linux <em>[rilevazione relativa]</em> </li>
<li><a href="#index-3-4-2"><strong>OS.Icon</strong></a>&nbsp;url dell'icona dell'os </li>
<li><a href="#index-3-4-1"><strong>OS.Database.ID</strong></a>&nbsp;id dell'os nel database di useragents.org </li>
<li><a href="#index-3-4-1"><strong>OS.Database.Link</strong></a>&nbsp;link alla scheda dell'os su useragents.org </li>
<li class="hr"><a href="#index-3-3-1"><strong>Framework.Version</strong></a>&nbsp;versione del framework.net (0 se assente)</li>
<li><a href="#index-3-3-3"><strong>Special.Gecko.Version</strong></a>&nbsp;versione del motore gecko (0 se assente)</li>
<li><a href="#index-3-3-3"><strong>Special.Gecko.Version.Release</strong></a>&nbsp;data di rilascio di gecko (yyyymmdd) </li>
<li><a href="#index-3-3-4"><strong>Special.AppleWebKit.Version</strong></a>&nbsp;versione del motore applewebkit (0 se assente) </li>
<li><a href="#index-3-3-2"><strong>Special.Mozilla.Version</strong></a>&nbsp;versione di compatibilit&agrave; (0 se assente)</li>
<li><a href="#index-3-3-6"><strong>Special.Handheld.Name</strong></a>&nbsp;nome dispositivo <em>[rilevazione relativa]</em> </li>
<li><a href="#index-3-3-6"><strong>Special.Handheld.Version</strong></a>&nbsp;versione dispositivo <em>[rilevazione relativa]</em> </li>
<li><a href="#index-3-3-5"><strong>Special.Screen</strong></a>&nbsp;dimensioni dello schermo del dispositivo [000x000] <em>[rilevazione relativa]</em> </li>
<li class="hr"><a href="#index-3-5-4"><strong>WBstat.cachedata</strong></a>&nbsp;TRUE = dati in cache | FALSE = dati elaborati sul momento</li>
<li class="hr"><a href="#index-3-5-3"><strong>WBstat.info</strong></a>&nbsp;versione di WBstat</li>
<li><a href="#index-3-5-5"><strong>WBstat.timer</strong></a>&nbsp;tempo di elaborazione in millisecondi (numerico)
</ul>
<h3>3. SPECIFICHE DEI DATI RESTITUITI <a name="index-3-0" id="index-3-0"></a></h3>

<h4>3.1 Agent<a name="index-3-1" id="index-3-1"></a></h4>
<h4>3.1.1 Agent<a name="index-3-1-1" id="index-3-1-1"></a></h4>
<p>browser &egrave; il dato risolutivo delle informazioni ricavate in Agent.name e Agent.version<br />
questo quindi non &egrave; un dato elaborato, ma una somma di altri dati elaborati<br />

<br />
<strong>Impostazioni:</strong><br />
&nbsp;&nbsp; segue le specifiche <a href="#opt-robotprecision"><strong>Options.Robotprecision</strong></a>, <a href="#opt-brversionprecision"><strong>Options.AgVersionPrecision</strong></a>, <a href="#opt-brversionminorsimple"><strong>Options.AgVersionMinorSimple</strong></a> e <a href="#opt-fillresult"><strong>Options.FillResult</strong></a><br/>
&nbsp;&nbsp; per avere l'item impostare a true <a href="#opt-workbrowser"><strong>Options.workAgent</strong></a></p>
<p><strong>Informazioni:<br />
</strong>se si lavora in maniera spartana, l'utilizzo di questo risultato &egrave; essenziale.<br />
esso infatti raggruppa tutte le elaborazioni fatte sul Agent</p>
<hr/>

<h4>3.1.2 Agent.name<a name="index-3-1-2" id="index-3-1-2"></a></h4>
<p>browser.name indica solo ed esclusivamente il nome del browser<br />
per l'elaborazione di questo item sono utilizzate le risorse XML (wbstat4_agents.xml)<br />
nel caso in cui <a href="#opt-robotknown"><strong>Options.Robotknown</strong></a> = True ricerca anche fra i robot (utilizzando wbstat4_agentsfull.xml)<br />

nel caso in cui <a href="#opt-guessing"><strong>Options.Guessing</strong></a> = True se non riesce a trovare nessun confronto positivo, tenta le operazioni di guessing<br />
<br />
<strong>Impostazioni:</strong><br />
&nbsp;&nbsp; segue le specifiche <a href="#opt-guessing"><strong>Options.Guessing</strong></a> e <a href="#opt-robotknown"><strong>Options.Robotknown</strong></a><strong><br />

</strong> &nbsp;&nbsp;&nbsp;per avere l'item impostare a true <a href="#opt-workbrowser"><strong>Options.workAgent</strong></a></p>
<hr/>
<h4>3.1.3 Agent.version, Agent.version.major, Agent.version.minor, Agent.version.rest<a name="index-3-1-3" id="index-3-1-3"></a></h4>
<p>Agent.version &egrave; una somma degli altri risultati, seguendo le impostazioni <a href="#opt-brversionprecision"><strong>Options.BrVersionPrecision</strong></a><br />
la versione viene suddivisa in 3 parti:<br />

<em><strong>esempio</strong>: Netscape 3.5.47beta<br />
Agent.version = 3.5<br />
Agent.version.major = 3<br />
Agent.version.minor = 5<br />
Agent.version.rest = 47beta</em><br />
<br />

<strong>Impostazioni:</strong><br />
&nbsp;&nbsp;segue le specifiche <a href="#opt-brversionprecision"><strong>Options.BrVersionPrecision</strong></a><strong><br />
</strong> &nbsp;&nbsp;per avere l'item impostare a true <a href="#opt-workbrowser"><strong>Options.workAgent</strong></a>, <a href="#opt-workbrowserversion"><strong>Options.workAgentVersion</strong></a></p>
<hr/>

<h4>3.1.4 Agent.Type, Agent.Type.Description<a name="index-3-1-4" id="index-3-1-4"></a></h4>
<p>questa variabile &egrave; semplicemente una discriminante<br />
nel caso in cui il browser sia un browser conosciuto secondo specifiche XML (<strong>wbstat4_browser.xml</strong>), si conosce anche il tipo di browser e quindi viene qui indicato<br />
Agent.Type indica il codice, Agent.Type.Description esplica la descrizione</p>
<p>la classe offre due versioni di questo dato: la prima (Agent.Type) &egrave; un valore numerico facilmente archiviabile, la seconda (Agent.Type.Description) &egrave; un valore testuale per la lettura umana<br />
      <br />

      <strong>Specifiche Agent.Type - Agent.SubType.Description:</strong><span class="code"><br />
&nbsp;&nbsp;0&nbsp;- Robot<br />
&nbsp;&nbsp;5 - Internet Browser<br />
&nbsp;&nbsp;9 - Sconosciuto </span><br />
<br />
<strong>Impostazioni:</strong><strong><br />
  
</strong> &nbsp;&nbsp;&nbsp;per avere l'item impostare a true <a href="#opt-workbrowser"><strong>Options.workAgent</strong></a>, <a href="#opt-workbrowserdetails"><strong>Options.workAgentDetails</strong></a><br />
&nbsp;&nbsp;&nbsp;per avere anche la Description si deve impostare a true anche <a href="#opt-includedescription"><strong>Options.includeDescription</strong></a><br />
</p>
<hr/>
<h4>3.1.5 Agent.SubType, Agent.SubType.Description<a name="index-3-1-5" id="index-3-1-5"></a></h4>
<p>questa variabile &egrave; semplicemente una discriminante<br />
nel caso in cui il browser sia un browser conosciuto secondo specifiche XML, si conosce anche il sottotipo di browser e quindi viene qui indicato<br />

Agent.SubType indica il codice, Agent.SubType.Description esplica la descrizione</p>
<p>la classe offre due versioni di questo dato: la prima (Agent.Subtype) &egrave; un valore testuale (3 caratteri numerici) facilmente archiviabile, la seconda (Agent.Subtype.Description) &egrave; un valore testuale per la lettura umana <br />
<br />
<strong>Specifiche Agent.SubType - Agent.SubType.Description:</strong><br />
<span class="code">&nbsp;&nbsp;------- ROBOT ---------------------<br />
&nbsp;&nbsp;000  - Spider (Motori di ricerca) <br />
&nbsp;&nbsp;001  - Validatori e strumenti<br />
&nbsp;&nbsp;002  - Email Collector<br />
&nbsp;&nbsp;008  - Altro <br />
&nbsp;&nbsp;------- BROWSER -------------------<br />
&nbsp;&nbsp;510 -  Browser Standard <br />
&nbsp;&nbsp;515 - Browser Multimediali <br />
&nbsp;&nbsp;520 - WAP Browser<br />
&nbsp;&nbsp;521 - Mobile Browser<br />
&nbsp;&nbsp;530 - Feed Reader/Aggregator<br />
&nbsp;&nbsp;550 - Applications (da v4.1)<br/>
&nbsp;&nbsp;590 - Downloader<br />
&nbsp;&nbsp;591 - Browser Offline <br />
&nbsp;&nbsp;------- ALTRO ---------------------<br />
&nbsp;&nbsp;999 - Sconosciuto </span></p>
<p><br />
  <strong>Impostazioni:</strong><strong><br />

</strong> &nbsp;&nbsp;&nbsp;per avere l'item impostare a true <a href="#opt-workbrowser"><strong>Options.workAgent</strong></a>, <a href="#opt-workbrowserdetails"><strong>Options.workAgentDetails</strong></a><strong><br />
</strong> &nbsp;&nbsp;&nbsp;per avere anche la Description si deve impostare a true anche <a href="#opt-includedescription"><strong>Options.includeDescription</strong></a></p>
<hr/>
<h4>3.1.6 Agent.Language, Agent.Language.Code<a name="index-3-1-6" id="index-3-1-6"></a></h4>
<p>questa variabile indica la lingua o la lingua compatibile del browser<br />
questo dato &egrave; calcolato sulla base di pi&ugrave; fonti.<br />
1. controllo della HTTP_ACCEPT_LANGUAGE per corrispondenze di codici lingua<br />

2. controllo della USER-AGENT per corrispondenze di codici lingua</p>
<p>un codice lingua &egrave; una semplice stringa (solitamente delimitata da quadre) che definisce una lingua<br />
esempi: [it] = italiano | [en] = inglese | [en-us] = inglese ...</p>
<p> pu&ograve; anche essere presente senza delimitatori e pu&ograve; possedere varie lunghezze (non sempre 2 caratteri, o coppie di due).<br />
in molti casi &egrave; presente solo la prima coppia di caratteri (indicante la lingua secondo le specifiche <a href="http://it.wikipedia.org/wiki/ISO_639">ISO 639</a>), in altri, con un &quot;-&quot; come delimitatore, anche una seconda coppia di caratteri (indicante la nazione secondo le specifiche <a href="http://it.wikipedia.org/wiki/ISO_3166-1">ISO 3166</a>).</p>
<p>in Language.Code viene restituito il codice trovato (per avere solo il codice lingua sar&agrave; necessario utilizzare solo i primi due caratteri), e in Language viene restituito il nome della lingua.</p>
<p>WBstat4 offre due modalit&agrave; di elaborazione dei codici lingua a seconda che si sia impostata l'opzione <a href="#opt-wbstat3compatible"><strong>Options.wbstat3compatible</strong></a>.</p>
<p>In modalit&agrave; compatibile con wbstat3 il nome della lingua verr&agrave; restituito confrontando il codice con il file wbstat4_languages.xml; in modalit&agrave; non compatibile il nome della lingua &egrave; restituito in forma pi&ugrave; corretta tramite un confronto con pi&ugrave; di 180 codici lingua riconosciuti.</p>
<p><br />
  <strong>Impostazioni:</strong><strong><br />

</strong> &nbsp;&nbsp;&nbsp;per avere l'item impostare a true <a href="#opt-workbrowser"><strong>Options.workAgent</strong></a>, <a href="#opt-workbrowserlanguage"><strong>Options.workAgentLanguage</strong></a><br /><br />

            </strong> &nbsp;&nbsp; per avere la flag si deve impostare una <a href="#opt-pathflags"><strong>pathIcons</strong></a> dopo aver impostato la <a href="#opt-setpath"><strong>SetPath</strong></a><br />
            di base il valore punta a "<a href="#opt-setpath"><strong>PATHBASE</strong></a>/wbstat4_flags/"</p>
<hr/>
<h4>3.1.7 Agent.Security<a name="index-3-1-7" id="index-3-1-7"></a></h4>
<p>questa &egrave; una variabile semplice, e riporta il livello di sicurezza indicato nella user-agent<br />

il livello di sicurezza pu&ograve; avere 3 valori: <br />
<br />
<strong>Specifiche Agent.Security:</strong><span class="code"><br />
&nbsp;&nbsp;U = Forte (128+bit) <br />
&nbsp;&nbsp;I&nbsp;= Normale (40bit)<br />
&nbsp;&nbsp;N = Assente</span></p>

<p>solitamente si trova a lettere maiuscole indicato dentro due parentesi quadre.<br />
ma non &egrave; infrequente trovarlo anche fra puntievirgola, o altri segni di interpunzione.<br />
esempi: [U] | test2.4; U; | test2.4 ( U, it-it)<br />
<br />
<strong>Impostazioni:</strong><strong><br />

</strong> &nbsp;&nbsp;&nbsp;per avere l'item impostare a true <a href="#opt-workbrowser"><strong>Options.workAgent</strong></a>, <a href="#opt-workbrowserdetails"><strong>Options.workAgentDetails</strong></a></p>
<hr/>
<h4>3.1.8 Agent.Engine, Agent.Engine.Description <a name="index-3-1-8" id="index-3-1-8"></a></h4>

<p>questo &egrave; un valore non calcolato ma conosciuto secondo le specifiche XML (<strong>wbstat4_browser.xml</strong>).<br />
se un browser viene riconosciuto, e nelle specifiche &egrave; indicato l'engine questo viene indicato, altrimenti viene riscritto il Agent.name</p>
<p>la classe offre due versioni di questo dato: la prima (Agent.Engine) &egrave; un valore numerico facilmente archiviabile, la seconda (Agent.Engine.Description) &egrave; un valore testuale per la lettura umana <br />
      <br />
      <strong>Specifiche Agent.Engine - Agent.Engine.Description:</strong><span class="code"><br />
      &nbsp;&nbsp;0&nbsp;&nbsp;-&nbsp;&nbsp;Proprietario&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;qualsiasi engine non identificato <br />
      &nbsp;&nbsp;1&nbsp;&nbsp;-&nbsp;&nbsp;Internet Explorer&nbsp;&nbsp;&nbsp;per IE, AvantAgent, Neoplanet...<br />
&nbsp;&nbsp;2&nbsp;&nbsp;-&nbsp;&nbsp;Gecko&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;per Mozilla, Netscape, Firefox...<br />
&nbsp;&nbsp;3&nbsp;&nbsp;-&nbsp;&nbsp;Khtml&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;per Konqueror, Safari...<br />
            </span><br />
      <strong>Impostazioni:</strong><strong><br />
</strong> &nbsp;&nbsp;&nbsp;per avere l'item impostare a true <a href="#opt-workbrowser"><strong>Options.workAgent</strong></a>, <a href="#opt-workbrowserdetails"><strong>Options.workAgentDetails</strong></a><strong><br />
</strong> &nbsp;&nbsp;&nbsp;per avere anche la Description si deve impostare a true anche <a href="#opt-includedescription"><strong>Options.includeDescription</strong></a></p>

</p>
<hr/>
<h4>3.1.9 Agent.Cookie<a name="index-3-1-9" id="index-3-1-9"></a></h4>
<p>valore booleano che specifica se il browser supporta i cookie per la sessione attiva.</p>
<p>la funzione non &egrave; perfetta in quanto se la pagina in cui viene utilizzato wbstat &egrave; la prima chiamata http della sessione restituir&agrave; valore FALSE</p>
<p>quindi questo valore &egrave; corretto solo se la pagina che utilizza WBstat non &egrave; la prima richiesta della sessione con il server. <span class="code"><br />
    </span><br />
    <strong>Impostazioni:</strong><strong><br />
        </strong> &nbsp;&nbsp;&nbsp;per avere l'item impostare a true <a href="#opt-workbrowser"><strong>Options.workAgent</strong></a>,<a href="#opt-workbrowserdetails"><strong>Options.workAgentDetails</strong></a></p>
<hr/>
<h4>3.1.10 Agent.Guessed<a name="index-3-1-10" id="index-3-1-10"></a></h4>
<p>nel caso in cui <a href="#opt-guessing"><strong>Options.Guessing</strong></a> = True, e effettivamente venga fatto il Guessing per l'individuazione del Agent (quindi dopo aver cercato con le specifiche e non aver trovato corrispondenze) questa variabile assume il valore True<br />
questo perch&egrave; i valori trovati con il guessing possono essere sbagliati, ed altri assumono valori di Default (quali Agent.Type che assume automaticamente 9) poich&egrave; indefinibili con il Guessing</p>

<p><em>ATTENZIONE questa variabile &egrave; da considerare nell'organizzazione delle statistiche<br />
nel caso in cui si vogliano dati particolarmente precisi &egrave; da considerarsi l'esclusione di tutte le individuazioni effettuate tramite guessing</em><span class="code"><br />
</span><br />
<strong>Impostazioni:<br />
&nbsp;&nbsp; </strong>segue le specifiche <strong><a href="#opt-guessing"><strong>Options.Guessing</strong></a><br />
</strong> &nbsp;&nbsp;&nbsp;per avere l'item impostare a true <a href="#opt-workbrowser"><strong>Options.workAgent</strong></a></p>

<hr/>
<h4>3.2 Sistema Operativo<a name="index-3-2" id="index-3-2"></a></h4>
<h4>3.2.1 OS<a name="index-3-2-1" id="index-3-2-1"></a></h4>
<p>OS &egrave; il dato risolutivo delle informazioni ricavate in OS.name e OS.version<br />
questo quindi non &egrave; un dato elaborato, ma una somma di altri dati elaborati<br />
<br />

<strong>Impostazioni:</strong><br />
&nbsp;&nbsp; segue le specifiche <a href="#opt-robotprecision"><strong>Options.Robotprecision</strong></a>, <a href="#opt-osversionprecision"><strong>Options.OsVersionPrecision</strong></a> e <a href="#opt-fillresult"><strong>Options.FillResult</strong></a><br/>
&nbsp;&nbsp; per avere l'item impostare a true <a href="#opt-workos"><strong>Options.workOS</strong></a></p>

<p><strong>Informazioni:<br />
</strong>se si lavora in maniera spartana, l'utilizzo di questo risultato &egrave; essenziale.<br />
esso infatti raggruppa tutte le elaborazioni fatte sul OS</p>
<hr/>
<h4>3.2.2 OS.name<a name="index-3-2-2" id="index-3-2-2"></a></h4>
<p>OS.name indica solo ed esclusivamente il nome dell'OS<br />

per la creazione di questo item vengono utilizzate le risorse XML (<strong>wbstat4_os.xml</strong>)<br />
<br />
<strong>Impostazioni:</strong><strong><br />
</strong> &nbsp;&nbsp;&nbsp;per avere l'item impostare a true <a href="#opt-workos"><strong>Options.workOS</strong></a></p>
<hr/>

<h4>3.2.3 OS.version, OS.version.major, OS.version.minor, OS.version.rest<a name="index-3-2-3" id="index-3-2-3"></a></h4>
<p>Agent.version &egrave; una somma degli altri risultati, seguendo le impostazioni <a href="#opt-osversionprecision"><strong>Options.OsVersionPrecision</strong></a><br />
la versione viene suddivisa in 3 parti:<br />
<em><strong>esempio</strong>: Linux 2.5.47beta<br />
OS.version = 2.5<br />

OS.version.major = 2<br />
OS.version.minor = 5<br />
OS.version.rest = 47beta</em><br />
<br />
<strong>Impostazioni:</strong><br />
&nbsp;&nbsp; segue le specifiche <a href="#opt-osversionprecision"><strong>Options.OsVersionPrecision</strong></a><strong><br />

</strong> &nbsp;&nbsp;&nbsp;per avere l'item impostare a true <a href="#opt-workos"><strong>Options.workOS</strong></a>, <a href="#opt-workosversion"><strong>Options.workOSVersion</strong></a></p>
<hr/>
<h4>3.2.4 OS.Core, OS.Core.Description <a name="index-3-2-4" id="index-3-2-4"></a></h4>
<p>questa variabile &egrave; la definizione del core del sistema operativo: essa viene definita dal sistema operativo e non &egrave; un dato elaborato ma solo una corrispondenza. </p>
<p>la classe offre due versioni di questo dato: la prima (OS.Core) &egrave; un valore numerico facilmente archiviabile, la seconda (OS.Core.Description) &egrave; un valore testuale per la lettura umana <br />

<br />
<strong>Specifiche OS.Core - OS.Core.Description:</strong><span class="code"><br />
&nbsp;&nbsp;10 - DOS<br />
&nbsp;&nbsp;15 - Windows<br />
&nbsp;&nbsp;20 - Macintosh<br />
&nbsp;&nbsp;30 - UNIX Based<br />
<br />
&nbsp;&nbsp;90 - Palm<br />
&nbsp;&nbsp;92 - Mobile<br />
&nbsp;&nbsp;95 - console<br />
<br />
&nbsp;&nbsp;99 - UNKNOWN</span>
      <br />
      </span><br />

      <br />
      <strong>Impostazioni:</strong><br />
&nbsp;&nbsp;&nbsp;per avere l'item impostare a true <a href="#opt-workos"><strong>Options.workOS</strong></a><strong><br />
  </strong> &nbsp;&nbsp;&nbsp;per avere anche la Description si deve impostare a true anche <a href="#opt-includedescription"><strong>Options.includeDescription</strong></a></p>
<p></p>
<hr/>

<h4>3.2.5 OS.Arch, OS.Arch.Description <a name="index-3-2-5" id="index-3-2-5"></a></h4>
<p>indica (se conosciuta o definita dal sistema operativo) l'architettura del sistema, ovvero il tipo di macchina</p>
<p>il calcolo di questo valore &egrave; particolarmente affinato e si basa su tre livelli di lavoro:<br />
prima di tutto se il sistema operativo supporta un'unica architettura viene utilizzata; in caso contrario vengono cercate corrispondenze (firme) delle architetture nella user-agent; se anche in questo caso non viene trovato nulla si utilizza l'architettura pi&ugrave; comune per il sistema operativo identificato.</p>
<p>la classe offre due versioni di questo dato: la prima (OS.Arch) &egrave; un valore alfanumerico facilmente archiviabile, la seconda (OS.Arch.Description) &egrave; un valore testuale per la lettura umana <br />
<br />
<strong>Specifiche OS.Arch - OS.Description:</strong> <span class="code"><br />
&nbsp;&nbsp;0 - i386, IA-32<br />
&nbsp;&nbsp;1 - IA-64<br />
&nbsp;&nbsp;2 - AMD-64<br />
<br />
&nbsp;&nbsp;A - m68k<br />
&nbsp;&nbsp;B - PowerPC<br />
<br />
&nbsp;&nbsp;E - Sparc Sun4c, Sun4m, Sun4u <br />
<br />
&nbsp;&nbsp;G - HP-UX<br />
&nbsp;&nbsp;H - PARISC - HPPA<br />
<br />
&nbsp;&nbsp;L - MIPS<br />
<br />
&nbsp;&nbsp;O - DEC Alpha<br />
&nbsp;&nbsp;P - DEC VAX<br />
<br />
&nbsp;&nbsp;T - ARM<br />
<br />
&nbsp;&nbsp;U - PC98<br />
<br />
&nbsp;&nbsp;Y - S/390<br />
&nbsp;&nbsp;Z - ZSeries<br />
  </span><br />
<br />
<strong>Impostazioni:</strong><strong><br />
      </strong> &nbsp;&nbsp;&nbsp;per avere l'item impostare a true <a href="#opt-workos"><strong>Options.workOS</strong></a>, <a href="#opt-workosdetails"><strong>Options.workOSDetails</strong></a><strong><br />
      </strong> &nbsp;&nbsp;&nbsp;per avere anche la Description si deve impostare a true anche <a href="#opt-includedescription"><strong>Options.includeDescription</strong></a></p>
<hr/>
<h4>3.2.6 OS.Distro.Name, OS.Distro.Version <a name="index-3-2-6" id="index-3-2-6"></a></h4>
<p>indica (se presente in useragent) la distribuzione del sistema operativo Linux; la funzione non &egrave; precisa in quanto molto spesso le distribuzioni linux non appongono la propria &quot;firma&quot;.</p>
<p>i dati di riferimento sono inseriti all'interno del file <span class="code">wbstat4_spec/wbstat4_linuxdistro.xml</span>.</p>
<p>attualmente vengono identificate, quando presente la firma, le seguenti distribuzioni (viene identificata anche la versione nelle distro segnate con "*"):<br />
<span style="font-weight: bold">Ubuntu*, Fedora, Red Hat, Debian, Mandriva*, Mandrake, Slackwave, Gentoo, Suse, PCLinuxOS, Mepis, Backtrack2, Pardus</span><br />
      <br />
      <strong>Impostazioni:</strong><strong><br />
    </strong> &nbsp;&nbsp;&nbsp;per avere l'item impostare a true <a href="#opt-workos"><strong>Options.workOS</strong></a>, <a href="#opt-workosdetails"><strong>Options.workOSDetails</strong></a></p>
<hr/>

<h4>3.3 Speciali<a name="index-3-3" id="index-3-3"></a></h4>
<h4>3.3.1 Special.Framework.Version<a name="index-3-3-1" id="index-3-3-1"></a></h4>
<p>restituisce la versione del Framework.net installato sul sistema client...<br />
tale dato viene indicato in USER-AGENT con la seguente sintassi</p>
<p><span class="code">.NET CLR X.XXXX</span></p>

<p>se sono presenti pi&ugrave; versioni del framework installate, tutte le versioni verranno indicate in user-agent</p>
<p><strong>il dato Special.Framework.Version restituisce la versione pi&ugrave; recente individuata<br />
oppure il valore 0 se non &egrave; stata trovata alcuna versione del Framework</strong><br />
<br />

<strong>Impostazioni:</strong><strong><br />
</strong> &nbsp;&nbsp; per avere l'item impostare a true <a href="#opt-workspecial"><strong>Options.workSpecial</strong></a></p>
<hr/>
<h4>3.3.2 Special.Mozilla.Version<a name="index-3-3-2" id="index-3-3-2"></a></h4>
<p>il dato Special.Mozilla.Version non si riferisce alla versione del BROWSER mozilla... ma &egrave; un dato di &quot;compatibilit&agrave;&quot;.</p>

<p>tale dato, se presente, &egrave; sempre indicato a inizio stringa con questa sintassi</p>
<p><span class="code">Mozilla/X.X</span></p>
<p><em>{ poich&egrave; la versione di Mozilla (nel caso in cui esso sia il browser) &egrave; sempre indicata in questo modo<br />
    <span class="code">&nbsp;&nbsp;&nbsp;&nbsp;rv: X.X&nbsp;&nbsp;&nbsp;&nbsp;</span>}</em></p>

<p><strong>il dato Special.Mozilla.Version restituisce la versione di compatibilit&agrave; individuata a inizio stringa<br />
oppure il valore 0 se non &egrave; stata trovata alcuna corrispondenza</strong><br />
<br />
<strong>Impostazioni:</strong><strong><br />

</strong> &nbsp;&nbsp; per avere l'item impostare a true <a href="#opt-workspecial"><strong>Options.workSpecial</strong></a></p>
<hr/>
<h4>3.3.3 Special.Gecko.Version, Special.Gecko.Version.Release <a name="index-3-3-3" id="index-3-3-3"></a></h4>
<p>nel caso in cui il browser &egrave; basato sul motore GECKO (come Mozilla) viene indicata in USER-AGENT la versione di rilascio di Gecko (che sostanzialmente &egrave; una data) con questa sintassi</p>

<p><span class="code">Gecko/YYYYMMDD</span></p>
<p><strong>il dato Special.Gecko.Version restituisce la versione di motore Gecko individuata<br />
oppure il valore 0 se non &egrave; stata trovata alcuna corrispondenza</strong></p>
<p>Special.Gecko.Version restituir&agrave; la versione formale di gecko (es: 1.8)<br />
Special.Gecko.Version.Release restituir&agrave; la data di rilascio di gecko (es: 20070725)<br />
      <br />
      <strong>Impostazioni:</strong><strong><br />
        
    </strong> &nbsp;&nbsp; per avere l'item impostare a true <a href="#opt-workspecial"><strong>Options.workSpecial</strong></a></p>
<hr/>
<h4>3.3.4 Special.AppleWebKit.Version <a name="index-3-3-4" id="index-3-3-4"></a></h4>
<p>nel caso in cui il browser &egrave; basato sul motore APPLEWEBKIT (come Safari) viene indicata in USER-AGENT la versione di rilascio di AppleWebKit (che sostanzialmente corrisponde alla versione di Safari, indicata con un valore numerico di 2/3 cifre) con questa sintassi</p>

<p><span class="code">AppleWebKit/XXX</span></p>
<p><strong>il dato Special.AppleWebKit.Version restituisce la versione di motore AppleWebKit individuata<br />
oppure il valore 0 se non &egrave; stata trovata alcuna corrispondenza</strong></p>
      <br />
      <strong>Impostazioni:</strong><strong><br />
        
    </strong> &nbsp;&nbsp; per avere l'item impostare a true <a href="#opt-workspecial"><strong>Options.workSpecial</strong></a></p>
<hr/>
<h4>3.3.4 Special.Screen <a name="index-3-3-5" id="index-3-3-5"></a></h4>
<p>alcuni dispositivi mobili (PDA e Cellulari) inseriscono nella user-agent string la dimensione dello schermo per permettere al server di offrire pagine ottimizzate.</p>
<p>questa dimensione &egrave; sempre indicata come <span style="font-weight: bold">AAAxBBB</span><br />
AAA = dimensione in pixel della larghezza <br />
BBB = dimensione in pixel dell'altezza</p>
<p><span style="font-weight: bold">l'item Screen restituisce questo valore nello stesso formato AAAxBBB oppure una stringa vuota nel caso in cui non trovi corrispondenze</span> <br />
      <br />
      <strong>Impostazioni:</strong><strong><br />
    </strong> &nbsp;&nbsp; per avere l'item impostare a true <a href="#opt-workspecial"><strong>Options.workSpecial</strong></a></p>
<hr/>
<h4>3.3.5 Special.Handheld.Name, Special.Handheld.Version <a name="index-3-3-6" id="index-3-3-6"></a></h4>
<p>se viene identificato un cellulare (<a href="#index-3-2-4">OS.Core</a> 92) o palmare (<a href="#index-3-2-4">OS.Core</a> 90) o il sistema operativo è Java viene ricercato il nome (e possibilmente la versione) del dispositivo.</p>
<p>i dati di riferimento sono inseriti all'interno del file <span class="code">wbstat4_spec/wbstat4_handheld.xml</span>.</p>
<p><strong>Impostazioni:</strong><br />
&nbsp;&nbsp; per avere l'item impostare a true <a href="#opt-workspecial"><strong>Options.workSpecial</strong></a> e <a href="#opt-workspecialhandheld"><strong>Options.workSpecialHandheld</strong></a></p>
<hr/>
<h4>3.4 Condivisi<a name="index-3-4" id="index-3-4"></a></h4>
<h4>3.4.1 x.Database.ID, x.Database.Link <a name="index-3-4-1" id="index-3-4-1"></a></h4>
<p>le specifiche relative ai pattern di identificazione di WBstat sono estrapolate dal database online di useragents.org</p>
<p>WBstat restituisce quindi fra gli item l'ID del record nel database e un link alla scheda ufficiale del browser o os</p>
<p><span style="font-weight: bold">ecco i 4 item:</span><br />
Agent.Database.ID - id del browser identificato<br />
Agent.Database.Link - link alla scheda ufficiale del browser identificato      <br />
OS.Database.ID - id del sistema operativo identificato<br />
OS.Database.Link - link alla scheda ufficiale del sistema operativo identificato<br />
  <br />
  <strong>Impostazioni:</strong><br />
&nbsp;&nbsp; per avere l'ID si deve impostare a true <a href="#opt-workos"><strong>Options.workOs</strong></a> e/o <a href="#opt-workbrowser"><strong>Options.workAgent</strong></a> <br />
  </strong> &nbsp;&nbsp; per avere il link si deve impostare a true anche <a href="#opt-includedescription"><strong>Options.includeDescription</strong></a></p>
<hr/>
<h4>3.4.2 x.Icon <a name="index-3-4-2" id="index-3-4-2"></a></h4>
<p>le specifiche relative ai pattern di identificazione di WBstat sono estrapolate dal database online di useragents.org</p>
<p>WBstat restituisce quindi fra gli item il nome dell'icona ufficiale presente nella cartella ICONS scaricabile nelle release</p>
<p>le icone sono in formato gif con la seguente sintassi<br />
sistemi operativi: OS-NOME.gif<br />
browser: AG-NOME.gif      </p>
<p>dal nome tutti i caratteri non ammessi vengono eliminati e tutti gli spazi vengono convertiti in &quot;-&quot;.</p>
<p><span style="font-weight: bold">ecco i 2 item restituiti:</span><br />
Agent.Database.Link - nome icona del browser identificato <br />
OS.Database.Link - nome icona del sistema operativo identificato</p>
<p>&egrave; possibile personalizzare il valore in uscita impostando la PathIcons e scaricando dal sito ufficiale il pacchetto di icone e posizionandolo, ad esempio, sul proprio server. <br />
      <br />
      <strong>Impostazioni:</strong><strong><br />
            </strong> &nbsp;&nbsp; per avere l'icona si deve impostare una <a href="#opt-pathicons"><strong>pathIcons</strong></a> dopo aver impostato la <a href="#opt-setpath"><strong>SetPath</strong></a><br />
            di base il valore punta a "<a href="#opt-setpath"><strong>PATHBASE</strong></a>/wbstat4_icons/"</p>
<hr/>

<h4>3.5 Informativi<a name="index-3-5" id="index-3-5"></a></h4>

<h4>3.5.1 UserAgent<a name="index-3-5-1" id="index-3-5-1"></a></h4>
<p>questo dato restituisce semplicemente il dato ricevuto di USER-AGENT da analizzare<br />
  <br />
  <strong>Impostazioni:</strong><strong><br />

</strong> &nbsp;&nbsp; per avere l'item impostare a true <a href="#opt-includeuseragent"><strong>Options.includeUserAgent</strong></a></p>
<hr/>

<h4>3.5.2 UserAgent.Url<a name="index-3-5-2" id="index-3-5-2"></a></h4>
<p>viene ricercato automaticamente un qualsiasi url (o email) all'interno della user-agent string <br />
<br />
<strong>Specifiche di lavoro di Useragent.Url:</strong><span class="code"><br />
&nbsp;&nbsp;HTTP:// &nbsp;&nbsp;&nbsp;omittibile se presente www<br />
&nbsp;&nbsp;www&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;omittibile se presente http<br />
&nbsp;&nbsp;XXXX.XX &nbsp;&nbsp;&nbsp;utilizza solo il dominio di primo livello senza indicare pagine interne</span></p>
<p><strong>Impostazioni:</strong><strong><br />
</strong> &nbsp;&nbsp;&nbsp;per avere l'item impostare a true <a href="#opt-includeuseragent"><strong>Options.includeUserAgent</strong></a></p>
<hr/>
<h4>3.5.3 WBstat.Version<a name="index-3-5-3" id="index-3-5-3"></a></h4>
<p>questo &egrave; un dato di servizio e indica informazioni utili sulla classe con questa sintassi</p>
<p>WBSTAT/X.X AUTH:Simone Cingano VER:Original WEB:http://www.imente.it/wbstat</p>

<p>all'inizio c'&egrave; la versione della classe<br />
  <strong>AUTH: </strong>l'autore della versione di WBstat<br />
  <strong>VER: </strong>ORIGINAL oppure UNOFFICIAL<br />
  <strong>WEB:</strong> il sito del developer</p>
<p><span style="font-weight: bold">ricordate, se sviluppate una vostra versione di wbstat, di rispettare la licenza creative commons presente, in sintesi, all'interno della classe e sul sito ufficiale</span></p>
<hr/>
<h4>3.5.4 WBstat.Cached<a name="index-3-5-4" id="index-3-5-4"></a></h4>
<p>questo dato indica se i dati che vengono restituiti sono dati appena calcolati, oppure dati che derivano dalla cache della classe</p>
<p><strong>CACHING:</strong><br />
attraverso l'impostazione della propriet&agrave; <a href="#opt-cache"><strong>Options.Cache</strong></a> &egrave; possibile fare in modo che se lo stesso client richiede (all'interno della stessa sessione) nuovamente il calcolo dei dati WBstat, essi siano stati salvati in una cache (una variabile di sessione) e vengano recuperati, evitando sprechi di tempo inutili</p>

<p><strong>si consiglia di disattivare il caching per effettuare TEST!!</strong></p>
<hr/>
<h4>3.5.5 WBstat.Timer<a name="index-3-5-5" id="index-3-5-5"></a></h4>
<p>questo dato indica i millisecondi impiegati dalla classe per l'elaborazione della useragent string.</p>
<p>&egrave; un valore numerico riutilizzabile.</p>
<p></p>
<hr/>

<h3>4. DIFFERENZE CON PRECEDENTI VERSIONI <a name="index-4-0" id="index-4-0"></a></h3>
<h4>4.1 Da wbStat v3.x a v4.0<a name="index-4-1" id="index-4-1"></a></h4>
<h4>4.1.1 Panoramica delle differenze <a name="index-4-1-1" id="index-4-1-1"></a></h4>
<p><span style="font-weight: bold"><a href="#index-3-3-3">Gecko.Version</a>:</span> l'item Gecko.Version &egrave; stato ampliato. ci&ograve; che prima si chiamava Gecko.Version viene ora restituito in Gecko.Version.Release. Gecko.Version restituisce ora la versione formale (x.x) </p>
<p><a href="#index-3-2-5" style="font-weight: bold">OS.Arch</a>: introdotta la funzione di identificazione delle architetture</p>
<p><a href="#index-3-5-2" style="font-weight: bold">Useragent.Url</a>: al posto della rimossa Browser.Url &egrave; stata introdotta la pi&ugrave; conforme Useragent.url che svolge identica funzione</p>
<p><a href="#index-3-1-4" style="font-weight: bold">Browser.Type:</a> nonostante lo stesso nome i valori di riferimento sono stati aggiornati: vedere le <a href="develop-wbstat-release4.asp">release notes</a> per maggiori informazioni. </p>
<p><a href="#index-3-2-4" style="font-weight: bold">OS.Core:</a> introdotta os.core come sostituta di OS.Type. i valori di riferimento sono stati aggiornati; vedere le <a href="develop-wbstat-release4.asp">release notes</a> per maggiori informazioni. </p>
<p><a href="#index-3-2-6" style="font-weight: bold">OS.Distro:</a> introdotta os.core come sostituta di OS.Type nel caso di identificazione di sistema Linux.</p>
<p style="font-weight: bold">per  informazioni complete circa le differenze, e quindi le strategie di aggiornamento, consultare le <a href="develop-wbstat-release4.asp">release notes</a> ufficiali di WBstat 4.0 </p>
<hr/>
<h4>4.1.2 Item non pi&ugrave; disponibili<a name="index-4-1-2" id="index-4-1-2"></a></h4>
<p>le variabili <span style="font-weight: bold">Browser.Act</span> e <span style="font-weight: bold">Browser.Cap</span> erano presenti in WBstat3.x<br />
esse permettevano l'individuazione (tramite dati precedentemente definiti) di alcune specifiche importanti relative ai browser quali il supporto di varie tecnologie web (html, frame, js...)</p>
<p>l'impossibilit&agrave; di fornire informazioni precise e sicure in un considerevole numero di casi e la notevole occupazione di risorse ha portato alla scelta di escludere queste informazioni dal database e quindi dalla classe stessa. </p>
<hr/>
<h4>4.2 Da wbStat v4.0 a v4.1<a name="index-4-2" id="index-4-2"></a></h4>
<h4>4.2.1 Panoramica delle differenze <a name="index-4-2-1" id="index-4-2-1"></a></h4>
<p><strong>Rinominati tutti i risultati speciali:</strong><br/>
- Framework.Version -> <a href="#index-3-3-1"><strong>Special.Framework.Version</strong></a><br/>
- Mozilla.Version -> <a href="#index-3-3-2"><strong>Special.Mozilla.Version</strong></a><br/>
- Gecko.Version -> <a href="#index-3-3-3"><strong>Special.Gecko.Version</strong></a><br/>
- Gecko.Version.Release -> <a href="#index-3-3-3"><strong>Special.Gecko.Version.Release</strong></a><br/>
- <strong style="color:red;">NEW</strong> -> <a href="#index-3-3-3"><strong>Special.AppleWebKit.Version</strong></a><br/>
- <strong style="color:red;">NEW</strong> -> <a href="#index-3-3-3"><strong>Special.Handheld.Name</strong></a><br/>
- <strong style="color:red;">NEW</strong> -> <a href="#index-3-3-3"><strong>Special.Handheld.Version</strong></a><br/>
- Screen -> <a href="#index-3-3-5"><strong>Special.Screen</strong></a>
</p>
<p>OS.Distro scissa in <a href="#index-3-2-6"><strong>OS.Distro.Name</strong></a> (come OS.Distro) e <a href="#index-3-2-6"><strong>OS.Distro.Version</strong></a> (che identifica la versione di alcune distribuzioni)</p>
<p><a href="#index-3-1-5" style="font-weight: bold">Browser.SubType</a>: piccola aggiunta alla tabella di riferimento ( vedere le <a href="develop-wbstat-release4.asp">release notes</a> per maggiori informazioni). </p>
<p style="font-weight: bold">per informazioni complete circa le differenze, e quindi le strategie di aggiornamento, consultare le <a href="develop-wbstat-release4.asp">release notes</a> ufficiali di WBstat 4.0/4.1 </p>
<hr/>
<h4>4.3 Da wbStat v4.1 a v4.2<a name="index-4-3" id="index-4-3"></a></h4>
<h4>4.3.1 Panoramica delle differenze <a name="index-4-3-1" id="index-4-3-1"></a></h4>
<p>
- Minori Bugfix
- Nessuna modifica radicale
</p>
<hr/>
<h4>4.4 Da wbStat v4.2 a v4.3<a name="index-4-4" id="index-4-4"></a></h4>
<h4>4.4.1 Panoramica delle differenze <a name="index-4-4-1" id="index-4-4-1"></a></h4>
<p>
- Minori Bugfix
- Tutti gli item "Browser" sono stati rinominati in "Agent"
</p>
</div>

<h3><a id="site"></a> WBstat</h3>
<p><strong>WBstat</strong> &egrave; una piccola ma potente applicazione web sviluppata in linguaggio ASP3.<br />

La funzione di questa classe  &egrave; l'elaborazione delle stringhe user-agent  e la restituzione di dati razionalizzati; nella pratica l'oneroso  compito che WBstat assolve &egrave; quello di 'prendere' la user-agent ( che &egrave;  una stringa 'senza regole' che pu&ograve; contenere dati in forme quasi mai  convenzionali ) e trasformarla in una serie di dati riutilizzabili, quali  &quot;Sistema Operativo&quot;, &quot;Browser&quot;, etc. etc.</p>
<p>		  Questi dati estrapolati dalla stringa user-agent possono poi essere utilizzati facilmente dalla  vostra applicazione per statistiche, marketing, analisi...<br />
  La classe &egrave; inoltre  personalizzabile ( per permettere di ottimizzare  il carico di lavoro a seconda delle esigenze) e produce dati di qualit&agrave; con scarso margine di errore.</p>
<p>Fra le feature pi&ugrave; importanti c'&egrave; il 'guessing', che permette di identificare il nome dell'agente anche se esso non &egrave; presente all'interno del database seguendo una serie di pattern che cercano firme convenzionali.</p>
<hr/>
<p>L'ultima versione della classe identifica correttamente tutti i browser, robots e sistemi operativi presenti nel <a href="database.asp">database</a> e dall'analisi della user-agent estrapola ulteriori informazioni (se presenti) quali il livello di crittazione, la versione di Gecko, l'architettura hardware, eventuali url, la lingua, la distribuzione linux, il motore di layout del browser; inoltre la classe permette di visualizzare una icona relativa al sistema operativo e al browser (se riconosciuti) personalizzata a seconda della versione degli stessi. </p>
<h5>licenza</h5>
<p>La classe &egrave; distribuita sotto <a href="http://creativecommons.org/licenses/by-nc-sa/2.5/it/" rel="external">licenza Creative Commons</a>.  </p>
<p>tu sei libero di riprodurre, distribuire, comunicare al pubblico, esporre
in pubblico e di modificare quest'opera
alle seguenti condizioni:<br/>
<strong>Attribuzione</strong> Devi attribuire la paternità dell'opera nei modi indicati
dall'autore o da chi ti ha dato l'opera in licenza e in modo tale da non
suggerire che essi avallino te o il modo in cui tu usi l'opera.<br/>
<strong>Non commerciale</strong> Non puoi usare quest'opera per fini commerciali.<br/>
<strong>Condividi allo stesso modo</strong> Se alteri o trasformi quest'opera, o se
la usi per crearne un'altra, puoi distribuire l'opera risultante solo con
una licenza identica o equivalente a questa.</p>

