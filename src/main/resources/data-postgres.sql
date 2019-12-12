INSERT INTO category (id, name)
VALUES (1, 'Cars'),
       (2, 'Suspension'),
       (3, 'BMS'),
       (4, 'Batteries'),
       (5, 'Engines'),
       (6, 'Chassis'),
       (7, 'Brakes'),
       (8, 'Gears'),
       (9, 'Boost'),
       (10, 'Tyres'),
       (11, 'Drive')
ON CONFLICT DO NOTHING;

INSERT INTO supplier (id, name)
VALUES (1, 'Mysuko'),
       (2, 'Titan'),
       (3, 'Caltech'),
       (4, 'Itex'),
       (5, 'R-Line'),
       (6, 'TGR')
ON CONFLICT DO NOTHING;

-- Cars:
INSERT INTO product (category_id, supplier_id, title)
VALUES (1, 1, 'Dune Rat'),
       (1, 1, 'Brute'),
       (1, 1, 'Sand Shark'),
       (1, 1, 'Sky Hawk'),
       (1, 1, 'Stunt Monkey'),
       (1, 1, 'Mean Streak'),
       (1, 1, 'Alley Kat'),
       (1, 1, 'Nitro Lightning')
ON CONFLICT DO NOTHING;

-- Suspension:
INSERT INTO product (category_id, supplier_id, title, description)
VALUES (2, 4, 'Basic', 'Basic shocks'),
       (2, 4, 'Compact', 'Enhanced ride'),
       (2, 4, 'Absorber', 'Damage reducing travel'),
       (2, 4, 'Absorber Pro', 'Super tough and strong'),
       (2, 4, 'Ultra Shock', 'Max absorption')
ON CONFLICT DO NOTHING;

-- BMS:
INSERT INTO product (category_id, supplier_id, title, description)
VALUES (3, 1, 'Maxi-control BMS', 'Maximum brake and handling aids'),
       (3, 1, 'Enhanced BMS', 'Increased performance levels'),
       (3, 1, 'BMS Bypass', 'Increased performance, less aid'),
       (3, 1, 'Mephisto', 'Minimum driving aid'),
       (3, 1, 'Diablo Extreme', 'Maximum control and performance')
ON CONFLICT DO NOTHING;

-- Batteries:
INSERT INTO product (category_id, supplier_id, title, description)
VALUES (4, 2, '6V Quadra-Cell', 'Heavy 4 cell battery'),
       (4, 2, '6V Duo Cell', 'Dual cell delivers more charge'),
       (4, 2, '7.2V Powercell Ni-Cad', 'Efficient high capacity cell'),
       (4, 2, '7.2V Powerforce', 'High performance Ni-MH cell'),
       (4, 2, '7.2V Lite-Max', 'Super light, super charged')
ON CONFLICT DO NOTHING;

-- Engines
INSERT INTO product (category_id, supplier_id, title, description)
VALUES (5, 3, '6V Motor', 'Best-value motor'),
       (5, 3, '7.2V Motor', 'Improved 7.2V performance'),
       (5, 3, 'Max-Lite', 'Basic engine'),
       (5, 3, 'Max-Pro', 'Improved performance'),
       (5, 3, 'Nitro-V Extreme', 'High performance nitro-engine')
ON CONFLICT DO NOTHING;

/*INSERT INTO product (category_id, supplier_id, title, description)
VALUES
(4, 2, '', ''),
ON CONFLICT DO NOTHING;*/