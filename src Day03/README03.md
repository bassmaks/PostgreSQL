# Day 03

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
- **Let’s find appropriate prices for Kate**

напишите SQL-запрос, который возвращает список названий пиццерий, цен на пиццу, названий пиццерий и дат посещения для Кейт и для цен в диапазоне от 800 до 1000 рублей. Пожалуйста, отсортируйте по пицце, цене и названиям пиццерий. Взгляните на приведенную ниже выборку данных.

| pizza_name | price | pizzeria_name | visit_date |
| ------ | ------ | ------ | ------ |
| cheese pizza | 950 | DinoPizza | 2022-01-04 |
| pepperoni pizza | 800 | Best Pizza | 2022-01-03 |
| pepperoni pizza | 800 | DinoPizza | 2022-01-04 |
| ... | ... | ... | ... |

## 01
- **Denied** any type of `JOINs`

найдите все идентификаторы меню, которые никем не заказывались. Результат должен быть отсортирован по идентификаторам. Ниже представлена выборка выходных данных.

| menu_id |
| ------ |
| 5 |
| 10 |
| ... |

## 02
- **Let’s find forgotten pizza and pizzerias**

используйте инструкцию SQL из упражнения №01 и покажите названия пиццерий, которые никто не заказывал, а также соответствующие цены. Результат должен быть отсортирован по названию пиццы и цене. Ниже представлена выборка выходных данных.

| pizza_name | price | pizzeria_name |
| ------ | ------ | ------ |
| cheese pizza | 700 | Papa Johns |
| cheese pizza | 780 | DoDo Pizza |
| ... | ... | ... |

## 03 
- **Let’s compare visits**

найдите пиццерии, которые чаще посещали женщины или мужчины. Для любых SQL-операторов с наборами сохраняются дубликаты (UNION ALL, EXCEPT ALL, INTERSECT ALL конструкций). отсортируйте результат по названию пиццерии. Образец данных приведен ниже.


| pizzeria_name | 
| ------ | 
| Best Pizza | 
| Dominos |
| ... |

## 04 
- **Let’s compare orders**

найдите объединение пиццерий, которые принимают заказы либо от женщин, либо от мужчин. вы должны найти набор названий пиццерий, которые были заказаны только женщинами, и выполнить операцию "UNION" с набором названий пиццерий, которые были заказаны только мужчинами. обратите внимание на слово “только” для обоих полов. Для любых SQL-операторов с наборами не сохраняйте дубликаты (`UNION`, `EXCEPT`, `INTERSECT`). Пожалуйста, отсортируйте результат по названию пиццерии. Образец данных приведен ниже.


| pizzeria_name | 
| ------ | 
| Papa Johns | 

## 05 
- **Visited but did not make any order**

напишите SQL-запрос, который возвращает список пиццерий, которые Андрей посещал, но не делал никаких заказов. делайте заказ по названию пиццерии. Ниже приведена выборка данных.


| pizzeria_name | 
| ------ | 
| Pizza Hut | 

## 06 
- **Find price-similarity pizzas**

найдите одинаковые названия пиццерий по одинаковой цене, но из разных пиццерий. Убедитесь, что результат упорядочен по названию пиццы. Выборка данных представлена ниже. убедитесь, что названия ваших столбцов соответствуют названиям столбцов ниже.

| pizza_name | pizzeria_name_1 | pizzeria_name_2 | price |
| ------ | ------ | ------ | ------ |
| cheese pizza | Best Pizza | Papa Johns | 700 |
| ... | ... | ... | ... |

## 07 
- **Let’s cook a new type of pizza**

зарегистрируйте новую пиццу с названием “greek pizza” (используйте id = 19) по цене 800 рублей в ресторане “Dominos” (pizzeria_id = 2).

## 08 
- **Denied** Don’t use direct numbers for identifiers of Primary Key and pizzeria

зарегистрируйте новую пиццу с названием “sicilian pizza” (идентификатор которой должен быть рассчитан по формуле “максимальное значение идентификатора + 1”) стоимостью 900 рублей в ресторане “Dominos” (пожалуйста, используйте внутренний запрос, чтобы получить идентификатор пиццерии).

## 09 
- **Denied** Don’t use direct numbers for identifiers of Primary Key and pizzeria

зарегистрируйте новые визиты Дениса и Ирины в ресторан Dominos на 24 февраля 2022 года.
**Предупреждение**: это упражнение, вероятно, приведет к неправильному изменению данных. На самом деле, вы можете восстановить исходную модель базы данных с помощью данных по ссылке в разделе “Правила дня” и воспроизвести сценарий из упражнений 07 и 08..

## 10 
- **Denied** Don’t use direct numbers for identifiers of Primary Key and pizzeria

оформите новые заказы от Дениса и Ирины на 24 февраля 2022 года для нового меню с “sicilian pizza”.
**Предупреждение**: это упражнение, вероятно, приведет к неправильному изменению данных. На самом деле, вы можете восстановить исходную модель базы данных с помощью данных по ссылке в разделе “Правила дня” и воспроизвести сценарий из упражнений 07, 08 и 09.

## 11 
- **“Improve” a price for clients**

измените цену на “greek pizza” на -10% от текущей стоимости.
**Предупреждение**: это упражнение, вероятно, приведет к неправильному изменению данных. На самом деле, вы можете восстановить исходную модель базы данных с помощью данных по ссылке в разделе “Правила дня” и воспроизвести сценарий из упражнений 07, 08,09 и 10.

## 12 
- **Denied** Don’t use direct numbers for identifiers of Primary Key, and menu**
- Don’t use window functions like `ROW_NUMBER( )`
- Don’t use atomic `INSERT` statements

регистрируйте новые заказы от всех желающих на “greek pizza” 25 февраля 2022 года.
**Предупреждение**: это упражнение, вероятно, приведет к неправильному изменению данных. На самом деле, вы можете восстановить исходную модель базы данных с помощью данных по ссылке в разделе “Правила дня” и воспроизвести сценарий из упражнений 07, 08,09, 10 и 11.

## 13 
- **Money back to our customers**

напишите 2 инструкции SQL (DML), которые удаляют все новые заказы из упражнения №12 на основе даты заказа. Затем удалите “greek pizza” из меню.
**Предупреждение**: это упражнение, вероятно, приведет к неправильному изменению данных. На самом деле, вы можете восстановить исходную модель базы данных с данными по ссылке в разделе “Правила дня” и воспроизвести сценарий из упражнений 07 , 08 ,09 , 10 , 11, 12 и 13.
