# DATABASE DESIGN DOCUMENT

## Database Schema

### Table 1: Users
| Column | Type | Description |
|--------|------|-------------|
| id | INT (PK) | Auto increment |
| name | VARCHAR(100) | User full name |
| email | VARCHAR(100) | Unique email |
| password | VARCHAR(255) | Hashed password |
| created_at | TIMESTAMP | Account creation |

### Table 2: Products
| Column | Type | Description |
|--------|------|-------------|
| id | INT (PK) | Product ID |
| name | VARCHAR(200) | Product name |
| price | DECIMAL(10,2) | Product price |
| quantity | INT | Stock quantity |

### Table 3: Orders
| Column | Type | Description |
|--------|------|-------------|
| id | INT (PK) | Order ID |
| user_id | INT (FK) | References users |
| product_id | INT (FK) | References products |
| order_date | TIMESTAMP | Order date |

## ER Diagram (Relationships)

    ┌─────────────┐
    │    Users    │
    └──────┬──────┘
           │ 1
           │
           │ M
    ┌──────▼──────┐
    │   Orders    │
    └──────┬──────┘
           │ M
           │
           │ 1
    ┌──────▼──────┐
    │  Products   │
    └─────────────┘

## Sample Queries

### Get all users
SELECT * FROM users;

### Get user orders
SELECT * FROM orders WHERE user_id = 1;

### Join query
SELECT users.name, products.name, orders.order_date
FROM orders
JOIN users ON orders.user_id = users.id
JOIN products ON orders.product_id = products.id;
