# Login

Вход в систему

### Описание

В этом задании мы напишем код для входа в систему. Наш код должен проверять, ввел ли пользователь данные администратора системы, и возвращать Bool, указывающий на успешность входа. Код должен также учитывать количество попыток входа, которых должно быть не более трех.

Данные администратора: имя = admin, пароль = 123.

Несколько примеров: 
```
имя = admin 
пароль = 123 
попытка номер = 3 
Ответ: все совпадает – true
```

```
имя = admin
пароль = 123
попытка номер = 4
Ответ: количество попыток превышено – false
```

```
имя = admin
пароль = 000
попытка номер = 1
Ответ: пароль не совпадает – false
```

### Задание 

Решение нужно написать в файле Login. Для решения используй переменные, которые доступны внутри скобок: 
- `username` – имя пользователя (тип String);
- `password` – пароль (тип String);
- `attemptCount` – количество попыток (тип Int);
- `isLoginSuccess` – переменная, в которую нужно присвоить ответ (true, если **все** условия выполнены. false, если нет). 

P.S. Не создавай переменные с такими же названиями. 

### Проверка

Для проверки запусти тесты PrimitiveTypesTests/Login
