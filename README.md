# Конструктор HTTP

Конструктор HTTP - обёртка для работы с [КоннекторHTTP](https://github.com/vbondarevsky/Connector) в формате текучих выражений.

## Примеры
GET https://jsonplaceholder.typicode.com/posts?userId=1

```bsl
Результат = КонструкторHTTP.Запрос()
    .Метод("GET").Сервер("jsonplaceholder.typicode.com").АдресРесурса("posts")
        .ДобавитьПараметрЗапроса("userId", 1)
    .Отправить();

Если Результат.КодСостоянияУспешно() Тогда
    Данные = Результат.ТелоОтветаКакJson();
КонецЕсли;
```

POST https://jsonplaceholder.typicode.com/posts

```bsl
ТелоЗапроса = Новый Структура("title,body,userId", "foo", "bar", 1);

Результат = КонструкторHTTP.Запрос()
    .Метод("POST").Сервер("jsonplaceholder.typicode.com").АдресРесурса("posts")
    .ТелоЗапроса(ТелоЗапроса, Истина)
    .ДобавитьЗаголовок("content-type", "application/json;charset=utf-8")
    .Отправить();

Если НЕ Результат.КодСостоянияУспешно() Тогда
    ОписаниеОшибки = Результат.ТелоОтветаКакТекст();
КонецЕсли;
```
