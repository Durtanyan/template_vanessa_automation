# language: ru
# encoding: utf-8
#parent uf:
@UF6_текстовые_и_видео_инструкции
#parent ua:
@UA31_описание_настроек_и_инструкции

@IgnoreOnCIMainBuild
@DocumentationBuild
@tree

Функционал: Инструкция по проверке: появилось ли ошибка в TestClient
	Как Разработчик
	Я Хочу чтобы я мог получить текст ошибки которая возникла в TestClient
	Чтобы я мог использовать текст ошибки в шагах сценария
 
Контекст:
	Дано я добавляю в служебные файлы автоинструкции "Support\Instructions\Temp\ФичаВызывающаяОшибку.feature"
	Дано я добавляю в служебные файлы автоинструкции "Support\Instructions\Temp\step_definitions\ФичаВызывающаяОшибку.epf"
	Дано я убедился, что служебные файлы фичи удалены
	
Сценарий: Получение текста ошибки, возникшей в TestClient
		
	
	Для начала мы напишем простой feature файл, который будет вызывать ошибку
	
			Когда Я открываю Visual Studio Code
			И я пишу "Функционал: Фича которая вызывает ошибку "
			И я пишу "Как Разработчик "
			И я пишу "Я хочу чтобы у меня была фича вызывающая ошибку "
			И я пишу "Чтобы я мог выполнить тестовый пример "
			И я добавляю пустую строку
			И я пишу "Контекст: "
			И я пишу "	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий "
			И я пишу 'И я прижимаю активное окно вправо '
			И я перехожу к началу строчки
			И я добавляю пустую строку
			И я пишу 'Сценарий: Сценарий с ошибкой '
			И я пишу '	Когда я выполняю в TestClient произвольное выражение "а=1/0" '
			И я пишу 'Тогда в TestClient возникнет ошибка деления на ноль '
			И я сохраняю файл открытый в редакторе как "Support\Instructions\Temp\ФичаВызывающаяОшибку.feature"
			И я закрываю текстовый редактор
	
			
	Теперь создадим epf по этой фиче		
	
			Когда Я запускаю сеанс TestManager в служебной базе
			И Пауза 5
			И я разворачиваю активное окно на полный экран
			И Я запускаю Vanessa-Behavior интерактивно
			И Я загружаю один feature файл "Support\Instructions\Temp\ФичаВызывающаяОшибку.feature"
			И Я создаю EPF файл в сеансе служебной базы
			И В каталоге появилась обработка "Support\Instructions\Temp\step_definitions\ФичаВызывающаяОшибку.epf"
			

	И Затем надо открыть полученную обработку в конфигураторе
	
			Тогда я запускаю конфигуратор служебной базы 
			И Я открываю в конфигураторе созданный файл "Support\Instructions\Temp\step_definitions\ФичаВызывающаяОшибку.epf"


			
	Далее надо написать код в полученных процедурах. Также мы будем использовать метод "Шаг".
	
			И я перехожу внутрь процедуры "ЯВыполняюВTestClientПроизвольноеВыражение"
			И я добавляю строку 'Ванесса.Шаг("Когда В панели разделов я выбираю ""Основная""");'
			И я добавляю строку 'Ванесса.Шаг("И В панели функций я выбираю ""Выполнить произвольное выражение""");'
			И я добавляю строку 'Ванесса.Шаг("И в поле ""Текст выражения"" я ввожу текст """ + Парам01 + """");'
			И я добавляю строку 'Ванесса.Шаг("И я нажимаю на кнопку ""Выполнить выражение""");'
			
			И я перехожу внутрь процедуры "ВTestClientВозникнетОшибка"
			И я добавляю строку 'СтрокаОшибки = КонтекстСохраняемый.ТестовоеПриложение.ПолучитьТекущуюИнформациюОбОшибке();'
			И видеовставка 'Значение КонтекстСохраняемый.ТестовоеПриложение служит для работы с TestClient'
			
			И я добавляю строку 'Если СтрокаОшибки.Описание <> "Деление на 0" Тогда'
			И я добавляю строку 'ВызватьИсключение "Ожидали получить сообщение об ошибке деления на ноль!";'
			И я добавляю строку 'КонецЕсли;'
			И я добавляю строку 'Ванесса.Sleep(10);'
			И я добавляю строку 'Ванесса.Шаг("И Я закрыл все окна клиентского приложения");'
			И видеовставка 'Этот вызов нужен чтобы закрыть модальное окно с ошибкой в TestClient'
			И я сохраняю изменения в файле
			И я закрываю конфигуратор служебной базы
			
			

	И теперь мы выполним нашу фичу
	
			И я прижимаю активное окно влево
			И Я нажимаю на кнопку Перезагрузить сценарии
			И Я нажимаю на кнопку Выполнить Сценарии
			И я ожидаю окончания выполнения сценариев в сеансе служебной базы
			И видеовставка 'Спасибо за внимание!'
		
			
	
			