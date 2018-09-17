-- AND and OR Operators 複数条件指定
-- SALARYが2000以上、かつageが25以下のデータを取得する。
SELECT ID, NAME, SALARY FROM CUSTOMERS WHERE SALARY > 2000 AND age < 25

-- SALARYが2000以上、またはageが25以下のデータを取得する。
SELECT ID, NAME, SALARY FROM CUSTOMERS WHERE SALARY > 2000 OR age < 25

-- LIKE 前方一致、部分一致、後方一致etc
-- 最初が200で始まるSALARYのデータを取得する。
SELECT ID, NAME, SALARY FROM CUSTOMERS WHERE SALARY LIKE '200%'

-- 200が含まれるSALARYのデータを取得する。
SELECT ID, NAME, SALARY FROM CUSTOMERS WHERE SALARY LIKE '%200%'

-- 最後が200で終わるSALARYのデータを取得する。
SELECT ID, NAME, SALARY FROM CUSTOMERS WHERE SALARY LIKE '_00%'

-- 2番目の数字が2で最後の数字が3のデータを取得
-- ex)1203 => true, 1200003 => true, 13203 => false(2が2番目に来ていないから), 1202 => false(最後の数字が3ではないから)
SELECT ID, NAME, SALARY FROM CUSTOMERS WHERE SALARY LIKE '_2%3'

-- GROUP_BY グループ毎にデータの集計が可能。
-- select フィールド名 データの集計(データを取得したいフィールド) from テーブル名 group by フィールド名;
-- 参考サイト: https://techacademy.jp/magazine/5196
SELECT product_name, SUM (quantity) FROM products GROUP BY product_name

-- ORDER_BY データを取得する順番を並び替える
-- ASC => low to high
SELECT * FROM CUSTOMERS ORDER BY price ASC;
-- DESC => high to low
SELECT * FROM CUSTOMERS ORDER BY price DESC;
