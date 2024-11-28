﻿# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA30_Прочие_макеты

@IgnoreOnCIMainBuild
@tree

Функционал: Проверка секции контекст


Контекст:
	Если не существует переменная "СчетчикСценариев" Тогда
		И Я запоминаю значение выражения '0' в переменную "СчетчикСценариев" глобально
		
	И я вывожу значение переменной "СчетчикСценариев"
	

Сценарий: Проверка секции контекст один
		И Я запоминаю значение выражения '$$СчетчикСценариев$$+1' в переменную "СчетчикСценариев" глобально
		И Я запоминаю значение выражения '2' в переменную "ИмяПеременной2"
		И я вывожу значение переменной "ИмяПеременной2"
		
Сценарий: Проверка секции контекст два
		И Я запоминаю значение выражения '$$СчетчикСценариев$$+1' в переменную "СчетчикСценариев" глобально
		И Я запоминаю значение выражения '3' в переменную "ИмяПеременной3"
		И я вывожу значение переменной "ИмяПеременной3"