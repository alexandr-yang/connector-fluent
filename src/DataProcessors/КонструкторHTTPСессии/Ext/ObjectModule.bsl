﻿
#Область ОписаниеПеременных

// Контекст конструктора
Перем Контекст;

#КонецОбласти

#Область ПрограммныйИнтерфейс

// Добавить параметр HTTP-запроса
//
// Параметры:
//  Ключ - Строка
//  Значение - Строка
//
// Возвращаемое значение:
//  ОбработкаОбъект.КонструкторHTTPСессии
//
Функция ДобавитьПараметрЗапроса(Ключ, Значение = "") Экспорт
	
	Контекст.Сессия.ПараметрыЗапроса.Вставить(Ключ, Значение);
	
	Возврат ЭтотОбъект;
	
КонецФункции

// Добавить параметры HTTP-запроса
//
// Параметры:
//  ПараметрыЗапроса - Структура, Соответствия
//    * Ключ - Строка
//    * Значение - Строка
//
// Возвращаемое значение:
//  ОбработкаОбъект.КонструкторHTTPСессии
//
Функция ДобавитьПараметрыЗапроса(ПараметрыЗапроса) Экспорт
	
	Для Каждого ПараметрЗапроса Из ПараметрыЗапроса Цикл
		ДобавитьПараметрЗапроса(ПараметрЗапроса.Ключ, ПараметрЗапроса.Значение);
	КонецЦикла;
	
	Возврат ЭтотОбъект;
	
КонецФункции

// Использовать аутентификацию ОС для выполнения HTTP-запроса
//
// Возвращаемое значение:
//  ОбработкаОбъект.КонструкторHTTPСессии
//
Функция АутентификацияОС() Экспорт
	
	Аутентификация = КоннекторHTTP.НоваяАутентификацияОС(); // BSLLS:MissingCommonModuleMethod-off
	Контекст.Сессия.Аутентификация = Аутентификация;
	
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
Функция АутентификацияBasic(Пользователь = "", Пароль = "") Экспорт
	
	Аутентификация = КоннекторHTTP.НоваяАутентификацияBasic(Пользователь, Пароль); // BSLLS:MissingCommonModuleMethod-off
	Контекст.Сессия.Аутентификация = Аутентификация;
	
	Возврат ЭтотОбъект;
	
КонецФункции

// Использовать Digest-аутентификацию для выполнения HTTP-запроса
//
// Параметры:
//  Пользователь - Строка
//  Пароль - Строка
//
// Возвращаемое значение:
//  ОбработкаОбъект.КонструкторHTTPСессии
//
Функция АутентификацияDigest(Пользователь = "", Пароль = "") Экспорт
	
	Аутентификация = КоннекторHTTP.НоваяАутентификацияDigest(Пользователь, Пароль); // BSLLS:MissingCommonModuleMethod-off
	Контекст.Сессия.Аутентификация = Аутентификация;
	
	Возврат ЭтотОбъект;
	
КонецФункции

// Использовать AWS4-аутентификацию для выполнения HTTP-запроса
//
// Параметры:
//  ИдентификаторКлючаДоступа - Строка
//  СекретныйКлюч - Строка
//  Сервис - Строка
//  Регион - Строка
//
// Возвращаемое значение:
//  ОбработкаОбъект.КонструкторHTTPСессии
//
Функция АутентификацияAWS4(ИдентификаторКлючаДоступа = "", СекретныйКлюч = "", Сервис = "", Регион = "") Экспорт
	
	Аутентификация = КоннекторHTTP.НоваяАутентификацияAWS4(ИдентификаторКлючаДоступа, СекретныйКлюч,
		Сервис, Регион); // BSLLS:MissingCommonModuleMethod-off
	Контекст.Сессия.Аутентификация = Аутентификация;
	
	Возврат ЭтотОбъект;
	
КонецФункции

// Использовать прокси для выполнения HTTP-запроса
//
// Параметры:
//  ИнтернетПрокси - ИнтернетПрокси
//
// Возвращаемое значение:
//  ОбработкаОбъект.КонструкторHTTPСессии
//
Функция Прокси(ИнтернетПрокси) Экспорт
	
	Контекст.Сессия.Прокси = ИнтернетПрокси;
	
	Возврат ЭтотОбъект;
	
КонецФункции

// Проверять сертификат сервера
//
// Параметры:
//  Значение - Булево, СертификатыУдостоверяющихЦентровФайл
//
// Возвращаемое значение:
//  ОбработкаОбъект.КонструкторHTTPСессии
//
Функция ПроверятьSSL(Значение = Истина) Экспорт
	
	Контекст.Сессия.ПроверятьSSL = Значение;
	
	Возврат ЭтотОбъект;
	
КонецФункции

// Использовать клиентский сертификатор SSL
//
// Параметры:
//  Сертификат - СертификатКлиентаФайл, СертификатКлиентаWindows
//
// Возвращаемое значение:
//  ОбработкаОбъект.КонструкторHTTPСессии
//
Функция КлиентскийСертификатSSL(Сертификат) Экспорт
	
	Контекст.Сессия.КлиентскийСертификатSSL = Сертификат;
	
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
Функция ДобавитьЗаголовок(Ключ, Значение = "") Экспорт
	
	Контекст.Сессия.Заголовки.Вставить(Ключ, Значение);
	
	Возврат ЭтотОбъект;
	
КонецФункции

// Добавить заголовки HTTP-запроса
//
// Параметры:
//  Заголовки - Структура, Соответствие
//    * Ключ - Строка
//    * Значение - Строка
//
// Возвращаемое значение:
//  ОбработкаОбъект.КонструкторHTTPСессии
//
Функция ДобавитьЗаголовки(Заголовки) Экспорт
	
	Для Каждого Заголовок Из Заголовки Цикл
		ДобавитьЗаголовок(Заголовок.Ключ, Заголовок.Значение);
	КонецЦикла;
	
	Возврат ЭтотОбъект;
	
КонецФункции

// Добавить Cookie HTTP-запроса
//
// Параметры:
//  Ключ - Строка
//  Значение - Строка
//
// Возвращаемое значение:
//  ОбработкаОбъект.КонструкторHTTPСессии
//
Функция ДобавитьКуку(Ключ, Значение = "") Экспорт
	
	Контекст.Сессия.Cookies.Вставить(Ключ, Значение);
	
	Возврат ЭтотОбъект;
	
КонецФункции

// Добавить Cookies HTTP-запроса
//
// Параметры:
//  Куки - Структура, Соответствие
//    * Ключ - Строка
//    * Значение - Строка
//
// Возвращаемое значение:
//  ОбработкаОбъект.КонструкторHTTPСессии
//
Функция ДобавитьКуки(Куки) Экспорт
	
	Для Каждого Кука Из Куки Цикл
		ДобавитьКуку(Кука.Ключ, Кука.Значение);
	КонецЦикла;
	
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
	
	Контекст.Сессия.МаксимальноеКоличествоПеренаправлений = Количество;
	
	Возврат ЭтотОбъект;
	
КонецФункции

// Создать новую HTTP-сессию 
//
// Возвращаемое значение:
//  Структура - см. КоннекторHTTP.СоздатьСессию
//
Функция Создать() Экспорт
	
	Возврат Контекст.Сессия;
	
КонецФункции

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

// Конструктор нового контекст
//
// Возвращаемое значение:
//  Структура:
//    * Сессия - Структура -  см. КоннекторHTTP.СоздатьСессию
//
Функция НовыйКонтекст()
	
	НовыйКонтекст = Новый Структура;
	НовыйКонтекст.Вставить("Сессия", КоннекторHTTP.СоздатьСессию()); // BSLLS:MissingCommonModuleMethod-off
	
	Возврат НовыйКонтекст;
	
КонецФункции

#КонецОбласти

#Область Инициализация

Контекст = НовыйКонтекст();

#КонецОбласти
