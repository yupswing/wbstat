<%
'####################################################################################################
'### WBSTAT decode functions ###
'#
'# * @info		      wbStat 4.4dev
'# * @author          Simone Cingano <simonecingano@gmail.com>
'# * @copyright       2002-2015 Simone Cingano
'# * @license         http://www.opensource.org/licenses/mit-license.php
'# * @home            https://github.com/yupswing/wbstat
'#
'####################################################################################################

'#  INFORMAZIONI, LICENZA E SITO DI RIFERIMENTO:
'#  vedere file wbstat4_class.asp
'####################################################################################################

' ************************************** TOOLS *******************************************************

	function WBstat_printFlag(path,flag)
		dim FSO,res,f
		Set FSO=Server.CreateObject("Scripting.FileSystemObject")
		f = left(flag,2)
		If FSO.FileExists(server.MapPath(path & f & ".gif")) Then
			res = path & f & ".gif"
		else
			res = path & "xx.gif"
		End If
	
		set FSO=nothing
		WBstat_printFlag = res
	end function

' ************************************** GENERALI *******************************************************

	Private Function WBstat_unknown(lang)
		select case lang
			case "it" :	WBstat_unknown = "Sconosciuto"
			case else :	WBstat_unknown = "Unknown"
		end select
	end function
	
	Private Function WBstat_proprietary(lang)
		select case lang
			case "it" :	WBstat_proprietary = "Proprietario"
			case else :	WBstat_proprietary = "Proprietary"
		end select
	end function


' ******************************* DECODIFICA agent.TYPE ***********************************************

	Private Function WBstat_DecodeType(lang,number)
	Dim pDecodeType
		select case number
			case "5"		: pDecodeType = "Internet Browser"
			case "0"		: pDecodeType = "Robot"
			case else		: pDecodeType = WBstat_unknown(lang) '9
		end select
	  WBstat_DecodeType = pDecodeType
	End Function
	
' ******************************* DECODIFICA agent.SUBTYPE ********************************************

	Private Function WBstat_DecodeSubtype(lang,number)
		select case lang
			case "it" :	WBstat_DecodeSubtype = WBstat_DecodeSubtypeIT(number)
			case else :	WBstat_DecodeSubtype = WBstat_DecodeSubtypeEN(number)
		end select
	end function
	
	'*** ENGLISH ***
	Private Function WBstat_DecodeSubtypeEN(number)
	Dim pDecodeSubType
		select case number
			case "000"		: pDecodeSubType = "Spider"
			case "001"		: pDecodeSubType = "Validator"
			case "002"		: pDecodeSubType = "Mail collector"
			case "008"		: pDecodeSubType = "Robot"
			case "510"		: pDecodeSubType = "Standard browser"
			case "515"		: pDecodeSubType = "Multimedia browser"
			case "520"		: pDecodeSubType = "WAP Browser"
			case "521"		: pDecodeSubType = "Mobile Browser"
			case "530"		: pDecodeSubType = "Feed Reader"
			case "550"		: pDecodeSubType = "Application"
			case "590"		: pDecodeSubType = "Downloader"
			case "591"		: pDecodeSubType = "Offline Browser"
			case else		: pDecodeSubType = "Unknown" '999
		end select
	WBstat_DecodeSubtypeEN = pDecodeSubType
	End Function
	
	'*** ITALIANO ***
	Private Function WBstat_DecodeSubtypeIT(number)
	Dim pDecodeSubType
		select case number
			case "000"		: pDecodeSubType = "Spider"
			case "001"		: pDecodeSubType = "Validatore"
			case "002"		: pDecodeSubType = "Email collector"
			case "008"		: pDecodeSubType = "Robot"
			case "510"		: pDecodeSubType = "Browser standard"
			case "515"		: pDecodeSubType = "Browser multimediale"
			case "520"		: pDecodeSubType = "Browser WAP"
			case "521"		: pDecodeSubType = "Browser Mobile"
			case "530"		: pDecodeSubType = "Feed Reader"
			case "550"		: pDecodeSubType = "Applicazioni"
			case "590"		: pDecodeSubType = "Downloader"
			case "591"		: pDecodeSubType = "Browser Offline"
			case else		: pDecodeSubType = "Sconosciuto" '999
		end select
	WBstat_DecodeSubtypeIT = pDecodeSubType
	End Function
	
' ******************************* DECODIFICA agent.SUBTYPE ********************************************

	'decodifica Agent.Engine
	Private Function WBstat_DecodeEngine(lang,number)
	Dim pDecodeEngine
		if isnumeric(number) = False then number = 0
		select case number
			case 1		: pDecodeEngine = "Trident"
			case 2		: pDecodeEngine = "Gecko"
			case 3		: pDecodeEngine = "WebKit"
			case 4		: pDecodeEngine = "Presto"
			case 0		: pDecodeEngine = WBstat_proprietary(lang)
			case else	: pDecodeEngine = ""
		end select
	WBstat_DecodeEngine = pDecodeEngine
	End Function
	
' ******************************* DECODIFICA agent.SEARCHENGINE ************************************

	Private Function WBstat_DecodeSearchEngine(lang,number)
		if isnumeric(number) = False then number = 0
		select case lang
			case "it" :	WBstat_DecodeSearchEngine = WBstat_DecodeSearchEngineIT(number)
			case else :	WBstat_DecodeSearchEngine = WBstat_DecodeSearchEngineEN(number)
		end select
	end function
	
	'*** ENGLISH ***
	Private Function WBstat_DecodeSearchEngineEN(number)
	Dim pDecodeSearchEngine
		pDecodeSearchEngine = ""
		select case number
			case 0 : pDecodeSearchEngine = "Full Search"
			case 5 : pDecodeSearchEngine = "Index search"
			case 6 : pDecodeSearchEngine = "Directory"
			case 7 : pDecodeSearchEngine = "Target search"
			case 8 : pDecodeSearchEngine = "Geographic search"
			case 10 : pDecodeSearchEngine = "Image search"
			case 11 : pDecodeSearchEngine = "Favicons searcj"
			case 20 : pDecodeSearchEngine = "Blog search"
			case 25 : pDecodeSearchEngine = "Feed search"
			case 26 : pDecodeSearchEngine = "Wap search"
			case 90 : pDecodeSearchEngine = "Webcrawler"
			case 100 : pDecodeSearchEngine = "Distribuited webcrawler"
		end select
	WBstat_DecodeSearchEngineEN = pDecodeSearchEngine
	End Function
	
	'*** ITALIANO ***
	Private Function WBstat_DecodeSearchEngineIT(number)
	Dim pDecodeSearchEngine
		pDecodeSearchEngine = ""
		select case number
			case 0 : pDecodeSearchEngine = "Ricerca multifunzionale"
			case 5 : pDecodeSearchEngine = "Ricerca su indice"
			case 6 : pDecodeSearchEngine = "Directory"
			case 7 : pDecodeSearchEngine = "Ricerca specializzata"
			case 8 : pDecodeSearchEngine = "Ricerca geografica"
			case 10 : pDecodeSearchEngine = "Ricerca immagini"
			case 11 : pDecodeSearchEngine = "Ricerca favicons"
			case 20 : pDecodeSearchEngine = "Ricerca di Blog"
			case 25 : pDecodeSearchEngine = "Ricerca di Feed"
			case 26 : pDecodeSearchEngine = "Ricerca nel Wap"
			case 90 : pDecodeSearchEngine = "Webcrawler"
			case 100 : pDecodeSearchEngine = "Webcrawler distribuito"
		end select
	WBstat_DecodeSearchEngineIT = pDecodeSearchEngine
	End Function
	
' ******************************* DECODIFICA agent.CORE ****************************************
	
	'decodifica OS.Core
	Private Function WBstat_DecodeCore(lang,number)
	Dim pDecodeCore
		select case number
			case 10		: pDecodeCore = "DOS"
			case 15		: pDecodeCore = "WIN-9x"
			case 16		: pDecodeCore = "WIN-NT"
			case 20		: pDecodeCore = "MAC"
			case 30		: pDecodeCore = "UNIX"
			case 70		: pDecodeCore = "OTHER"
			case 90		: pDecodeCore = "PALM"
			case 92		: pDecodeCore = "MOBILE"
			case 95		: pDecodeCore = "CONSOLE"
			case else	: pDecodeCore = "UNKNOWN" '99
		end select
	WBstat_DecodeCore = pDecodeCore
	End Function
	
' ******************************* DECODIFICA agent.ARCH ***************************************

	'decodifica l'architettura
	Private Function WBstat_DecodeArch(lang,arch)
	dim pDecodeArch
		select case cstr(arch)
			case "0" 		: pDecodeArch = "x86 32bit"
			case "8","9" 	: pDecodeArch = "x86 64bit"
			case "A" 		: pDecodeArch = "m68k"
			case "B" 		: pDecodeArch = "PowerPC"
			case "E" 		: pDecodeArch = "Sparc"
			case "G" 		: pDecodeArch = "PARISC"
			case "L" 		: pDecodeArch = "MIPS"
			case "O" 		: pDecodeArch = "DEC ALPHA"
			case "P" 		: pDecodeArch = "DEC VAX"
			case "o" 		: pDecodeArch = "ALPHASERVER"
			case "T" 		: pDecodeArch = "ARM"
			case "U" 		: pDecodeArch = "PC98"
			case "Y" 		: pDecodeArch = "IBM S/390"
			case "Z" 		: pDecodeArch = "IBM Zseries"
			case else 		: pDecodeArch = ""
		end select
	WBstat_DecodeArch = pDecodeArch
	End Function
	
' **********************************************************************************************

' ********************************** DECODIFICA LANGUAGE ***************************************

' LINGUE IN FORMATO ISO 639-1 Alpha-2 (codici lingua a due lettere)
' NAZIONI IN FORMATO ISO 3166-1 Alpha-2 (codici nazioni a due lettere)

	Private Function WBstat_DecodeLang(lang,value)
		select case lang
			case "it" :	WBstat_DecodeLang = WBstat_DecodeLangIT(value)
			case else :	WBstat_DecodeLang = WBstat_DecodeLangEN(value)
		end select
	end function
	
	public Function WBstat_DecodeLangEN(value)
		dim r
		select case left(value,2)
			case "": r = ""
			case "en": r = "English"
			case "it": r = "Italian"
			case "fr": r = "French"
			case "de": r = "German"
			case "es": r = "Spanish"
			case "pt": r = "Portuguese"
			case "zh": r = "Chinese"
			case "ar": r = "Arabic"
			case "ja": r = "Japanese"
			case "ru": r = "Russian"
			case "he": r = "Hebrew"
			case "tr": r = "Turkish"
			case "no": r = "Norwegian"
			case "el": r = "Greek"
			case "sv": r = "Swedish"
			case "pl": r = "Polish"
			case "hr": r = "Croatian"
			case "cs": r = "Czech"
			case "da": r = "Danish"
			case "nl": r = "Dutch"
			case "sl": r = "Slovenian"
			
			case "ab": r = "Abkhazian"
			case "aa": r = "Afar"
			case "af": r = "Afrikaans"
			case "ak": r = "Akan"
			case "sq": r = "Albanian"
			case "am": r = "Amharic"
			case "an": r = "Aragonese"
			case "hy": r = "Armenian"
			case "as": r = "Assamese"
			case "ay": r = "Aymara"
			case "av": r = "Avaric"
			case "ae": r = "Avestan"
			case "az": r = "Azerbaijani"
			case "bm": r = "Bambara"
			case "ba": r = "Bashkir"
			case "eu": r = "Basque"
			case "bn": r = "Bengali"
			case "bh": r = "Bihari"
			case "br": r = "Breton"
			case "bi": r = "Bislama"
			case "bs": r = "Bosniac"
			case "bg": r = "Bulgarian"
			case "my": r = "Burmese"
			case "be": r = "Byelorussian"
			case "ca": r = "Catalan"
			case "kw": r = "Cornish"
			case "co": r = "Corsican"
			case "ny": r = "Chichewa"
			case "cu": r = "Church Slavic"
			case "cv": r = "Chuvash"
			case "dv": r = "Divehi"
			case "dz": r = "Dzongkha"
			case "eo": r = "Esperanto"
			case "et": r = "Estonian"
			case "ee": r = "Ewe"
			case "fo": r = "Faroese"
			case "fj": r = "Fijian"
			case "fi": r = "Finnish"
			case "fy": r = "Frisian"
			case "ff": r = "Fulah"
			case "lg": r = "Ganda"
			case "gl": r = "Gallegan"
			case "ka": r = "Georgian"
			case "kl": r = "Greenlandic"
			case "gn": r = "Guarani"
			case "gu": r = "Gujarati"
			case "ht": r = "Haitian"
			case "ha": r = "Hausa"
			case "hz": r = "Herero"
			case "hi": r = "Hindi"
			case "ho": r = "Hiri Motu"
			case "hu": r = "Hungarian"
			case "is": r = "Icelandic"
			case "io": r = "Ido"
			case "ig": r = "Igbo"
			case "id": r = "Indonesian"
			case "ia": r = "Interlingua"
			case "ie": r = "Interlingue"
			case "iu": r = "Inuktitut"
			case "ik": r = "Inupiak"
			case "ga": r = "Irish"
			case "jv": r = "Javanese"
			case "kn": r = "Kannada"
			case "kr": r = "Kanuri"
			case "ks": r = "Kashmiri"
			case "kk": r = "Kazakh"
			case "km": r = "Khmer"
			case "ki": r = "Kikuyu"
			case "rw": r = "Kinyarwanda"
			case "ky": r = "Kirghiz"
			case "kv": r = "Komi"
			case "ko": r = "Korean"
			case "kg": r = "Kongo"
			case "kj": r = "Kwanyama"
			case "ku": r = "Kurdish"
			case "lo": r = "Lao"
			case "la": r = "Latin"
			case "lv": r = "Latvian"
			case "li": r = "Limburgish"
			case "ln": r = "Lingala"
			case "lt": r = "Lithuanian"
			case "lu": r = "Luba-katanga"
			case "lb": r = "Luxembourgish"
			case "mk": r = "Macedonian"
			case "mg": r = "Malagasy"
			case "ms": r = "Malay"
			case "ml": r = "Malayalam"
			case "mt": r = "Maltese"
			case "gv": r = "Manx"
			case "mi": r = "Maori"
			case "mr": r = "Marathi"
			case "mo": r = "Moldavian"
			case "mn": r = "Mongolian"
			case "na": r = "Nauru"
			case "nv": r = "Navajo"
			case "nd": r = "Northern Ndebele"
			case "nr": r = "Southern Ndebele"
			case "ng": r = "Ndonga"
			case "ne": r = "Nepali"
			case "nb": r = "Norwegian Bokmål"
			case "nn": r = "Norwegian Nynorsk"
			case "oc": r = "Occitan"
			case "oj": r = "Ojibwa"
			case "or": r = "Oriya"
			case "om": r = "Oromo"
			case "os": r = "Ossetian"
			case "pi": r = "Pali"
			case "pa": r = "Panjabi"
			case "fa": r = "Persian"
			case "ps": r = "Pushto"
			case "qu": r = "Quechua"
			case "rm": r = "Rhaeto-Romance"
			case "ro": r = "Romanian"
			case "rn": r = "Rundi"
			case "sm": r = "Samoan"
			case "sg": r = "Sango"
			case "sa": r = "Sanskrit"
			case "gd": r = "Scottish Gaelic"
			case "sr": r = "Serbian"
			case "sh": r = "Serbo-Croatian"
			case "sc": r = "Sardinian"
			case "sn": r = "Shona"
			case "ii": r = "Sichuan Yi"	
			case "sd": r = "Sindhi"
			case "si": r = "Singhalese"
			case "ss": r = "Siswant"
			case "sk": r = "Slovak"
			case "so": r = "Somali"
			case "st": r = "Sotho"
			case "su": r = "Sudanese"
			case "sw": r = "Swahili"
			case "ty": r = "Tahitian"
			case "tl": r = "Tagalog"
			case "tg": r = "Tajik"
			case "ta": r = "Tamil"
			case "tt": r = "Tatar"
			case "te": r = "Telugu"
			case "th": r = "Thai"
			case "bo": r = "Tibetan"
			case "ti": r = "Tigrinya"
			case "to": r = "Tonga"
			case "ts": r = "Tsonga"
			case "tn": r = "Tswana"
			case "tk": r = "Turkmen"
			case "tw": r = "Twi"
			case "ug": r = "Uighur"
			case "uk": r = "Ukrainian"
			case "ur": r = "Urdu"
			case "uz": r = "Uzbek"
			case "ve": r = "Venda"
			case "vi": r = "Vietnamese"
			case "vo": r = "Volapük"
			case "wa": r = "Walloon"
			case "cy": r = "Welsh"
			case "wo": r = "Wolof"
			case "xh": r = "Xhosa"
			case "yi": r = "Yiddish"
			case "yo": r = "Yoruba"
			case "za": r = "Zhuang"
			case "zu": r = "Zulu"
			case else: r = ""
		end select
		WBstat_DecodeLangEN = r
	end function
	
	
	public Function WBstat_DecodeLangIT(value)
		dim r
		' O = parlata in una sola nazione
		' N = codice nazione iso 3166	
		' n = nome della nazione
												'0 |N  |n
		select case left(value,2)				'-----------------------------------
			case "": r = ""
			case "en": r = "Inglese"			'0	GB	Regno Unito
			case "it": r = "Italiano"			'0	IT	Italia
			case "fr": r = "Francese"			'0	FR	Francia
			case "de": r = "Tedesco"			'0	DE	Germania
			case "es": r = "Spagnolo"			'0	ES	Spagna
			case "pt": r = "Portoghese"			'0	PT	Portogallo
			case "zh": r = "Cinese"				'1	CN	Cina
			case "ar": r = "Arabo"				'0	XX	XXXXX
			case "ja": r = "Giapponese"			'0	JP	Giappone
			case "ru": r = "Russo"				'0	RU	Russia
			case "he": r = "Ebraico"			'0	IL	Israele
			case "tr": r = "Turco"				'0	TR	Turchia
			case "no": r = "Norvegese"			'1	NO	Norvegia
			case "el": r = "Greco"				'0	GR	Grecia
			case "sv": r = "Svedese"			'0	SE	Svezia
			case "pl": r = "Polacco"			'1	PL	Polonia
			case "hr": r = "Croato"				'0	HR	Croazia
			case "cs": r = "Ceco"				'0	CZ	Repubblica Ceca
			case "da": r = "Danese"				'0	DK	Danimarca
			case "nl": r = "Olandese"			'0	NL	Paesi Bassi
			case "sl": r = "Sloveno"			'0	SI	Slovenia
			
			case "ab": r = "Abkhazo"			'0	GE	Georgia
			case "aa": r = "Afar"				'1	ET	Etiopia
			case "af": r = "Afrikaans"			'1	ZA 	Sud Africa
			case "ak": r = "Akan"				'1	GH	Ghana
			case "sq": r = "Albanese"			'0	AL	Albania
			case "am": r = "Amarico"			'0	ET	Etiopia
			case "an": r = "Aragonese"			'1	ES	Spagna
			case "hy": r = "Armeno"				'1	AM	Armenia
			case "as": r = "Assamese"			'1	IN	India
			case "av": r = "Avarico"			'0	XX	XXXXX
			case "ae": r = "Avestano"			'1	IR	Iran
			case "ay": r = "Aymara"				'0	BO	Bolivia	+ PE Perù
			case "az": r = "Azero"				'0	AZ	Azerbaijan
			case "bm": r = "Bambara"			'0	ML	Mali
			case "ba": r = "Bashkir"			'1	RU	Russia
			case "eu": r = "Basco"				'1	ES	Spagna
			case "bn": r = "Bengali"			'0	BD	Bangladesh
			case "bh": r = "Bihari"				'1	IN	India
			case "br": r = "Bretone"			'0	FR	Francia
			case "bi": r = "Bislama"			'1	VU	Vanuatu
			case "be": r = "Bielorusso"			'1	FR	Francia
			case "bs": r = "Bosniaco"			'1	BA	Bosnia-Erzegovina
			case "bg": r = "Bulgaro"			'1	BG	Bulgaria
			case "my": r = "Burmese"			'1	MN	Myanmar (Birmania)
			case "ca": r = "Catalano"			'0	ES	Spagna
			case "ch": r = "Chamorro" 			'1	MP	Isole Marianne Settentrionali
			case "ce": r = "Ceceno"				'1	RU	Russia (Cecenia)
			case "ny": r = "Chichewa"			'0	MW	Malawi
			case "cv": r = "Ciuvascio"			'1	RU	Russia
			case "kw": r = "Cornico"			'1	GB	Inghilterra
			case "co": r = "Corso"				'0	FR	Francia
			case "cu": r = "Slavo ecclesiastico"	'0	GR	Grecia	
			case "dv": r = "Divehi"				'1	MV	Maldive
			case "dz": r = "Dzongkha"			'0	BT	Bhutan
			case "eo": r = "Esperanto"			'1	XX	Nessuna nazione
			case "et": r = "Estone"				'0	EE	Estonia
			case "ee": r = "Ewe"				'0	GH	Ghana
			case "fo": r = "Faroese"			'0	FO	Isole Faroe
			case "fj": r = "Fijiano"			'1	FJ	Fiji
			case "fi": r = "Finlandese"			'0	FI	Finlandia
			case "fy": r = "Frisone"			'1	NL	Paesi Bassi
			case "ff": r = "Fula"				'0	SN	Senegal
			case "gl": r = "Galiziano"			'1	ES	Spagna
			case "ka": r = "Georgiano"			'0	GE	Georgia
			case "lg": r = "Ganda"				'1	UG	Uganda
			case "kl": r = "Groenlandese"		'1	GL	Groenlandia
			case "gn": r = "Guarani"			'1	PY	Paraguay
			case "gu": r = "Gujarati"			'0	IN	India
			case "ht": r = "Haitiano"			'1	HT	Haiti
			case "ha": r = "Hausa"				'0	NG	Nigeria + Niger
			case "hz": r = "Herero"				'0	NA	Namibia
			case "ho": r = "Hiri Motu"			'1	PG	Papua Nuova Guinea
			case "hi": r = "Hindi"				'1	IN	India
			case "hu": r = "Ungherese"			'1	HU	Ungheria
			case "io": r = "Ido"				'0	XX	XXXXX
			case "ig": r = "Igbo"				'1	NG	Nigeria
			case "is": r = "Islandese"			'1	IS	Islanda
			case "id": r = "Indonesiano"		'0	ID	Indonesia
			case "ia": r = "Interlingua"		'0	XX	XXXXX
			case "ie": r = "Interlingue"		'0	XX	XXXXX
			case "iu": r = "Inuktitut"			'1	CA	Canada
			case "ik": r = "Inupiak"			'1	US	Stati Uniti (Alaska)
			case "ga": r = "Gaelico Irlandese"	'1	IE	Irlanda
			case "jv": r = "Giavanese"			'1	ID	Indonesia
			case "kn": r = "Kannada"			'1	IN	India
			case "ks": r = "Kashmiri"			'1	IN	India
			case "kk": r = "Kazakh"				'0	KZ	Kazakistan
			case "km": r = "Khmer"				'0	KH	Cambogia
			case "rw": r = "Kinyarwanda"		'1	RW	Rwanda
			case "kr": r = "Kanuri"				'1	NG	Nigeria
			case "ki": r = "Kikuyu"				'1	KE	Kenya
			case "kv": r = "Komi"				'1	RU	Russia
			case "kg": r = "Kongo"				'0	CG 	Rep. del Congo 	+ CD Zaire (Rep. Dem. del Congo)
			case "kj": r = "Kuanyama"			'0	NA	Namibia 		+ AO Angola
			case "ky": r = "Kirghiso"			'1	KG	Kirghizistan
			case "ko": r = "Coreano"			'1	KR	Corea del Sud +  KP Corea del Nord
			case "ku": r = "Curdo"				'0	TR	Turchia
			case "lo": r = "Lao"				'1	LA	Laos
			case "la": r = "Latino"				'0	VA	Citta del vaticano
			case "lv": r = "Lettone"			'1	LV	Lettonia
			case "li": r = "Limburghese"		'0	NL	Paesi Bassi			
			case "ln": r = "Lingala"			'0	CG 	Rep. del Congo 	+ CD Zaire (Rep. Dem. del Congo)
			case "lt": r = "Lituano"			'0	LT	Lituania		
			case "lu": r = "Luba-katanga"		'1	CD	Rep. Dem. del Congo
			case "lb": r = "Lussemburghese"		'1	LU	Lussemburgo
			case "mk": r = "Macedone"			'0	MK	Macedonia
			case "mg": r = "Malgascio"			'0	MG	Madagascar
			case "ms": r = "Malay"				'0	MY	Malaysia
			case "ml": r = "Malayalam"			'1	IN	India
			case "mt": r = "Maltese"			'1	MT	Malta
			case "gv": r = "Mannese"			'1	GB	Inghilterra
			case "mi": r = "Maori"				'1	NZ	Nuova Zelanda
			case "mr": r = "Marathi"			'1	IN	India
			case "mh": r = "Marshallese"		'0	MH	Isole Marshall
			case "mo": r = "Moldavo"			'1	MD	Moldavia
			case "mn": r = "Mongolo"			'0	MN	Mongolia
			case "na": r = "Nauru"				'1	NR	Nauru
			case "nv": r = "Navajo"				'1	US	Stati Uniti
			case "nd": r = "Ndebele settentrionale"	'0	ZW	Zimbabwe	+ BW Botswana
			case "nr": r = "Ndebele meridionale"	'0	XX	XXXXX
			case "ng": r = "Ndonga"				'0	NA	Namibia
			case "ne": r = "Nepalese"			'0	NP	Nepal
			case "nb": r = "Norvegese Bokmål"	'0	NO	Norvegia
			case "nn": r = "Norvegese Nynorsk"	'1	NO	Norvegia
			case "oc": r = "Occitano"			'0	FR	Francia
			case "oj": r = "Ojibwa"				'0	CA	Canada
			case "or": r = "Oriya"				'1	IN	India
			case "om": r = "Oromo"				'0	ET	Etiopia		+ KE	Kenya
			case "os": r = "Osseto"				'0	RU	Russia
			case "pi": r = "Pali"				'1	IN	India
			case "pa": r = "Punjabi"			'0	PK	Pakistan	+ IN India
			case "fa": r = "Persiano"			'1	IR	Iran
			case "ps": r = "Pashto"				'0	AF	Afghanistan	+ PK	Pakistan
			case "qu": r = "Quechua"			'0	BO	Bolivia	+ PE Perù
			case "rm": r = "Romancio"			'1	CH	Svizzera
			case "ro": r = "Rumeno"				'0	RO	Romania
			case "rn": r = "Rundi"				'1	BI	Burundi
			case "sm": r = "Samoano"			'0	WS	Samoa	+ AS	Samoa Americane
			case "sg": r = "Sango"				'0	CF	Repubblica Centrafricana
			case "sa": r = "Sanscrito"			'0	IN	India
			case "sc": r = "Sardo"				'0	IT	Italia
			case "gd": r = "Gaelico scozzese"	'9	GB	Scozia	+ CA	Canada
			case "sr": r = "Serbo"				'0	RS	Serbia
			case "sh": r = "Serbo-Croato"		'0	BA	Bosnia-Erzegovina
			case "sn": r = "Shona"				'0	ZW	Zimbabwe
			case "ii": r = "Sichuan Yi"			'0	CN	Cina	+ TH	Thailandia
			case "sd": r = "Sindhi"				'0	PK	Pakistan	+ IN	India	
			case "si": r = "Singalese"			'1	LK	Sri Lanka
			case "sk": r = "Slovacco"			'0	SK	Slovacchia 
			case "so": r = "Somalo"				'0	SO	Somalia
			case "st": r = "Sesotho"			'0	ZA	Sudafrica	+ LS	Lesotho
			case "su": r = "Sundanese"			'1	ID	Indonesia
			case "sw": r = "Swahili"			'0	TZ	Tanzania
			case "ss": r = "Swati"				'0	ZA	Sudafrica
			case "tl": r = "Tagalog"			'1	PH	Filippine
			case "ty": r = "Tahitiano"			'1	PF	Polinesia Francese
			case "tg": r = "Tagico"				'0	TJ	Tagikistan
			case "ta": r = "Tamil"				'1	IN	India
			case "tt": r = "Tataro"				'0	RU	Russia
			case "te": r = "Telugu"				'1	IN	India
			case "th": r = "Thai"				'1	TH	Thailandia
			case "bo": r = "Tibetano"			'0	CN	Cina
			case "ti": r = "Tigrino"			'0	ER  Eritrea		+ ET	Etiopia
			case "to": r = "Tonga"				'1	TO	Tonga
			case "ts": r = "Tsonga"				'0	ZA	Sudafrica	+ MZ	Mozambico
			case "tn": r = "Tswana"				'0	ZA	Sudafrica
			case "tk": r = "Turcmeno"			'0	TM	Turkmenistan
			case "tw": r = "Twi"				'1	GH	Ghana
			case "ug": r = "Uighuro"			'0	CN	Cina
			case "uk": r = "Ucraino"			'0	UA	Ucraina
			case "ur": r = "Urdu"				'0	IN	India		+ PK	Pakistan
			case "uz": r = "Usbeco"				'0	UZ	Uzbekistan
			case "ve": r = "Venda"				'0	ZA	Sudafrica
			case "vi": r = "Vietnamita"			'1	VN	Vietnam
			case "vo": r = "Volapük"			'0	XX	XXXXX
			case "wa": r = "Vallone"			'0	BE	Belgio
			case "cy": r = "Gallese"			'1	GB	Galles
			case "wo": r = "Wolof"				'0	SN	Senegal
			case "xh": r = "Xhosa"				'0	ZA	Sudafrica
			case "yi": r = "Yiddish"			'0	IL	Israele
			case "yo": r = "Yoruba"				'0	NG	Nigeria	
			case "za": r = "Zhuang"				'1	CN	Cina
			case "zu": r = "Zulu"				'0	ZA	Sudafrica
			case else: r = ""
		end select
		WBstat_DecodeLangIT = r
	end function
	
' **********************************************************************************************

' ********************************** DECODIFICA VERSIONI ***************************************


	' > http://en.wikipedia.org/wiki/Safari_(web_browser)#Version_history
	public Function WBstat_DecodeSafariVersion(maj,min)
	
		dim results(5)
		results(0) = true 	'decodificato
		results(1) = 0 		'major
		results(2) = 0 		'minor
		results(3) = 0 		'rest
		results(4) = 0 		'res
		results(5) = 1 		'precision		
		
		if maj < 73 then		'0.8
			results(1) = 0 : results(2) = 8 : results(3) = "" : results(4) = "0.8"
		elseif maj < 85 then	'0.9
			results(1) = 0 : results(2) = 9 : results(3) = "" : results(4) = "0.9"
		elseif maj < 100 then	'1.0
			results(1) = 1 : results(2) = 0 : results(3) = "" : results(4) = "1.0"
		elseif maj < 125 then	'1.1
			results(1) = 1 : results(2) = 1 : results(3) = "" : results(4) = "1.1"
		elseif maj < 312 then	'1.2
			results(1) = 1 : results(2) = 2 : results(3) = "" : results(4) = "1.2"
		elseif maj < 412 then	'1.3
			results(1) = 1 : results(2) = 3 : results(3) = "" : results(4) = "1.3"
		elseif maj < 522 then	'2.0
			results(1) = 2 : results(2) = 0 : results(3) = "" : results(4) = "2.0"
		elseif maj < 525 and min < 13 then	'3.0 da 522.12
			results(1) = 3 : results(2) = 0 : results(3) = "" : results(4) = "3.0"
		elseif maj < 525 and min < 27 then	'3.1 da 525.13
			results(1) = 3 : results(2) = 1 : results(3) = "" : results(4) = "3.1"
		elseif maj < 526 then	'3.2 da 525.27
			results(1) = 3 : results(2) = 2 : results(3) = "" : results(4) = "3.2"
		elseif maj < 533 and min < 16 then	'4.0 da 526.12
			results(1) = 4 : results(2) = 0 : results(3) = "" : results(4) = "4.0"
		elseif maj < 600 then	'5.0 da 533.16
			results(1) = 5 : results(2) = 0 : results(3) = "" : results(4) = "5.0"
		else
			results(5) = 0
			results(0) = false
		end if
		
		WBstat_DecodeSafariVersion = results
	
	end function
	
	
	' > http://www.omnigroup.com/applications/omniweb/developer/
	public Function WBstat_DecodeOmniwebVersion(maj,min)
	
		dim results(5)
		results(0) = true 	'decodificato
		results(1) = 0 		'major
		results(2) = 0 		'minor
		results(3) = 0 		'rest
		results(4) = 0 		'res
		results(5) = 1 		'precision
		
		if maj >= 496 and maj <= 650 then '650 numero casuale
			if maj < 558 then
				results(1) = 4 : results(2) = 5 : results(3) = "" : results(4) = "4.5"
			elseif maj < 563 then
				results(1) = 5 : results(2) = 0 : results(3) = "" : results(4) = "5.0"
			elseif maj < 607 then
				results(1) = 5 : results(2) = 1 : results(3) = "" : results(4) = "5.1"
			elseif maj < 613 then
				results(1) = 5 : results(2) = 5 : results(3) = "" : results(4) = "5.5"
			elseif maj = 613 then
				results(1) = 5 : results(2) = 6 : results(3) = "" : results(4) = "5.6"
			elseif maj > 613 then
				results(1) = 5 : results(2) = 7 : results(3) = "" : results(4) = "5.7" 'QUAL'E' IL NUMERO VERSIONE?
			end if
		elseif maj < 496 then
			results(5) = 1
			results(0) = false
		else
			results(5) = 0
			results(0) = false
		end if
		
		WBstat_DecodeOmniwebVersion = results
	
	end function
%>
