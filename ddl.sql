-- SALESMAN
CREATE TABLE salesman (
    salesman_id SERIAL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30)
);

-- CAR
CREATE TABLE car (
    car_id SERIAL PRIMARY KEY,
    car_model VARCHAR(50),
    car_make VARCHAR(50),
    car_year INTEGER,
    car_color VARCHAR(50)
);

-- CUSTOMER
CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    phone_number VARCHAR(15),
    address VARCHAR(60)
);


-- PARTS
CREATE TABLE parts (
    part_id SERIAL PRIMARY KEY,
    part_name VARCHAR(50),
    price NUMERIC(7, 2),
    comment VARCHAR(50)
);

-- MECHANIC
CREATE TABLE service_mechanic (
    serv_mech_id SERIAL PRIMARY KEY,
    hours NUMERIC(5, 2),
    rate NUMERIC(7, 2),
    comment VARCHAR(50),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    part_id INTEGER REFERENCES parts(part_id)
);

-- INVOICE
CREATE TABLE invoice (
    invoice_id SERIAL PRIMARY KEY,
    date NUMERIC(5, 2),
    salesman_id INTEGER REFERENCES salesman(salesman_id),
    customer_id INTEGER REFERENCES customer(customer_id),
    serv_mech_id INTEGER REFERENCES service_mechanic(serv_mech_id),
    car_total NUMERIC(6, 2),
    part_total NUMERIC(6, 2),
    quote BOOLEAN,
    car_id INTEGER
);