const connection = require('./connection');

module.exports = {
    "View Departments" : ()=> connection.query('SELECT * FROM department'),
    "View Roles" :()=> connection.query('SELECT * FROM role'),
    "View Employees" :()=> connection.query('SELECT * FROM employee'),
    "Add Department": (obj) => connection.query('INSERT INTO department SET ?', obj),
    "Add Role": (obj) => connection.query('INSERT INTO role SET ?', obj),
    "Add Employee": () => connection.query('SELECT * FROM employee')



}