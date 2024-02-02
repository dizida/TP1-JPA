-- Initialisation des tables
INSERT INTO Country(id, code, name) VALUES
-- Les clés sont auto-générées, donc on ne les spécifie pas
    (default, 'FR', 'France'), -- id = 1
    (default, 'UK', 'United Kingdom'), -- id = 2
    (default, 'US', 'United States of America'); -- id = 3
-- On peut fixer la valeur des clés auto-générées, mais il faudrait ensuite
-- réinitialiser le compteur de clé auto-générée
-- Attention : la syntaxe est différente selon le SGBD utilisé
-- ALTER TABLE Country ALTER COLUMN id RESTART WITH 4;

INSERT INTO City(name, population, country_id) VALUES
-- Les clés sont auto-générées, donc on ne les spécifie pas
    ('Paris', 21, SELECT id FROM Country WHERE code = 'FR'), -- id = 1
    ('New York', 861635, SELECT id FROM Country WHERE code = 'US'), -- id = 2
    ('Londres', 118082, SELECT id FROM Country WHERE code = 'UK'); -- id = 3
    
    
