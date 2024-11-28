# language: ru
# encoding: utf-8
#parent uf:
@UF1_загрузка_и_обработка_features
#parent ua:
@UA16_парсить_features

@IgnoreOnWeb

Функционал: Подключение сценария как шага (main)
	Как Разработчик
	Я Хочу чтобы я мог в качестве шага указывать уже существующий сценарий из соседней фичи
 

Сценарий: Использование вместо шага сценария из соседней фичи 1

	Когда Я вызвал обычный шаг сценария
	И я вызываю шаг из соседней ФИЧИ
	И я вызываю шаг из соседней фичи
	
    #Это имя сценария из фичи СоседняяФича

	И я вызвал обычный шаг сценария
	И я вызываю шаг из соседней фичи
	Тогда В Контексте есть значение "БылВызванСценарийИзСоседнейФичи"

	

	
Сценарий: Использование вместо шага сценария из соседней фичи 2

	Когда Я вызвал обычный шаг сценария
	И я вызываю шаг из соседней фичи
	
    #Это имя сценария из фичи СоседняяФича

	И я вызвал обычный шаг сценария
	Тогда В Контексте есть значение "БылВызванСценарийИзСоседнейФичи"

	

	
Сценарий: Использование вместо шага сценария из соседней фичи 3

	Когда Я вызвал обычный шаг сценария
	И я вызываю другой шаг из соседней фичи
	
    #Это имя сценария из фичи СоседняяФича

	И я вызвал обычный шаг сценария
	Тогда В Контексте есть значение "БылВызванСценарийИзСоседнейФичи"

	

Сценарий: Использование вместо шага сценария из соседней фичи 4

	Когда Я вызвал обычный шаг сценария
	И я вызываю другой шаг из соседней фичи
	
    #Это имя сценария из фичи СоседняяФича

	И я вызвал обычный шаг сценария
	Тогда В Контексте есть значение "БылВызванСценарийИзСоседнейФичи"

	

	
		