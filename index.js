const mysql = require("mysql2");
const cTable = require("console.table");
const inquirer = require("inquirer");

// Connect to database
const db = mysql.createConnection(
    {
        host: 'localhost',
        // MySQL username,
        user: 'root',
        // MySQL password
        password: 'password',
        database: 'employee_tracker',
    },
    console.log(`Connected to the employee_tracker database.`)
);