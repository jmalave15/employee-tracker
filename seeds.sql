DROP DATABASE IF EXISTS employee_tracker;

CREATE DATABASE employee_tracker;

USE employee_tracker;

CREATE TABLE department (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30)
);

CREATE TABLE role (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT
);

CREATE TABLE employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT
);

INSERT INTO department (name) 
VALUES
    ( 1, "Sales"),
    ( 2, "Development"),
    ( 3, "Accounting"),
    ( 4, "Marketing");

INSERT INTO role (title, salary, department_id)
VALUES
    ("Salesperson", 100000, 1),
    ("Sales Manager", 80000, 1),
    ("Junior Developer", 150000, 2),
    ("Senior Developer", 120000, 2),
    ("Accountant", 125000, 3),
    ("Account Manager", 160000, 3),
    ("Marketing Manager", 250000, 4);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES
    ( 1, "John", "Doe", 1, NULL),
    ( 2, "Jose", "Jose", 2, 1),
    ( 3, "Julio", "Rodriguez", 3, NULL),
    ( 4, "Kevin", "Fulton", 4, 3),
    ( 5, "Kuna", "Robins", 5, NULL),
    ( 6, "Sean", "Brown", 6, 5),
    ( 7, "Natalie", "Lord", 7, NULL),
    ( 8, "Tom", "Allen", 8, 7);