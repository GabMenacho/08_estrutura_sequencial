DO $$
DECLARE
    n1 NUMERIC(5,2);
    n2 INTEGER;
    limite_inferior INTEGER := 5;
    limite_superior INTEGER := 17;
BEGIN
    -- limite_inferior <= n2 <= limite superior
    n2 := limite_inferior + floor(random() * (limite_superior - limite_inferior + 1)) :: int;
    RAISE NOTICE '% <= % <= %', limite_inferior, n2, limite_superior;
    -- quero sortear um numero entre 4 a 9 inteiro
    n2 := 4 + floor(random() * 6) :: INT;
    RAISE NOTICE '4 <= % <= 9', n2;
    n2 := floor(random() * 10 + 1) :: INT;
    RAISE NOTICE '1 <= % <= 10', n2;
    n2 := FLOOR(random() * 10) :: INT;
    RAISE NOTICE '0 <= % <= 9', n2;
    n1 := random() * 10;
    RAISE NOTICE '0 <= % < 10', n1;
    -- 0 <= n1 < 1 (real)
    n1 := random();
    RAISE NOTICE '0 <= % < 1', n1;
    --RAISE NOTICE 'n1: %', n1;

END;
$$

-- DO $$
-- DECLARE
--     n1 INTEGER := 5;
--     n2 INTEGER := 2;
--     n3 NUMERIC(5,2) := 5;
--     n4 INTEGER := -5;
-- BEGIN
--     --5 %2 = 1
--     -- %% símbolos juntos para enviar o símbolo e não usar placeholder
--     RAISE NOTICE '% %% % = %', n1, n2, n1 % n2;
--     RAISE NOTICE '|/% = %', n1, |/n1;
-- END;
-- $$

-- DO $$
-- DECLARE
--     codigo INTEGER := 1;
--     nome_completo VARCHAR(200) := 'João Santos';
--     salario NUMERIC(10,2) := 20.5;
-- BEGIN
--     RAISE NOTICE 'Meu código é %, me chamo % e meu salario é %', codigo, nome_completo, salario;
-- END;
-- $$

-- DO $$
-- BEGIN
--     --expressão com placeholder
--     RAISE NOTICE '% + % = %', 6, 7, 6+7 ;
-- END;
-- $$

-- DO $$
-- BEGIN
--     --para exibir valores no console
--     RAISE NOTICE 'Meu primeiro bloquinho anônimo';
-- END;
-- $$

