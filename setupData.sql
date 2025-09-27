-- Addresses
INSERT INTO address (street, city, zip_code, state) VALUES
('123 Campus Dr', 'Provo', '84604', 'Utah'),      -- id=1
('456 Main St', 'Salt Lake City', '84101', 'Utah'), -- id=2
('789 Canyon Rd', 'Provo', '84606', 'Utah');      -- id=3

-- Races
INSERT INTO race (name, distance, date, elevation, address_id) VALUES
('BYU Homecoming', 5.00, '2025-10-11', 4500, 1),  
('Cougs vs Cancer', 10.00, '2025-05-20', 4600, 1),
('Deseret News', 26.20, '2025-07-24', 4226, 2);

-- Runners
INSERT INTO runner (first_name, last_name, phone_number, age, gender, address_id) VALUES
('Jacob', 'Smith', '801-555-1234', 22, 'Male', 1),
('Emily', 'Johnson', '801-555-5678', 25, 'Female', 2),
('Michael', 'Lee', '801-555-8765', 30, 'Male', 3);

-- Registrations
INSERT INTO registration (runner_id, race_id) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 3),
(3, 2),
(3, 3);

-- Shoes
INSERT INTO shoes (runner_id, brand, size, model, year) VALUES
(1, 'Nike', 10.5, 'Pegasus', 2023),
(2, 'Adidas', 8.0, 'Ultraboost', 2024),
(3, 'Brooks', 11.0, 'Ghost', 2022);

-- Prizes
INSERT INTO prize (race_id, first_place, second_place, third_place) VALUES
(1, 300, 200, 100),
(2, 500, 300, 200),
(3, 1000, 500, 250);

-- Results
INSERT INTO results (race_id, runner_id, place, race_time) VALUES
(1, 1, 1, '00:25:30'),
(1, 2, 2, '00:27:15'),
(2, 1, 2, '00:55:00'),
(2, 3, 1, '00:50:45'),
(3, 2, 1, '02:59:59'),
(3, 3, 2, '03:10:00');
