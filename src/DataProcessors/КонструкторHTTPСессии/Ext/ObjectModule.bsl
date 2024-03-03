﻿
#Область ОписаниеПеременных

// Контекст конструктора
Перем _Контекст;

#КонецОбласти

#Область СлужебныйПрограммныйИнтерфейс

// Инициализировать конструктор HTTP-сессии
//
// Возвращаемое значение:
//  ОбработкаОбъект.КонструкторHTTPСессии
//
Функция Инициализировать() Экспорт
	
	_Контекст = НовыйКонтекст();
	
	Возврат ЭтотОбъект;
	
КонецФункции

// Добавить параметры HTTP-запроса
//
// Параметры:
//  Ключ - Строка
//  Значение - Строка
// 
// Возвращаемое значение:
//  ОбработкаОбъект.КонструкторHTTPСессии
//
Функция ДобавитьПараметрЗапроса(Ключ, Значение) Экспорт
	
	_Контекст.Сессия.ПараметрыЗапроса.Вставить(Ключ, Значение);
	
	Возврат ЭтотОбъект;
	
КонецФункции

// Использовать Basic-аутентификацию для выполнения HTTP-запроса
//
// Параметры:
//  Пользователь - Строка
//  Пароль - Строка
//
// Возвращаемое значение:
//  ОбработкаОбъект.КонструкторHTTPСессии
//
Функция АутентификацияBasic(Пользователь, Пароль) Экспорт
	
	Аутентификация = Новый Структура;
	Аутентификация.Вставить("Тип", "Basic");
	Аутентификация.Вставить("Пользователь", Пользователь);
	Аутентификация.Вставить("Пароль", Пароль);
	
	_Контекст.Сессия.Аутентификация = Аутентификация;
	
	Возврат ЭтотОбъект;
	
КонецФункции

// Добавить заголовок HTTP-запроса
//
// Параметры:
//  Ключ - Строка
//  Значение - Строка
//
// Возвращаемое значение:
//  ОбработкаОбъект.КонструкторHTTPСессии
//
Функция ДобавитьЗаголовок(Ключ, Значение) Экспорт
	
	_Контекст.Сессия.Заголовки.Вставить(Ключ, Значение);
	
	Возврат ЭтотОбъект;
	
КонецФункции

// Установить максимальное количество перенаправлений HTTP-запроса
//
// Параметры:
//  Количество - Число
// 
// Возвращаемое значение:
//  ОбработкаОбъект.КонструкторHTTPСессии
//
Функция МаксимальноеКоличествоПеренаправлений(Количество) Экспорт
	
	_Контекст.Сессия.МаксимальноеКоличествоПеренаправлений = Количество;
	
	Возврат ЭтотОбъект;
	
КонецФункции

// Создать новую HTTP-сессию 
//
// Возвращаемое значение:
//  Структура - см. КоннекторHTTP.СоздатьСессию()
//
Функция Создать() Экспорт
	
	Возврат _Контекст.Сессия;
	
КонецФункции

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

// Конструктор нового контекст
//
// Возвращаемое значение:
//  Структура
//    * Сессия - Структура - КоннекторHTTP.СоздатьСессию()
//
Функция НовыйКонтекст()
	
	Контекст = Новый Структура;
	Контекст.Вставить("Сессия", КоннекторHTTP.СоздатьСессию()); // BSLLS:MissingCommonModuleMethod-off
	
	Возврат Контекст;
	
КонецФункции

#КонецОбласти
