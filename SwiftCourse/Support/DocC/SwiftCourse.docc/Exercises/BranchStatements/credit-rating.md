# CreditRating

Оценка кредитного рейтинга

### Описание

Нужно написать код, который оценивает внутренний кредитный рейтинг пользователя на основе его возраста, дохода, количества кредитов и просроченных платежей. Рейтинг рассчитывается по следующим критериям:
- Если возраст меньше 40 лет, к рейтингу добавляется 10 баллов
- Если доход превышает 50 000 рублей, к рейтингу добавляется 20 баллов; но если доход превышает 100 000 рублей, то 40 баллов
- За каждый кредит из рейтинга вычитается 10 баллов
- За каждый просроченный платеж из рейтинга вычитается 20 баллов

### Задание

Решение нужно написать в файле CreditRating. Для решения используй переменные, которые доступны внутри скобок:
- `age` – возраст пользователя (тип Int);
- `income` – доход пользователя (тип Double);
- `creditsCount` – количество кредитов у пользователя (тип Int);
- `overduePaymentsCount` – количество просроченных платежей (тип Int);
- `creditRating` – переменная, в которую нужно присвоить ответ. Кредитный рейтинг (тип Int).

P.S. Не создавай переменные с такими же названиями.

### Проверка

Для проверки запусти тесты BranchStatementsTests/CreditRating
