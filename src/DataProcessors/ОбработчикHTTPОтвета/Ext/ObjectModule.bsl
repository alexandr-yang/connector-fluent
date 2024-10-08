﻿
#Область ОписаниеПеременных

// Контекст обработчика
Перем Контекст;

#КонецОбласти

#Область ПрограммныйИнтерфейс

// Получить время выполнения HTTP-запроса
//
// Возвращаемое значение:
//  Число
//
Функция ВремяВыполнения() Экспорт
	
	Возврат Контекст.Ответ.ВремяВыполнения;
	
КонецФункции

// Есть заголовок HTTP-ответа по ключу или ключу и значению
//
// Параметры:
//  Ключ - Строка
//  Значение - Строка
//
// Возвращаемое значение:
//  Булево
//
Функция ЕстьЗаголовок(Ключ, Значение = Неопределено) Экспорт
	
	Заголовки = Заголовки();
	Возврат КонструкторHTTPСлужебный.ЕстьЭлементКоллекции(Заголовки, Ключ, Значение);
	
КонецФункции

// Есть куку HTTP-ответа по ключу или ключу и значению
//
// Параметры:
//  Ключ - Строка
//  Значение - Строка
//
// Возвращаемое значение:
//  Булево
//
Функция ЕстьКука(Ключ, Значение = Неопределено) Экспорт
	
	Куки = Куки();
	Возврат КонструкторHTTPСлужебный.ЕстьЭлементКоллекции(Куки, Ключ, Значение);
	
КонецФункции

// Есть ошибки выполнения HTTP-запроса
//
// Возвращаемое значение:
//  Булево
//
Функция ЕстьОшибки() Экспорт
	
	Ошибки = Ошибки();
	Возврат Ошибки.Количество() > 0;
	
КонецФункции

// Получить значение заголовка HTTP-ответа по ключу
//
// Параметры:
//  Ключ - Строка
//
// Возвращаемое значение:
//  - Строка
//  - Неопределено - Если заголовок по ключу не найден
//
Функция Заголовок(Ключ) Экспорт
	
	Заголовки = Заголовки();
	Возврат КонструкторHTTPСлужебный.ЗначениеЭлементаКоллекци(Заголовки, Ключ);
	
КонецФункции

// Получить заголовки HTTP-ответа
//
// Возвращаемое значение:
//  Соответствие
//    * Ключ - Строка
//    * Значение - Строка
//
Функция Заголовки() Экспорт
	
	Возврат Контекст.Ответ.Заголовки;
	
КонецФункции

// Получить кодировка тела HTTP-ответа
//
// Возвращаемое значение:
//  Строка
//
Функция Кодировка() Экспорт
	
	Возврат Контекст.Ответ.Кодировка;
	
КонецФункции

// Получить код состояния
//
// Возвращаемое значение:
//  Число
//
Функция КодСостояния() Экспорт
	
	Возврат Контекст.Ответ.КодСостояния;
	
КонецФункции

// Код состояния "Информация" (100...199)
//
// Возвращаемое значение:
//  Булево
//
Функция КодСостоянияИнформация() Экспорт
	
	Возврат КодСостоянияМежду(100, 199);
	
КонецФункции

// Код состояния находится в интервале, включая начальное и конечное значение
//
// Параметры:
//  НачальноеЗначение - Число
//  КонечноеЗначение - Число
//
// Возвращаемое значение:
//  Булево
//
Функция КодСостоянияМежду(НачальноеЗначение, КонечноеЗначение) Экспорт
	
	КодСостояния = КодСостояния();
	Возврат КодСостояния >= НачальноеЗначение
		И КодСостояния <= КонечноеЗначение;
	
КонецФункции

// Код состояния не равен значению
//
// Параметры:
//  Значение - Число
//
// Возвращаемое значение:
//  Булево
//
Функция КодСостоянияНеРавен(Значение) Экспорт
	
	Возврат НЕ КодСостоянияРавен(Значение);
	
КонецФункции

// Код состояния "Ошибка клиента" (400...499)
//
// Возвращаемое значение:
//  Булево
//
Функция КодСостоянияОшибкаКлиента() Экспорт
	
	Возврат КодСостоянияМежду(400, 499);
	
КонецФункции

// Код состояния "Ошибка сервера" (500...599)
//
// Возвращаемое значение:
//  Булево
//
Функция КодСостоянияОшибкаСервера() Экспорт
	
	Возврат КодСостоянияМежду(500, 599);
	
КонецФункции

// Код состояния "Переадресация" (300...399)
//
// Возвращаемое значение:
//  Булево
//
Функция КодСостоянияПереадресация() Экспорт
	
	Возврат КодСостоянияМежду(300, 399);
	
КонецФункции

// Код состояния равен значению
//
// Параметры:
//  Значение - Число
//
// Возвращаемое значение:
//  Булево
//
Функция КодСостоянияРавен(Значение) Экспорт
	
	КодСостояния = КодСостояния();
	Возврат КодСостояния = Значение;
	
КонецФункции

// Код состояния "Успешно" (200...299)
//
// Возвращаемое значение:
//  Булево
//
Функция КодСостоянияУспешно() Экспорт
	
	Возврат КодСостоянияМежду(200, 299);
	
КонецФункции

// Получить значение куки HTTP-ответа по ключу
//
// Параметры:
//  Ключ - Строка
//
// Возвращаемое значение:
//  - Строка
//  - Неопределено - Если кука по ключу не найден
//
Функция Кука(Ключ) Экспорт
	
	Куки = Куки();
	Возврат КонструкторHTTPСлужебный.ЗначениеЭлементаКоллекци(Куки, Ключ);
	
КонецФункции

// Получить куки HTTP-ответа
//
// Возвращаемое значение:
//  Соответствие
//    * Ключ - Строка
//    * Значение - Строка
//
Функция Куки() Экспорт
	
	Возврат Контекст.Ответ.Cookies;
	
КонецФункции

// Получить метод выполненого HTTP-запроса
//
// Возвращаемое значение:
//  Строка
//
Функция Метод() Экспорт
	
	Возврат Контекст.Ответ.Метод;
	
КонецФункции

// Получить ошибки выполнения HTTP-запроса
//
// Возвращаемое значение:
//  Массив из Строка
//
Функция Ошибки() Экспорт
	
	Возврат Контекст.Ответ.Ошибки;
	
КонецФункции

// Представление кода состояния
//
// Возвращаемое значение:
//  Строка
//
Функция ПредставлениеКодаСостояния() Экспорт
	
	КодСостояния = КодСостояния();
	Возврат КоннекторHTTP.ПредставлениеКодаСостоянияHTTP(КодСостояния); // BSLLS:MissingCommonModuleMethod-off
	
КонецФункции

// Получить и обработать тело HTTP-ответа как JSON
//
// Параметры:
//  ПараметрыПреобразованияJSON - Структура
//
// Возвращаемое значение:
//  Структура, Соответствие, Массив
//
Функция ТелоОтветаКакJson(ПараметрыПреобразованияJSON = Неопределено) Экспорт
	
	Возврат КоннекторHTTP.КакJson(Контекст.Ответ, ПараметрыПреобразованияJSON); // BSLLS:MissingCommonModuleMethod-offS
	
КонецФункции

// Получить и обработать тело HTTP-ответа как XDTO
//
// Параметры:
//  ПараметрыЧтенияXML - ПараметрыЧтенияXML
//  НаборСхемXML - НаборСхемXML
//  Кодировка - Строка, КодировкаТекста
//
// Возвращаемое значение:
//  ОбъектXDTO, СписокXDTO
//
Функция ТелоОтветаКакXDTO(ПараметрыЧтенияXML = Неопределено, НаборСхемXML = Неопределено, Кодировка = Неопределено) Экспорт
	
	Возврат КоннекторHTTP.КакXDTO(
		Контекст.Ответ, ПараметрыЧтенияXML, НаборСхемXML, Кодировка); // BSLLS:MissingCommonModuleMethod-off
	
КонецФункции

// Получить тело HTTP-ответа как двоичные данные
//
// Возвращаемое значение:
//  ДвоичныеДанные
//
Функция ТелоОтветаКакДвоичныеДанные() Экспорт
	
	Возврат КоннекторHTTP.КакДвоичныеДанные(Контекст.Ответ); // BSLLS:MissingCommonModuleMethod-off
	
КонецФункции

// Получить тело HTTP-ответа как строку, предназначенного для использования в ВызватьИсключение
//
// Параметры:
//  ТекстДляПользователя - Строка
//
// Возвращаемое значение:
//  Строка
//
Функция ТелоОтветаКакИсключение(ТекстДляПользователя = Неопределено) Экспорт
	
	Возврат КоннекторHTTP.КакИсключение(Контекст.Ответ, ТекстДляПользователя); // BSLLS:MissingCommonModuleMethod-off
	
КонецФункции

// Получить тело HTTP-ответа как строку
//
// Параметры:
//  Кодировка - Строка, КодировкаТекста
//
// Возвращаемое значение:
//  Строка
//
Функция ТелоОтветаКакСтрока(Кодировка = Неопределено) Экспорт
	
	Возврат КоннекторHTTP.КакТекст(Контекст.Ответ, Кодировка); // BSLLS:MissingCommonModuleMethod-off
	
КонецФункции

// Получить URL выполненого HTTP-запроса
//
// Возвращаемое значение:
//  Строка
//
Функция УРЛ() Экспорт
	
	Возврат Контекст.Ответ.URL;
	
КонецФункции

// Это постоянный редирект HTTP-запроса
//
// Возвращаемое значение:
//  Булево
//
Функция ЭтоПостоянныйРедирект() Экспорт
	
	Возврат Контекст.Ответ.ЭтоПостоянныйРедирект;
	
КонецФункции

// Это редирект HTTP-запроса
//
// Возвращаемое значение:
//  Булево
//
Функция ЭтоРедирект() Экспорт
	
	Возврат Контекст.Ответ.ЭтоРедирект;
	
КонецФункции

#КонецОбласти

#Область СлужебныйПрограммныйИнтерфейс

// Инициализировать обработчик HTTP-ответа
//
// Параметры:
//  Ответ - Структура - см. КоннекторHTTP.НовыйОтвет
//
// Возвращаемое значение:
//  ОбработкаОбъект.ОбработчикHTTPОтвета
//
Функция Инициализировать(Ответ) Экспорт
	
	ЗаполнитьЗначенияСвойств(Контекст.Ответ, Ответ);
	Возврат ЭтотОбъект;
	
КонецФункции

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

// Конструктор нового контекст
//
// Возвращаемое значение:
//  Структура:
//    * Ответ - Структура - см. КоннекторHTTP.НовыйОтвет
//
Функция НовыйКонтекст()
	
	НовыйКонтекст = Новый Структура;
	НовыйКонтекст.Вставить("Ответ", КоннекторHTTP.НовыйОтвет()); // BSLLS:MissingCommonModuleMethod-off
	Возврат НовыйКонтекст;
	
КонецФункции

#КонецОбласти

#Область Инициализация

Контекст = НовыйКонтекст();

#КонецОбласти
