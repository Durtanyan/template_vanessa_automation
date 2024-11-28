﻿# language: ru


@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
@IgnoreOnWeb

@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314
@IgnoreOn8315
@IgnoreOn8316

@ServerCodeCoverage

Функциональность: Кнопка получить состояние текущего элемента формы

    Как разработчик
    Я хочу чтобы в редакторе была возможность получить шаги, которые соответствуют состоянию текущей формы клиента тестирования
    Чтобы я мог быстро получить шаги, проверяющие текущую форму

Сценарий: Кнопка получить состояние текущего элемента формы
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой 'VAEditor'

	* Загрузка служебной фичи	
		И я перехожу в редактор Vanessa Automation из дерева
		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor14"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	* Выполним служебную фичу, чтобы открылся клиент тестирования
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	* Установка нужной строки текущей
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setPosition(18, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		И я перехожу к закладке с именем "ГруппаЗапускТестов"

	* Получение состояние всей формы клиента тестирования
		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюПолучитьСостояниеТекущегоЭлементаФормы'

	* Проверка результата
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'Сообщить(СокрЛП(VanessaTabs.current.editor.getLineContent(18)))'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		Тогда в логе сообщений TestClient есть строки:
			|'Тогда таблица \'Список\' стала равной:'|

	* Закрытие клиента тестирования
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"
		
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

Сценарий: Активизация основного клиента

	И я закрываю TestClient "TM"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'