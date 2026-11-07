INSERT INTO users (phone_number, full_name) 
VALUES ('+79991112233', 'Иванов Иван Иванович');

INSERT INTO orders (user_id, total_amount, merchant_name, status) 
VALUES (1, 12000.00, 'OZON', 'ACTIVE');

INSERT INTO payment_schedule (order_id, payment_number, amount, planned_date, status)
VALUES 
(1, 1, 3000.00, '2026-10-15', 'SUCCESS'),
(1, 2, 3000.00, '2026-10-29', 'PENDING'),
(1, 3, 3000.00, '2026-11-12', 'PENDING'),
(1, 4, 3000.00, '2026-11-26', 'PENDING');

BEGIN;

INSERT INTO orders (user_id, total_amount, merchant_name, status) 
VALUES (1, 4000.00, 'OZON', 'ACTIVE'); 

INSERT INTO payment_schedule (order_id, payment_number, amount, planned_date, status)
VALUES (999, 1, 1000.00, '2026-10-15', 'PENDING'); 

ROLLBACK;