-- View All Customers
SELECT * FROM customers;

-- View Account Details with Customer Name
SELECT c.name, a.account_type, a.balance
FROM accounts a
JOIN customers c ON a.customer_id = c.customer_id;

-- Total Transactions Per Account
SELECT account_id, SUM(amount) AS total_amount
FROM transactions
GROUP BY account_id;

-- Find Highest Balance Account
SELECT * FROM accounts
ORDER BY balance DESC
LIMIT 1;
