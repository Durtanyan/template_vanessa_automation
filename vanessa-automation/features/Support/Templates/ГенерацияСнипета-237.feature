# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA42_Тестовые_фичи

#https://github.com/silverbulleters/vanessa-behavior/issues/237

@IgnoreOnCIMainBuild


Функционал: Тестовая фича, проверяющая генерацию снипета по структуре сценария
 


Структура сценария: Привязка файлов сканов актов к документам ЭСТИ
	Допустим к заказу связанному с реализацией товаров и услуг <Номер> от <ДатаДокумента>  присоединен файл <ИмяФайла> только один

		
	Примеры:
		| ТомХраненияПервички 	| МесяцГода   | Реализации | АктИсх  | ИмяФайла 	| Номер | ДатаДокумента | 
		| ПутьКТому 			| 2015.06     | Реализации | Акт исх | ИмяФайла.pdf | 524   | 2015.06.30    |		