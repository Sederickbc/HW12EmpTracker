const db = require('./dbDIR');
const {prompt} = require('inquirer');
require('console.table');

const addPrompts = {
    "Department":[{
        message: "What is the department name?",
        name: "name"
    }],
    "Role": [{
        message: "What is the role title?",
        name: "title"
    },
        {
            message: "What is the role salary?",
            name: "salary"
        }, {
            message: "What is the department id for this role?",
            name: "department_id"
        }],
    "Employee": [{
        message: "What is the employee's First name?",
        name: "first_name"
    },
     {   message: "What is the employee's Last name?",
        name: "last_name",
     },
        {
            message: "What is the employee's Role ID?",
            name: "role_id",
     },
 {
     message: "What is the employee's Manager ID?",
     name: "manager_id",
        }]
}
async function init(){
    const {choice} = await prompt({
        message: "Welcome to employee tracker, what would you like to do?",
        type: "list",
        name: "choice",
        choices: ["View Departments", "View Roles", "View Employees", 
        "Add Department","Add Role", "Add Employee", "Update Employee Role"]
    })
    const addData = choice.split(' ')[0] === "Add" ? await prompt(addPrompts[choice.split(' ')[1]]) : "";
    console.log(addData)
    db[choice](addData).then(data=> console.table(data))
    setTimeout(init, 2000)
    
}

init()