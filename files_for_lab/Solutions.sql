SELECT account_id, type, SUM(amount) AS total_amount
FROM bank.trans
WHERE account_id = 396
GROUP BY type
ORDER BY type;
