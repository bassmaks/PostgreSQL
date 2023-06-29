# Day 01 

1. **pizzeria** table (таблица с доступными пиццериями)
- id - первичный ключ
- name - название пиццерии
- rating - средняя оценка пиццерии (от 0 до 5 баллов)
2. **person** table (таблица с людьми, которые любят пиццу)
- id - первичный ключ
- name - имя пользователя
- age - возраст человека
- gender - пол человека
- address - адрес физического лица
3. **menu** table (таблица с доступным меню и ценой на конкретную пиццу)
- id - первичный ключ
- pizzeria_id - внешний ключ к пиццерии
- pizza_name - название пиццы в пиццерии
- price - цена конкретной пиццы
4. **person_visits** table (таблица с информацией о посещениях пиццерии)
- id - первичный ключ
- person_id - внешний ключ для пользователя
- pizzeria_id - внешний ключ для пиццерии
- visit_date - дата (например, 2022-01-01) посещения человека
5. **person_order** table (таблица с информацией о заказах людей)
- id - первичный ключ
- person_id - внешний ключ для пользователя
- menu_id - внешний ключ к меню
- order_date - дата (например, 2022-01-01) индивидуального заказа

Посещение людей и заказ людей - это разные сущности и не содержат никакой корреляции между данными. Например, клиент может находиться в одном ресторане (просто просматривая меню) и за это время сделать заказ в другом по телефону или с помощью мобильного приложения. Или в другом случае просто будьте дома и снова сделайте звонок с заказом без каких-либо визитов.


## 00 
- **Allowed** ANSI SQL 

напишите SQL-инструкцию, которая возвращает идентификатор меню и названия пиццы из таблицы "меню", а также идентификатор пользователя и имя пользователя из таблицы "персона" в одном глобальном списке (с именами столбцов, как показано в примере ниже), упорядоченном по object_id, а затем по столбцам object_name.

| object_id | object_name |
| ------ | ------ |
| 1 | Anna |
| 1 | cheese pizza |
| ... | ... |

## 01 
- **Allowed** ANSI SQL 

измените инструкцию SQL из “упражнения 00”, удалив столбец object_id. Затем измените порядок по object_name для части данных из таблицы "person", а затем из таблицы "menu" (как показано в примере ниже). Пожалуйста, сохраните дубликаты!

| object_name |
| ------ |
| Andrey |
| Anna |
| ... |
| cheese pizza |
| cheese pizza |
| ... |

## 02 
- **Denied** `DISTINCT`, `GROUP BY`, `HAVING`, any type of `JOINs`

напишите SQL-инструкцию, которая возвращает уникальные названия пицц из таблицы "меню" и заказы по столбцу pizza_name в режиме убывания. Пожалуйста, обратите внимание на раздел "Отказано".

## 03
 - **Denied** any type of `JOINs`

напишите инструкцию SQL, которая возвращает общие строки для атрибутов order_date, person_id из таблицы `person_order` с одной стороны и visit_date, person_id из таблицы `person_visits` с другой стороны (пожалуйста, смотрите пример ниже). Другими словами, давайте найдем идентификаторы людей, которые посетили и заказали пиццу в один и тот же день. На самом деле, пожалуйста, добавьте порядок по action_date в режиме возрастания, а затем по person_id в режиме убывания.

| action_date | person_id |
| ------ | ------ |
| 2022-01-01 | 6 |
| 2022-01-01 | 2 |
| 2022-01-01 | 1 |
| 2022-01-03 | 7 |
| 2022-01-04 | 3 |
| ... | ... |

## 04 
- **Denied** any type of `JOINs`

напишите SQL-инструкцию, которая возвращает разницу (минус) значений столбца person_id с сохранением дубликатов между таблицами `person_order` и `person_visits` для order_date и visit_date относятся к 7 января 2022 года

## 05 
- **Allowed** ANSI SQL 

напишите инструкцию SQL, которая возвращает все возможные комбинации между таблицами `person` и `pizzeria`, и установите порядок по идентификатору пользователя, а затем по столбцам идентификатора пиццерии. взгляните на приведенный ниже пример результата. имейте в виду, что названия столбцов могут быть разными для вас.

| person.id | person.name | age | gender | address | pizzeria.id | pizzeria.name | rating |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| 1 | Anna | 16 | female | Moscow | 1 | Pizza Hut | 4.6 |
| 1 | Anna | 16 | female | Moscow | 2 | Dominos | 4.3 |
| ... | ... | ... | ... | ... | ... | ... | ... |

## 06 
- **Allowed** ANSI SQL 

мысленно вернемся к упражнению #03 и изменим нашу инструкцию SQL, чтобы она возвращала имена людей вместо идентификаторов лиц, и изменим порядок по action_date в режиме возрастания, а затем по person_name в режиме убывания. взгляните на приведенный ниже образец данных.

| action_date | person_name |
| ------ | ------ |
| 2022-01-01 | Irina |
| 2022-01-01 | Anna |
| 2022-01-01 | Andrey |
| ... | ... |

## 07 
- **Allowed** ANSI SQL 

напишите SQL-инструкцию, которая возвращает дату заказа из таблицы `person_order` и соответствующее имя человека (имя и возраст отформатированы, как в примере данных ниже), который сделал заказ из таблицы `person`. Добавьте сортировку по обоим столбцам в режиме возрастания.

| order_date | person_information |
| ------ | ------ |
| 2022-01-01 | Andrey (age:21) |
| 2022-01-01 | Andrey (age:21) |
| 2022-01-01 | Anna (age:16) |
| ... | ... |

## 08 
-  **Allowed** `NATURAL JOIN` **Denied** other type of `JOINs`

перепишите инструкцию SQL из упражнения #07, используя конструкцию естественного СОЕДИНЕНИЯ. Результат должен быть таким же, как в упражнении №07. 

## 09 
- IN versus EXISTS

напишите 2 инструкции SQL, которые возвращают список названий пиццерий, которые не посещались пользователями, используя IN для 1-й и EXISTS для 2-й.

## 10 
- Global JOIN

напишите SQL-инструкцию, которая возвращает список имен людей, сделавших заказ на пиццу в соответствующей пиццерии.
Пример результата (с именованными столбцами) приведен ниже, и да ... , оформляйте заказ по 3 столбцам в порядке возрастания (`person_name`, `pizza_name`, `pizzeria_name`).

| person_name | pizza_name | pizzeria_name | 
| ------ | ------ | ------ |
| Andrey | cheese pizza | Dominos |
| Andrey | mushroom pizza | Dominos |
| Anna | cheese pizza | Pizza Hut |
| ... | ... | ... |