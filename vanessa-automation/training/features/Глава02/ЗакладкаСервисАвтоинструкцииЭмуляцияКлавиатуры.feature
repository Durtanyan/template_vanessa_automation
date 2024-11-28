﻿# language: ru

@lessons

Функционал: Интерактивная справка. Автоинструкции. Эмуляция клавиатуры.

Сценарий: Автоинструкции. Эмуляция клавиатуры.

	* Привет! В этом уроке я расскажу тебе про то, какие бывают настройки эмуляции клавиатуры. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения
		
	* Данные настройки находится тут.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаАвтоИнструкции' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаЭмуляцияКлавиатуры' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Настройки эмуляции клавиатуры" UI Automation
			| 'Имя'                                 |
			| 'ЭмулироватьВводКлавиатурыVanessaExt' |

	* Этот флаг определяет, что ввод текста в поля будет происходить с помощью эмуляции ввода клавиатуры.
		И я делаю подсветку нескольких элементов VA с их заголовком "Включение эмуляции клавиатуры" UI Automation
			| 'Имя'                                 |
			| 'ЭмулироватьВводКлавиатурыVanessaExt' |
	* Для работы опции необходимо включить использование компоненты VanessaExt.

	* На этом всё, переходи к следующему уроку интерактивной справки.


