# Конструктор HTTP-запроса

### Метод

Установить метод HTTP-запроса

**Параметры:**
- Метод - ```Строка```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### МетодGET

Установить метод HTTP-запроса GET

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### МетодOPTIONS

Установить метод HTTP-запроса OPTIONS

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### МетодHEAD

Установить метод HTTP-запроса HEAD

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### МетодPOST

Установить метод HTTP-запроса POST

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### МетодPUT

Установить метод HTTP-запроса PUT

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### МетодPATCH

Установить метод HTTP-запроса PATCH

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### МетодDELETE

Установить метод HTTP-запроса DELETE

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### Сервер

Установить адрес сервера

**Параметры:**
- АдресСервера - ```Строка```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### Порт

Установить порт

**Параметры:**
- Порт - ```Число```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### АдресРесурса

**Параметры:**
- АдресРесурса - ```Строка```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### ТелоЗапроса

Установить тело HTTP-запроса

**Параметры:**
- ТелоЗапроса - ```Структура```, ```Массив```, ```Соответствие```, ```ДвоичныеДанные```, ```Строка```
- ЗаписатьJSON - ```Булево```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### ДобавитьФайл

Добавить файл для отправки

**Параметры:**
- Имя - ```Строка``` - Имя поля формы
- ИмяФайла - ```Строка```
- Данные - ```ДвоичныеДанные``` - Двоичные данные файла
- Тип - ```Строка``` - MIME-тип файла

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### ДобавитьФайл

Добавить файлы для отправки

**Параметры:**
- Файлы - ```Массив``` из ```Структура```:
    * Имя - ```Строка``` - Имя поля формы
    * ИмяФайла - ```Строка```
    * Данные - ```ДвоичныеДанные``` - Двоичные данные файла
    * Тип - ```Строка``` - MIME-тип файла

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### ДобавитьЗаголовок

Добавить заголовок HTTP-запроса

**Параметры:**
- Ключ - ```Строка```
- Значение - ```Строка```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### ДобавитьЗаголовки

Добавить заголовки HTTP-запроса

**Параметры:**
- Заголовки - ```Структура```, ```Соответствие```
    * Ключ - ```Строка```
    * Значение - ```Строка```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### ДобавитьКуку

Добавить Cookie HTTP-запроса

**Параметры:**
- Ключ - ```Строка```
- Значение - ```Строка```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### ДобавитьКуки

Добавить заголовки HTTP-запроса

**Параметры:**
- Куки - ```Структура```, ```Соответствие```
    * Ключ - ```Строка```
    * Значение - ```Строка```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### ДобавитьПараметрЗапроса

Добавить параметр HTTP-запроса

**Параметры:**
- Ключ - ```Строка```
- Значение - ```Строка```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### ДобавитьПараметрыЗапроса

Добавить параметры HTTP-запроса

**Параметры:**
- ПараметрыЗапроса - ```Структура```, ```Соответствие```
    * Ключ - ```Строка```
    * Значение - ```Строка```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### Таймаут

Установить таймаут выполнения HTTP-запроса

**Параметры:**
- Таймаут - ```Число```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### ДобавитьКодСостоянияДляПовтора

Добавить код состояния для повтора HTTP-запроса

**Параметры:**
- КодСостояния - ```Число```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### ДобавитьКодыСостоянияДляПовтора

Добавить коды состояния для повтора HTTP-запроса

**Параметры:**
- КодСостояния - ```Массив``` из ```Число```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### ЗащищенноеСоединение

Использовать защищенное соединение HTTPS

**Параметры:**
- Значение - ```Булево```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### ПроверятьSSL

Проверять сертификат сервера

**Параметры:**
- Значение - ```Булево```, ```СертификатыУдостоверяющихЦентровФайл```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### КлиентскийСертификатSSL

Использовать клиентский сертификатор SSL

**Параметры:**
- Сертификат - ```СертификатКлиентаФайл```, ```СертификатКлиентаWindows```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### Прокси

Использовать прокси для выполнения HTTP-запроса

**Параметры:**
- ИнтернетПрокси - ```ИнтернетПрокси```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### РазрешитьПеренаправление

Разрешить перенаправление HTTP-запроса

**Параметры:**
- Значение - ```Булево```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### МаксимальноеВремяПовторов

Установить максимальное время повторов между HTTP-запросами

**Параметры:**
- Время - ```Число```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### МаксимальноеКоличествоПовторов

Установить максимальное количество повторов HTTP-запросов

**Параметры:**
- Количество - ```Число```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### КоэффициентЭкспоненциальнойЗадержки

Установить коэффициент экспоненциальной задержки при повторе HTTP-запроса

**Параметры:**
- Количество - ```Число```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### АутентификацияОС

Использовать аутентификацию ОС для выполнения HTTP-запроса

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### АутентификацияBasic

Использовать Basic-аутентификацию для выполнения HTTP-запроса

**Параметры:**
- Пользователь - ```Строка```
- Пароль - ```Строка```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### АутентификацияDigest

Использовать Digest-аутентификацию для выполнения HTTP-запроса

**Параметры:**
- Пользователь - ```Строка```
- Пароль - ```Строка```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### АутентификацияAWS4

Использовать AWS4-аутентификацию для выполнения HTTP-запроса

**Параметры:**
- ИдентификаторКлючаДоступа - ```Строка```
- СекретныйКлюч - ```Строка```
- Сервис - ```Строка```
- Регион - ```Строка```

**Возвращаемое значение:**
- ```ОбработкаОбъект.КонструкторHTTPЗапроса```

---

### Отправить

Отправить HTTP-запрос

**Возвращаемое значение:**
- ```ОбработкаОбъект.ОбработчикHTTPОтвета```