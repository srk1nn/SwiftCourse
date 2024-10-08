# [Конспект] 3. Операторы условного перехода

## Оператор if в Swift

Оператор `if` в является фундаментальной частью языка и используется в большинстве программ для контроля логики выполнения. Существует две основные формы оператора if.

Первая форма позволяет выполнять код только тогда, когда условие истинно, и имеет следующую форму:

```swift
if условие {
    // блок кода, который выполнится, если условие истинно
}

// Например
if age >= 18 {
    print("Вы совершеннолетний")
}

```

Вторая форма оператора if предоставляет дополнительный else и используется для выполнения одной части кода, когда условие истинно, и другой части кода, когда то же условие ложно.

```swift
if условие {
    // блок кода, который выполнится, если условие истинно
} else {
    // блок кода, который выполнится, если условие ложно
}

// Например
if age >= 18 {
    print("Вы совершеннолетний")
} else {
    print("Вы не совершеннолетний")
}
```

### Оператор else if

Оператор `else if` позволяет проверять несколько условий последовательно. Как только одно из условий становится истинным, соответствующий блок кода выполняется, а остальные условия игнорируются. Это полезно, когда нужно выполнить различные действия в зависимости от разных значений переменной.

```swift
let temperature = 25

if temperature > 30 {
    print("Очень жарко")
} else if temperature > 20 {
    print("Тепло")
} else {
    print("Прохладно")
}

```

### Тернарный оператор

Для простых условий можно использовать тернарный оператор `? :`, который является сокращенной формой оператора `if-else`:

```swift
let isSunny = true
let weather = isSunny ? "Солнечно" : "Пасмурно"
print(weather) // Выведет "Солнечно"

```

## Области видимости в Swift

Области видимости определяют, какие переменные и константы доступны в различных частях кода. При работе с ними достаточно запомнить, что переменные распространяются сверху вниз, то есть переменные с более высоких областей видимости видны в более локальных. Но не наоборот.

Нам пока что знакомы лишь 2 области видимости: глобальная и локальная. Переменные объявленые вне каких либо блоков находятся в глобальной области видимости и доступны в любом месте программы. Переменные, объявленые внутри блока кода (например, внутри условного оператора), доступны только внутри этого блока и блоках ниже.

```swift
let money = 1000
let price = 10

if money >= price {
    // Можно обращаться к money и price,
    // поскольку они объявлены глобально
    let remainingMoney = money - price
    print("Покупаю. У меня осталось \(remainingMoney) руб.")
		
    if remainingMoney >= price {
        // Можно обращаться к remainingMoney и price,
        // поскольку они объявлены в областях выше
        let remainingTotal = remainingMoney - price
        print("Покупаю еще раз. Остаток после двух покупок \(remainingTotal) руб.")		
    }
}

// print(remainingMoney) // Ошибка: недоступно за пределами областью видимости блока if
```

## Оператор switch в Swift

Оператор `switch` в Swift используется для проверки значения переменной на соответствие нескольким возможным случаям.

Оператор начинается с ключевого слова `switch`, за которым следует значение или выражение, которое нужно проверить. Затем идут блоки `case`, каждый из которых содержит значение или диапазон значений. Если совпадение найдено, выполняется соответствующий блок кода. Блок `default` используется для обработки всех остальных случаев, когда ни одно из условий не выполнено.

```swift
let number = 3

switch number {
case 1:
    print("Один")
case 2:
    print("Два")
case 3:
    print("Три")
default:
    print("Другое число")
}
```

В Swift можно использовать диапазоны значений в блоках `case` для определения множественных значений. Оператор `0...5` создает закрытый диапазон, включая последнее число. Оператор `0..<5` создает открытый диапазон, не включая последнее число.

```swift
let age = 25

switch age {
case 0...12:
    print("Ребенок")
case 13...19:
    print("Подросток")
case 20...64:
    print("Взрослый")
case 65...100:
    print("Пожилой")
default:
    print("Некорректный возраст")
}
```

Чтобы понять зачем нужен switch, если то же самое можно реализовать через if else if, рекомендую прочитать статью [Когда стоит использовать switch вместо if ?](https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-use-switch-statements-rather-than-if)
