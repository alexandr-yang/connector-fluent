# КонструкторHTTP

КонструкторHTTP - обёртка для работы с [КоннекторHTTP](https://github.com/vbondarevsky/Connector) в формате текучих выражений.

Включает в себя [Конструктор HTTP-сессии](/docs/session.md),[Конструктор HTTP-запроса](/docs/request.md) и [Обработчик HTTP-ответа](/docs/response.md).

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
    .МетодPOST().Сервер("jsonplaceholder.typicode.com").АдресРесурса("posts")
    .ТелоЗапроса(ТелоЗапроса, Истина)
    .ДобавитьЗаголовок("Content-Type", "application/json;charset=utf-8")
    .Отправить();

Если НЕ Результат.КодСостоянияУспешно() Тогда
    ОписаниеОшибки = Результат.ТелоОтветаКакИсключение();
    ВызватьИсключение(ОписаниеОшибки);
КонецЕсли;
```
