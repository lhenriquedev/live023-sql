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
  i INT := 1
BEGIN
  WHILE i <= 20 LOOP
  END LOOP;
END $$;