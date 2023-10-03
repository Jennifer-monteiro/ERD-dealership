INSERT INTO salesman (first_name, last_name)
VALUES ('Hector', 'Bursin'),
       ('Erika', 'Beppin'),
       ('Vanessa', 'Soares');

INSERT INTO car (car_model, car_make, car_year, car_color)
VALUES ('Rogue', 'Nissan', 2022, 'White'),
       ('Civic', 'Honda', 2020, 'Black'),
       ('Audi', 'A7', 2023, 'Red');

INSERT INTO customer (first_name, last_name, phone_number, address)
VALUES ('Alice', 'Carvalho', '555-222-1210', '123 washington St'),
       ('David', 'Costa', '555-333-3089', '322 carpender St'),
       ('Eve', 'Venturi', '555-555-3297', '023 lincon St');

INSERT INTO parts (part_name, price, comment)
VALUES ('new motor', 5.000, 'Motor change. Running'),
       ('Oil Filter', 25.00, 'Filter changed'),
       ('Brake', 50.00, 'Front and Rear Brakes. Running');

INSERT INTO service_mechanic (hours, rate, comment, first_name, last_name, part_id)
VALUES (8.0, 50.00, 'Motor Change', 'Mike', 'Levin', 1),
       (1.0, 65.00, 'Oil Change', 'Samuel', 'Jackson', 2),
       (2.0, 55.00, 'Brake Change', 'Fernando', 'Mickaelson', 3)


INSERT INTO invoice (date, salesman_id, customer_id, serv_mech_id, car_total, part_total, car_id)
VALUES
    (10.5, 1, 1, 4, 100.00, (
        SELECT SUM(price) FROM parts WHERE part_id IN (1, 2, 3)
    ), 1),
    (8.0, 2, 2, 5, 150.00, (
        SELECT SUM(price) FROM parts WHERE part_id IN (1, 2, 3)
    ), 2),
    (5.5, 3, 3, 6, 200.00, (
        SELECT SUM(price) FROM parts WHERE part_id IN (1, 2, 3)
    ), 3);


INSERT INTO service_mechanic (hours, rate, comment, first_name, last_name, part_id)
VALUES
    (1.0, 60.00, 'Battery Replacement', 'Jessica', 'Cavalcante', 4),
    (2.5, 75.00, 'Inspection', 'Robert', 'Danilo', 5);

INSERT INTO invoice (date, salesman_id, customer_id, serv_mech_id, car_total, part_total, car_id)
VALUES
    (7.5, 2, 1, 10, 90.00, (
        SELECT SUM(price) FROM parts WHERE part_id IN (1, 2)
    ), 6),
    (6.0, 3, 2, 11, 130.00, (
        SELECT SUM(price) FROM parts WHERE part_id IN (2, 3)
    ), 7);