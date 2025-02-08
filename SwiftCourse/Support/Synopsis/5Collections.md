# [Конспект] 5. Коллекции


## Дополнительные ссылки
- [Массивы](https://metanit.com/swift/tutorial/2.9.php)
- [Множества](https://metanit.com/swift/tutorial/2.11.php)
- [Словари](https://metanit.com/swift/tutorial/2.12.php)

## Массивы (Array)

Массив — это структура данных, которая хранит элементы одного типа в определённом порядке.

**Создание массива**
```swift
// С явным указание типа
let fruits: Array<String> = ["Apple", "Orange"]
let fruits: [String] = [] // Пустой массив

// Без явного указания типа
let fruits = ["Apple", "Orange"]
let fruits = [Int]() // Пустой массив
```

**Доступ к элементам массива**

Каждый элемент массива доступен через его индекс. Индексация начинается с 0.

```swift
// Чтение по индексу
let firstFruit = fruits[0]

// Изменение элемента по индексу
fruits[1] = "Strawberry"
```

```swift
// Получение первого элемента массива
let firstFruit = fruits.first

// Получение последнего элемента массива
let lastFruit = fruits.last
```

**Добавление элементов в массив**

```swift
// Добавление в конец массива
fruits.append("Strawberry")

// Вставка элемента по индексу
fruits.insert("Strawberry", at: 1)
```

**Удаление элементов из массива**

```swift
// Удаление элемента по индексу
fruits.remove(at: 2)

// Удаление последнего элемента
fruits.removeLast()

// Удаление первого элемента
fruits.removeFirst()

// Удаление всех элементов
fruits.removeAll()
```

**Элементы**
```swift
// Получение количества элементов в массиве
let count = fruits.count // Возвращает тип Int

// Проверить, пустой ли массив
let empty = fruits.isEmpty // Возвращает Bool

// Проверить, есть ли элемент
fruits.contains("Strawberry")
```

## Множества (Set)

Множество — это коллекция уникальных элементов, которые не упорядочены. В отличие от массива, множество автоматически исключает повторяющиеся значения.

Особенности множества
- Все элементы уникальны: добавление повторяющихся значений не изменяет множество.
- Элементы множества не упорядочены, их порядок может быть произвольным.

**Создание множества**

```swift
let fruits: Set<String> = ["Apple", "Orange"]
let fruits = Set<String>() // Пустое множество
```

**Основные операции с множествами**
```swift
// Добавить элемент
fruits.insert("Strawberry")

// Удалить элемент
fruits.remove("Strawberry")

// Удалить все элементы
fruits.removeAll()

// Получение количества элементов
let count = fruits.count // Возвращает тип Int

// Проверить, пустое ли множество
let empty = fruits.isEmpty // Возвращает Bool

// Проверить, есть ли элемент
fruits.contains("Strawberry")
```

**Операции над множествами**

Swift поддерживает базовые математические операции над множествами:

#### **Объединение (union):**
Создаёт новое множество, включающее все элементы из двух множеств.
```swift
let setA: Set = [1, 2, 3]
let setB: Set = [3, 4, 5]
let unionSet = setA.union(setB)  // [1, 2, 3, 4, 5]
```

#### **Пересечение (intersection):**
Создаёт новое множество из общих элементов двух множеств.
```swift
let intersectionSet = setA.intersection(setB)  // [3]
```

#### **Разность (subtracting):**
Создаёт новое множество из элементов, которые есть в одном множестве, но отсутствуют в другом.
```swift
let differenceSet = setA.subtracting(setB)  // [1, 2]
```

#### **Симметричная разность (symmetricDifference):**
Создаёт новое множество из элементов, которые присутствуют только в одном из двух множеств.
```swift
let symmetricDifferenceSet = setA.symmetricDifference(setB)  // [1, 2, 4, 5]
```

## Словари (Dictionary)

Словарь — это коллекция, которая хранит пары "ключ-значение". Ключи в словаре уникальны, а значения могут быть любыми.

**Создание словаря**
```swift
// С явным указание типа
let fruits: Dictionary<String, Int> = ["Apple": 2, "Orange": 1]
let fruits: [String: Int] = [:] // Пустой словарь

// Без явного указания типа
let fruits = ["Apple": 2, "Orange": 1]
let fruits = [String: Int]() // Пустой словарь
```

**Доступ к данным**
```swift
// Получение значения по ключу
let appleNumber = fruits["Apple"]

// Изменение значения по ключу
fruits["Apple"] = 10

// Добавление новой пары
fruits["Strawberry"] = 4

// Удаление пары
fruits["Strawberry"] = nil

// Удаление всех элементов
fruits.removeAll()

// Получение количества пар
let count = fruits.count // Возвращает тип Int

// Проверить, пустой ли словарь
let empty = fruits.isEmpty // Возвращает Bool

// Получение всех ключей в виде массива
let keys = fruits.keys

// Получение всех значений в виде массива
let values = fruits.values
```
