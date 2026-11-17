SELECT
  product_id,
  REPLACE(product_name,'e','E') AS modified_name
FROM products
ORDER BY product_id;
