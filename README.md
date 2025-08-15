# Task 7 – Creating and Using SQL Views

## 📌 Objective
To learn how to create and use SQL views for:
- Complex queries
- Data abstraction
- Data security

This task was completed using **PostgreSQL** with `CREATE VIEW` statements, aggregation, joins, and `WITH CHECK OPTION`.

---

## 🛠 Tables & Sample Data

### Departments Table (`d1`)
| dept_id | dept_name |
|---------|-----------|
| 1       | HR        |
| 2       | IT        |
| 3       | Finance   |

### Employees Table (`e1`)
| emp_id | first_name | last_name | dept_id | salary   | joining_date |
|--------|------------|-----------|---------|----------|--------------|
| 101    | John       | Doe       | 2       | 60000.00 | 2020-05-10   |
| 102    | Jane       | Smith     | 1       | 45000.00 | 2021-01-15   |
| 103    | Mike       | Brown     | 2       | 75000.00 | 2019-03-22   |
| 104    | Sara       | Wilson    | 3       | 50000.00 | 2022-07-01   |

---

## 📄 Views Created

###  Complex View – `dept_salary_report`
![complex view](https://github.com/user-attachments/assets/6c7b4c79-2cd1-41a8-9ba2-b6bb683a8880)

### Abstraction View - 'employee_full_info'
![abstraction](https://github.com/user-attachments/assets/81c57cc0-18d7-47b7-b466-78479a341a68)

### Security View - 'public_employee_directory'
![security view](https://github.com/user-attachments/assets/5a5571e7-4fc1-489a-b3ce-eb4bf8371e6b)




