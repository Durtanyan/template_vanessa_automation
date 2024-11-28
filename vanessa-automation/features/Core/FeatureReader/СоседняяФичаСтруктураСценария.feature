# language: ru
# encoding: utf-8
#parent uf:
@UF1_загрузка_и_обработка_features
#parent ua:
@UA16_парсить_features

@IgnoreOnWeb

@ExportScenarios


Функционал: Подключение сценария как шага 3
	Как Разработчик
	Я Хочу чтобы я мог в качестве шага указывать уже существующий сценарий из соседней фичи
 

Структура сценария: Я вызываю шаг из соседней ФИЧИ содержащей структуру сценария

	Когда я вызвал обычный шаг сценария
	И в структуре сценария есть шаг с параметром <Параметр> и значением <Значение>
	
Примеры:
  | Параметр | Значение |
  | Парам1   | 1        |
  | Парам2   | 2        |
  | Парам3   | 3        |