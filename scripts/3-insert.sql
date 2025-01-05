\c live023

-- INSERT INTO customers VALUES(DEFAULT, 'Henrique', 'Marques', DEFAULT, 'henrique@jstack.com.br');

-- INSERT INTO customers(email, first_name, last_name)
-- VALUES('camila@jstack.com.br', 'Camila', 'Nascente');

-- INSERT INTO customers(email, first_name, last_name)
-- VALUES
--   ('Rose@jstack.com.br', 'Rose', 'Silva'),
--   ('Pedro@jstack.com.br', 'Pedro', 'Lul'),
--   ('pandora@jstack.com.br', 'pandora', 'Lul')
-- ;

-- INSERT INTO customers(email, first_name, last_name)
-- VALUES ('Rose@jstack.com.br', 'Rose', 'Silva')
-- RETURNING id, created_at;
-- RETURNING *;
-- RETURNING id as customerCode;

DO $$
DECLARE
  i INT := 1;
  customer_id INT;
BEGIN
  WHILE i <= 20 LOOP
    INSERT INTO customers(first_name, last_name, email)
    VALUES('Customer-' || i, 'Doe-' || i, 'customer.' || i || '@email.com')
    RETURNING id INTO customer_id;

    INSERT INTO orders(amount, customer_id)
    VALUES(RANDOM() * 1000, customer_id);

    i := i + 1;
  END LOOP;

  RAISE NOTICE '% customers successfully created', i;
END $$;