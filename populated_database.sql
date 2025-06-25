USE pet_adoption;

INSERT INTO shelter (name, address, phone) 
VALUES 
    ('Happy Paws Shelter', '123 Main St, Springfield', '555-0101'),
    ('Furry Friends Rescue', '456 Oak Ave, Rivertown', NULL); 

INSERT INTO adopter (first_name, last_name, email, address) 
VALUES 
    ('Alice', 'Johnson', 'alice.johnson@email.com', '789 Pine Rd, Springfield'),
    ('Bob', 'Smith', 'bob.smith@email.com', NULL), 
    ('Carol', 'Williams', 'carol.williams@email.com', '321 Elm St, Rivertown');

INSERT INTO pet (shelter_id, name, species, age, status) 
VALUES 
    (1, 'Buddy', 'dog', 3, 'available'), -- Shelter 1
    (1, 'Whiskers', 'cat', NULL, 'available'), -- NULL for unknown age
    (2, 'Polly', 'bird', 2, 'available'), -- Shelter 2
    (2, 'Max', 'dog', 5, 'available'),
    (1, 'Luna', 'cat', 1, 'adopted');

INSERT INTO adoption (pet_id, adopter_id, adoption_date) 
VALUES 
    (5, 1, '2025-06-01'), -- Luna (pet_id 5) adopted by Alice (adopter_id 1)
    (1, 2, '2025-06-15'); -- Buddy (pet_id 1) adopted by Bob (adopter_id 2)

UPDATE pet 
SET status = 'adopted' 
WHERE pet_id = 1;

UPDATE adopter 
SET email = 'carol.new@email.com', address = '654 Birch Ln, Rivertown' 
WHERE adopter_id = 3;

UPDATE shelter 
SET phone = '555-0202' 
WHERE shelter_id = 1;

DELETE FROM pet 
WHERE pet_id = 3 AND status = 'available';

DELETE FROM adopter 
WHERE adopter_id = 3;

SELECT * FROM shelter;
SELECT * FROM pet;
SELECT * FROM adopter;
SELECT * FROM adoption;