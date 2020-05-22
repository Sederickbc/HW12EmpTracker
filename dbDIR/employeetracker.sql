DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;
USE employee_db;

CREATE TABLE department(
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  name VARCHAR(30),
  PRIMARY KEY (id)
);

CREATE TABLE role(
  id INTEGER NOT NULL auto_increment PRIMARY KEY,
  title VARCHAR(30),
  salary DECIMAL,
  department_id INTEGER,
  FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE employee(
  id INTEGER NOT NULL auto_increment PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INTEGER,
  manager_id INTEGER,
  FOREIGN KEY (role_id) REFERENCES role(id),
  FOREIGN KEY (manager_id) REFERENCES role(id)
);


INSERT into department (name) VALUES ("Insurance");
INSERT into department (name) VALUES ("Underwriting");
INSERT into department (name) VALUES ("Maintenance");
INSERT into department (name) VALUES ("Service");

INSERT into role (title, salary, department_id) VALUES ("Underwriting Manager", 58000, 1);
INSERT into role (title, salary, department_id) VALUES ("Service person", 68000, 1);
INSERT into role (title, salary, department_id) VALUES ("Maintenace Manager", 1007000, 2);
INSERT into role (title, salary, department_id) VALUES ("Engineer", 98000, 2);
INSERT into role (title, salary, department_id) VALUES ("Service Manager", 700000, 3);
INSERT into role (title, salary, department_id) VALUES ("Underwriting specialist", 80000, 3);
INSERT into role (title, salary, department_id) VALUES ("Accountant Lynda", 890000, 3);
INSERT into role (title, salary, department_id) VALUES ("Service leade", 45000, 3);
INSERT into role (title, salary, department_id) VALUES ("Director", 61000, 4);

INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Mike H.", "Patterson", 1, null);
INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Susan", "Berth", 2, 1);
INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Marshall", "Brown", 2, 1);

INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Monty", "Scott", 3, null);
INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Trygun", "Safari", 4, 3);
INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Luna", "Clipse", 4, 3);
INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Ralph", "Smith", 4, 3);

INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Johnson", "Minion", 5, null);
INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Toya", "Bomber", 6, 5);
INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Sarah", "Riff", 7, 5);
INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Marcos", "Sike", 7, 5);
INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Jane", "Hope", 8, 5);

INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Tory", "Travis", 9, null);
