# Task a
SELECT DISTINCT
  cat.id,
  cat.name
FROM category AS cat LEFT JOIN product_to_category AS pc ON pc.category_id = cat.id
WHERE pc.product_id = '6';

# Task b
SELECT
  p.id,
  p.name
FROM product AS p
  LEFT JOIN product_to_category pc ON pc.product_id = p.id
WHERE pc.category_id IN (SELECT id FROM category WHERE parent_id = '10');

#Task c
SELECT
  category_id,
  COUNT(product_id) AS count
FROM product_to_category
WHERE category_id IN ('11', '17', '14')
GROUP BY category_id;


#Task d
SELECT SUM(count) AS product_count FROM (
       SELECT
         pc.category_id,
         COUNT(product_id) count
       FROM product_to_category pc
       WHERE pc.category_id IN ('11', '17', '14') AND pc.product_id NOT IN (
         SELECT sub_pc.product_id FROM product_to_category sub_pc
         WHERE sub_pc.category_id IN ('11', '17', '14') AND sub_pc.category_id != pc.category_id
       )
       GROUP BY category_id
     ) table1;


#Task e
#Как вариант это можно сделать средствами php предварительно выбрав таблицу категорий
