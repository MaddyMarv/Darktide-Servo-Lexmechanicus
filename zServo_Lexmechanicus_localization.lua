-- zServo_Lexmechanicus_localization.lua
local mod = get_mod("zServo_Lexmechanicus")

return {
	mod_name = {
		en = " Servo-Lexmechanicus",
		ru = " Серво-Лексмеханикус",
		["zh-cn"] = " 伺服律法机械",
		["zh-tw"] = " 伺服律法機械",
		de = " Servo-Lexmechanicus",
		fr = " Servo-Lexmechanicus",
		es = " Servo-Lexmechanicus",
		it = " Servo-Lexmechanicus",
		ja = " サーヴォ・レクスメカニクス",
		ko = " 서보 렉스메카니쿠스",
		pl = " Servo-Lexmechanicus",
		["pt-br"] = " Servo-Lexmechanicus",
	},
	mod_description = {
		en = "A Lexmechanicus servo-unit for categorizing and cataloging mods. Blessed by the Omnissiah.",
		ru = "Servo-Lexmechanicus - Сервитор Лексмеханикус: категоризация и каталогизация модов. Во имя Омниссии.",
		["zh-cn"] = "用于分类和编目模组的律法机械伺服单元。受万机之神祝福。",
		["zh-tw"] = "用於分類和編目模組的律法機械伺服單元。受萬機之神祝福。",
		de = "Eine Lexmechanicus-Servo-Einheit zur Kategorisierung und Katalogisierung von Mods. Vom Omnissiah gesegnet.",
		fr = "Une unité servo Lexmechanicus pour catégoriser et cataloguer les mods. Béni par l'Omnissiah.",
		es = "Una unidad servo Lexmechanicus para categorizar y catalogar mods. Bendecido por el Omnissiah.",
		it = "Un'unità servo Lexmechanicus per categorizzare e catalogare mod. Benedetto dall'Omnissiah.",
		ja = "MODを分類・カタログ化するレクスメカニクス・サーヴォユニット。オムニサイアの祝福を受けて。",
		ko = "MOD를 분류하고 목록화하는 렉스메카니쿠스 서보 유닛. 오미니시아의 축복을 받았습니다.",
		pl = "Jednostka servo Lexmechanicus do kategoryzacji i katalogowania modów. Błogosławiona przez Omnissiah.",
		["pt-br"] = "Uma unidade servo Lexmechanicus para categorizar e catalogar mods. Abençoado pelo Omnissiah.",
	},

	enable_servo = {
		en = "Activate servo-unit",
		ru = "Активировать сервитора",
		["zh-cn"] = "激活伺服单元",
		["zh-tw"] = "激活伺服單元",
		de = "Servitor aktivieren",
		fr = "Activer le serviteur",
		es = "Activar servidor",
		it = "Attiva servitore",
		ja = "サーヴィターを起動",
		ko = "서비터 활성화",
		pl = "Aktywuj serwitora",
		["pt-br"] = "Ativar servidor",
	},
	enable_servo_description = {
		en = "The servitor begins applying categorization seals and approved nomenclature to known mods if they are enabled.",
		ru = "Сервитор начинает применять к известным ему модам печати категоризации и одобренную номенклатуру, если эти опции включены.",
		["zh-cn"] = "伺服单元开始对已知模组应用分类封印和批准的命名法（如果已启用）。",
		["zh-tw"] = "伺服單元開始對已知模組應用分類封印和批准的命名法（如果已啟用）。",
		de = "Der Servitor beginnt, Kategorisierungssiegel und genehmigte Nomenklatur auf bekannte Mods anzuwenden, falls diese aktiviert sind.",
		fr = "Le serviteur commence à appliquer les sceaux de catégorisation et la nomenclature approuvée aux mods connus s'ils sont activés.",
		es = "El servidor comienza a aplicar sellos de categorización y nomenclatura aprobada a los mods conocidos si están habilitados.",
		it = "Il servitore inizia ad applicare sigilli di categorizzazione e nomenclatura approvata ai mod conosciuti se sono abilitati.",
		ja = "サーヴィターは、既知のMODに分類の印章と承認済みの命名法を適用し始めます（有効な場合）。",
		ko = "서비터는 활성화된 경우 알려진 MOD에 분류 봉인 및 승인된 명명법을 적용하기 시작합니다.",
		pl = "Serwitor zaczyna stosować pieczęcie kategoryzacji i zatwierdzoną nomenklaturę do znanych modów, jeśli są włączone.",
		["pt-br"] = "O servidor começa a aplicar selos de categorização e nomenclatura aprovada aos mods conhecidos, se estiverem habilitados.",
	},

	show_category_prefix = {
		en = "Apply categorization seals",
		ru = "Применять печати категоризации",
		["zh-cn"] = "应用分类封印",
		["zh-tw"] = "應用分類封印",
		de = "Kategorisierungssiegel anwenden",
		fr = "Appliquer les sceaux de catégorisation",
		es = "Aplicar sellos de categorización",
		it = "Applica sigilli categorizzazione",
		ja = "分類の印章を適用",
		ko = "분류 봉인 적용",
		pl = "Zastosuj pieczęcie kategoryzacji",
		["pt-br"] = "Aplicar selos de categorização",
	},
	show_category_prefix_description = {
		en = "The servitor marks mod categories if they have been added to the database in the zServo_Lexmechanicus_categories file and then matched with the corresponding mod in the zServo_Lexmechanicus_mod_list file.",
		ru = "Сервитор помечает категории для модов, если они были добавлены в базу данных в файл zServo_Lexmechanicus_categories, а затем соотнесены с соответствующим модом в файле zServo_Lexmechanicus_mod_list.",
		["zh-cn"] = "如果模组类别已添加到zServo_Lexmechanicus_categories文件数据库中，并在zServo_Lexmechanicus_mod_list文件中与相应模组匹配，伺服单元将标记这些类别。",
		["zh-tw"] = "如果模組類別已添加到zServo_Lexmechanicus_categories文件資料庫中，並在zServo_Lexmechanicus_mod_list文件中與相應模組匹配，伺服單元將標記這些類別。",
		de = "Der Servitor markiert Mod-Kategorien, wenn sie der Datenbank in der Datei zServo_Lexmechanicus_categories hinzugefügt und dann mit dem entsprechenden Mod in der Datei zServo_Lexmechanicus_mod_list abgeglichen wurden.",
		fr = "Le serviteur marque les catégories de mods si elles ont été ajoutées à la base de données dans le fichier zServo_Lexmechanicus_categories, puis associées au mod correspondant dans le fichier zServo_Lexmechanicus_mod_list.",
		es = "El servidor marca las categorías de mods si se han agregado a la base de datos en el archivo zServo_Lexmechanicus_categories y luego se han asociado con el mod correspondiente en el archivo zServo_Lexmechanicus_mod_list.",
		it = "Il servitore contrassegna le categorie di mod se sono state aggiunte al database nel file zServo_Lexmechanicus_categories e poi associate al mod corrispondente nel file zServo_Lexmechanicus_mod_list.",
		ja = "サーヴィターは、zServo_Lexmechanicus_categoriesファイルのデータベースに追加され、zServo_Lexmechanicus_mod_listファイルで対応するMODと一致した場合、MODカテゴリをマークします。",
		ko = "서비터는 zServo_Lexmechanicus_categories 파일의 데이터베이스에 추가되고 zServo_Lexmechanicus_mod_list 파일에서 해당 MOD와 일치한 경우 MOD 카테고리를 표시합니다.",
		pl = "Serwitor oznacza kategorie modów, jeśli zostały dodane do bazy danych w pliku zServo_Lexmechanicus_categories, a następnie dopasowane do odpowiedniego modu w pliku zServo_Lexmechanicus_mod_list.",
		["pt-br"] = "O servidor marca as categorias de mods se elas tiverem sido adicionadas ao banco de dados no arquivo zServo_Lexmechanicus_categories e então correspondidas ao mod apropriado no arquivo zServo_Lexmechanicus_mod_list.",
	},

	use_custom_names = {
		en = "Use Adeptus-approved nomenclature",
		ru = "Использовать номенклатуру одобренную Адептус",
		["zh-cn"] = "使用机械教批准的命名法",
		["zh-tw"] = "使用機械教批准的命名法",
		de = "Adeptus-genehmigte Nomenklatur verwenden",
		fr = "Utiliser la nomenclature approuvée par l'Adeptus",
		es = "Usar nomenclatura aprobada por el Adeptus",
		it = "Usa nomenclatura approvata Adeptus",
		ja = "アデプトゥス承認の命名法を使用",
		ko = "아데프투스 승인 명명법 사용",
		pl = "Użyj nomenklatury zatwierdzonej przez Adeptus",
		["pt-br"] = "Usar nomenclatura aprovada pelo Adeptus",
	},
	use_custom_names_description = {
		en = "Corrected names are displayed that comply with Adeptus standards for cataloging and entering into databases.",
		ru = "Показываются исправленные названия, соответствующие нормам Адептус для каталогизации и внесения в базы данных.",
		["zh-cn"] = "显示符合机械教编目和数据库录入标准的修正名称。",
		["zh-tw"] = "顯示符合機械教編目和資料庫錄入標準的修正名稱。",
		de = "Korrigierte Namen werden angezeigt, die den Adeptus-Standards für die Katalogisierung und Eingabe in Datenbanken entsprechen.",
		fr = "Des noms corrigés sont affichés, conformes aux normes de l'Adeptus pour le catalogage et l'entrée dans les bases de données.",
		es = "Se muestran nombres corregidos que cumplen con los estándares del Adeptus para catalogar e ingresar a las bases de datos.",
		it = "Vengono visualizzati nomi corretti conformi agli standard Adeptus per la catalogazione e l'inserimento nei database.",
		ja = "カタログ化とデータベースへの登録のためのアデプトゥス標準に準拠した修正された名前が表示されます。",
		ko = "목록화 및 데이터베이스 입력을 위한 아데프투스 표준을 준수하는 수정된 이름이 표시됩니다.",
		pl = "Wyświetlane są poprawione nazwy zgodne ze standardami Adeptus dotyczącymi katalogowania i wprowadzania do baz danych.",
		["pt-br"] = "Nomes corrigidos são exibidos em conformidade com os padrões do Adeptus para catalogação e entrada em bancos de dados.",
	},

	debug_mode = {
		en = "Diagnostic cogitator protocols",
		ru = "Протоколы диагностического когитатора",
		["zh-cn"] = "诊断思考者协议",
		["zh-tw"] = "診斷思考者協議",
		de = "Diagnose-Cogitator-Protokolle",
		fr = "Protocoles de diagnostic du cogiteur",
		es = "Protocolos de diagnóstico del cogitador",
		it = "Protocolli diagnostici cogitatore",
		ja = "診断コギテータープロトコル",
		ko = "진단 사고기 프로토콜",
		pl = "Protokoły diagnostyczne kogitatora",
		["pt-br"] = "Protocolos de diagnóstico do cogitador",
	},
	debug_mode_description = {
		en = "If you don't know what you're doing and don't have authorized access to diagnostic protocols, don't enable this, step away from the console and seek guidance from the nearest tech-priest.",
		ru = "Если вы не знаете, что делаете и не имеете авторизованного доступа к диагностическим протоколам, не включайте это, отойдите от консоли и обратитесь за наставлением к ближайшему техножрецу.",
		["zh-cn"] = "如果您不知道自己在做什么，并且没有诊断协议的授权访问权限，请不要启用此功能，远离控制台，并向最近的技术神甫寻求指导。",
		["zh-tw"] = "如果您不知道自己在做什麼，並且沒有診斷協議的授權訪問權限，請不要啟用此功能，遠離控制台，並向最近的技術神甫尋求指導。",
		de = "Wenn Sie nicht wissen, was Sie tun, und keinen autorisierten Zugriff auf Diagnoseprotokolle haben, aktivieren Sie dies nicht, entfernen Sie sich von der Konsole und suchen Sie Anleitung beim nächsten Tech-Priester.",
		fr = "Si vous ne savez pas ce que vous faites et n'avez pas d'accès autorisé aux protocoles de diagnostic, n'activez pas cela, éloignez-vous de la console et demandez l'aide du prêtre-techno le plus proche.",
		es = "Si no sabes lo que estás haciendo y no tienes acceso autorizado a los protocolos de diagnóstico, no actives esto, aléjate de la consola y busca orientación del sacerdote técnico más cercano.",
		it = "Se non sai cosa stai facendo e non hai accesso autorizzato ai protocolli diagnostici, non attivare questa opzione, allontanati dalla console e cerca la guida del tech-sacerdote più vicino.",
		ja = "何をしているのかわからず、診断プロトコルへの認可されたアクセス権を持っていない場合は、これを有効にせず、コンソールから離れ、最寄りのテックプリーストに指導を求めてください。",
		ko = "자신이 무엇을 하는지 모르고 진단 프로토콜에 대한 승인된 액세스 권한이 없는 경우 이 기능을 활성화하지 말고 콘솔에서 떨어져 나가 가장 가까운 기술 사제의 지도를 구하십시오.",
		pl = "Jeśli nie wiesz, co robisz i nie masz autoryzowanego dostępu do protokołów diagnostycznych, nie włączaj tego, odejdź od konsoli i poproś o wskazówki najbliższego tech-kapłana.",
		["pt-br"] = "Se você não sabe o que está fazendo e não tem acesso autorizado aos protocolos de diagnóstico, não ative isso, afaste-se do console e busque orientação do sacerdote-tecnológico mais próximo.",
	},

	language_override = {
		en = "Lingua-technis override",
		ru = "Переопределение лингва-технис",
		["zh-cn"] = "凌驾语言技术",
		["zh-tw"] = "凌駕語言技術",
		de = "Lingua-technis-Überschreibung",
		fr = "Surcharge lingua-technis",
		es = "Anulación lingua-technis",
		it = "Sovrascrittura lingua-technis",
		ja = "リンガ・テクニス上書き",
		ko = "링구아 테크니스 재정의",
		pl = "Nadpisanie lingua-technis",
		["pt-br"] = "Substituição de lingua-technis",
	},
	language_override_description = {
		en = "If you, for any reason, need to enable a different language for mod categories and names in the settings menu, you can do so here. Any combination of game localization with these settings is supported.\n"
			.."\n"
			.."If you find errors or inconsistencies in the spelling of certain texts, please contact the senior tech-priest to correct the errors and offer prayers to the Omnissiah!",
		ru = "Если вам, по любой причине, необходимо включить другой язык категорий и названий модов в меню настроек, вы можете это сделать здесь. Поддерживаются любые сочетания локализации игры с данными настройками. Например, можно включить русский язык игры и выбрать здесь английские категории и названия модов.\n"
			.."\n"
			.."В случае обнаружения ошибок и несоответствий в написании тех или иных текстов, просьба обратиться с старшему техножрецу для исправления ошибок и вознесения молитв Омниссии!",
		["zh-cn"] = "如果您因任何原因需要在设置菜单中为模组类别和名称启用不同的语言，您可以在此处执行此操作。支持游戏本地化与这些设置的任何组合。\n"
			.."\n"
			.."如果您发现某些文本的拼写存在错误或不一致之处，请联系高级技术神甫以纠正错误并向万机之神祈祷！",
		["zh-tw"] = "如果您因任何原因需要在設定選單中為模組類別和名稱啟用不同的語言，您可以在此處執行此操作。支援遊戲本地化與這些設定的任何組合。\n"
			.."\n"
			.."如果您發現某些文本的拼寫存在錯誤或不一致之處，請聯繫高級技術神甫以糾正錯誤並向萬機之神祈禱！",
		de = "Wenn Sie aus irgendeinem Grund eine andere Sprache für Mod-Kategorien und -Namen im Einstellungsmenü aktivieren müssen, können Sie dies hier tun. Jede Kombination von Spiel-Lokalisierung mit diesen Einstellungen wird unterstützt.\n"
			.."\n"
			.."Wenn Sie Fehler oder Unstimmigkeiten in der Schreibweise bestimmter Texte finden, wenden Sie sich bitte an den Senior-Techpriester, um die Fehler zu korrigieren und Gebete an den Omnissiah zu richten!",
		fr = "Si pour une raison quelconque vous avez besoin d'activer une langue différente pour les catégories et noms de mods dans le menu des paramètres, vous pouvez le faire ici. Toute combinaison de localisation du jeu avec ces paramètres est prise en charge.\n"
			.."\n"
			.."Si vous trouvez des erreurs ou des incohérences dans l'orthographe de certains textes, veuillez contacter le prêtre-techno senior pour corriger les erreurs et offrir des prières à l'Omnissiah!",
		es = "Si por alguna razón necesitas habilitar un idioma diferente para las categorías y nombres de mods en el menú de configuración, puedes hacerlo aquí. Se admite cualquier combinación de localización del juego con esta configuración.\n"
			.."\n"
			.."Si encuentras errores o inconsistencias en la ortografía de ciertos textos, por favor contacta al sacerdote técnico senior para corregir los errores y ofrecer oraciones al Omnissiah!",
		it = "Se per qualsiasi motivo hai bisogno di abilitare una lingua diversa per le categorie e i nomi dei mod nel menu delle impostazioni, puoi farlo qui. È supportata qualsiasi combinazione di localizzazione del gioco con queste impostazioni.\n"
			.."\n"
			.."Se trovi errori o incongruenze nell'ortografia di alcuni testi, contatta il tech-sacerdote senior per correggere gli errori e offrire preghiere all'Omnissiah!",
		ja = "何らかの理由で設定メニューでMODカテゴリと名前に異なる言語を有効にする必要がある場合は、ここで行うことができます。これらの設定とのゲームローカライゼーションの任意の組み合わせがサポートされています。\n"
			.."\n"
			.."特定のテキストの綴りに誤りや不整合が見つかった場合は、上級テックプリーストに連絡して誤りを修正し、オムニサイアに祈りを捧げてください！",
		ko = "어떤 이유로든 설정 메뉴에서 MOD 카테고리 및 이름에 대해 다른 언어를 활성화해야 하는 경우 여기에서 수행할 수 있습니다. 게임 현지화와 이러한 설정의 모든 조합이 지원됩니다.\n"
			.."\n"
			.."특정 텍스트의 철자에 오류나 불일치가 발견되면 수석 기술 사제에게 연락하여 오류를 수정하고 오미니시아에게 기도를 올리십시오!",
		pl = "Jeśli z jakiegokolwiek powodu potrzebujesz włączyć inny język dla kategorii modów i nazw w menu ustawień, możesz to zrobić tutaj. Wspierana jest dowolna kombinacja lokalizacji gry z tymi ustawieniami.\n"
			.."\n"
			.."Jeśli znajdziesz błędy lub niespójności w pisowni niektórych tekstów, skontaktuj się z starszym tech-kapłanem, aby poprawić błędy i złożyć modlitwy do Omnissiah!",
		["pt-br"] = "Se por qualquer motivo você precisar habilitar um idioma diferente para categorias e nomes de mods no menu de configurações, você pode fazer isso aqui. Qualquer combinação de localização do jogo com essas configurações é suportada.\n"
			.."\n"
			.."Se encontrar erros ou inconsistências na ortografia de determinados textos, entre em contato com o sacerdote-tecnológico sênior para corrigir os erros e oferecer orações ao Omnissiah!",
	},

	option_auto = {
		en = "Auto-detect",
		ru = "Автоопределение",
		["zh-cn"] = "自动检测",
		["zh-tw"] = "自動檢測",
		de = "Auto-erkennung",
		fr = "Détection automatique",
		es = "Detección automática",
		it = "Rilevamento automatico",
		ja = "自動検出",
		ko = "자동 감지",
		pl = "Wykrywanie automatyczne",
		["pt-br"] = "Detecção automática",
	},

	notification_refreshed = {
		en = "Mods cataloged. The Omnissiah is pleased.",
		ru = "Моды каталогизированы. Омниссия удовлетворена.",
		["zh-cn"] = "模组已编目。万机之神喜悦。",
		["zh-tw"] = "模組已編目。萬機之神喜悅。",
		de = "Mods katalogisiert. Der Omnissiah ist erfreut.",
		fr = "Mods catalogués. L'Omnissiah est satisfait.",
		es = "Mods catalogados. El Omnissiah está complacido.",
		it = "Mod catalogati. L'Omnissiah è compiaciuto.",
		ja = "MODをカタログ化しました。オムニサイアは満足しています。",
		ko = "MOD가 목록화되었습니다. 오미니시아가 기뻐합니다.",
		pl = "Mody skatalogowane. Omnissiah jest zadowolony.",
		["pt-br"] = "Mods catalogados. O Omnissiah está satisfeito.",
	},

	command_refresh = {
		en = "Initiate recataloging ritual",
		ru = "Инициировать ритуал перекаталогизации",
		["zh-cn"] = "启动重新编目仪式",
		["zh-tw"] = "啟動重新編目儀式",
		de = "Rekatalogisierungsritual einleiten",
		fr = "Initier le rituel de recatalogage",
		es = "Iniciar ritual de recatalogación",
		it = "Inizia rituale di ricatalogazione",
		ja = "再カタログ化の儀式を開始",
		ko = "재목록화 의식 시작",
		pl = "Rozpocznij rytuał rekatalogacji",
		["pt-br"] = "Iniciar ritual de recatalogação",
	},

	command_xstest = {
		en = "Test mod identification",
		ru = "Тест идентификации мода",
		["zh-cn"] = "测试模组识别",
		["zh-tw"] = "測試模組識別",
		de = "Mod-Identifikation testen",
		fr = "Tester l'identification de mod",
		es = "Probar identificación de mod",
		it = "Testa identificazione mod",
		ja = "MOD識別テスト",
		ko = "MOD 식별 테스트",
		pl = "Przetestuj identyfikację moda",
		["pt-br"] = "Testar identificação de mod",
	},

	command_xsdebug = {
		en = "Cogitator diagnostic scan",
		ru = "Диагностическое сканирование когитатора",
		["zh-cn"] = "思考者诊断扫描",
		["zh-tw"] = "思考者診斷掃描",
		de = "Cogitator-Diagnosescan",
		fr = "Scan de diagnostic du cogiteur",
		es = "Escaneo de diagnóstico del cogitador",
		it = "Scansione diagnostica cogitatore",
		ja = "コギテーター診断スキャン",
		ko = "사고기 진단 스캔",
		pl = "Skan diagnostyczny kogitatora",
		["pt-br"] = "Varredura de diagnóstico do cogitador",
	},

	command_xsreload = {
		en = "Reload archeotech schematics",
		ru = "Перезагрузить археотех-схемы",
		["zh-cn"] = "重新加载古科技图",
		["zh-tw"] = "重新載入古科技圖",
		de = "Archaotech-Schemata neu laden",
		fr = "Recharger les schémas archéotech",
		es = "Recargar esquemas arqueotecnológicos",
		it = "Ricarica schemi archetetecnici",
		ja = "アルケオテック設計図を再読み込み",
		ko = "아르케오테크 설계도 재로드",
		pl = "Przeładuj schematy archeotechniczne",
		["pt-br"] = "Recarregar esquemas arqueotecnológicos",
	},
	
	-- Добавляю для команды xsclear
	command_xsclear = {
		en = "Clear name caches",
		ru = "Очистить кэш имён",
		["zh-cn"] = "清除名称缓存",
		["zh-tw"] = "清除名稱緩存",
		de = "Namens-Caches löschen",
		fr = "Effacer les caches de noms",
		es = "Borrar cachés de nombres",
		it = "Cancella cache nomi",
		ja = "名前キャッシュをクリア",
		ko = "이름 캐시 지우기",
		pl = "Wyczyść pamięci podręczne nazw",
		["pt-br"] = "Limpar caches de nomes",
	},
	
	-- Добавляю для уведомления очистки кэша
	notification_cache_cleared = {
		en = "Name caches cleared. Machine spirit appeased.",
		ru = "Кэш имён очищен. Дух Машины умиротворён.",
		["zh-cn"] = "名称缓存已清除。机魂安抚。",
		["zh-tw"] = "名稱緩存已清除。機魂安撫。",
		de = "Namens-Caches gelöscht. Maschinengeist besänftigt.",
		fr = "Caches de noms effacés. Esprit machine apaisé.",
		es = "Cachés de nombres borrados. Espíritu de máquina apaciguado.",
		it = "Cache nomi cancellati. Spirito della macchina placato.",
		ja = "名前キャッシュをクリアしました。機械の魂が鎮まりました。",
		ko = "이름 캐시가 지워졌습니다. 기계 영혼이 달래졌습니다.",
		pl = "Pamięci podręczne nazw wyczyszczone. Duch maszyny ukojony.",
		["pt-br"] = "Caches de nomes limpos. Espírito da máquina apaziguado.",
	}
}