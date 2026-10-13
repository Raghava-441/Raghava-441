USE support_desk;

INSERT INTO agents (agent_name, email) VALUES
('Ravi Kumar','ravi@example.com'),
('Anita Rao','anita@example.com'),
('Suresh Reddy','suresh@example.com');

INSERT INTO tickets (title, priority, status, assigned_agent, created_at, resolved_at) VALUES
('Login page not loading','High','Open',1,'2026-10-01 09:15:00',NULL),
('Payment failed for order','Critical','In Progress',2,'2026-10-02 10:30:00',NULL),
('Report export is slow','Medium','Resolved',1,'2026-10-02 11:00:00','2026-10-03 15:00:00'),
('Password reset email missing','Low','Closed',3,'2026-10-03 08:45:00','2026-10-03 12:00:00'),
('Dashboard shows wrong totals','High','Resolved',2,'2026-10-04 14:20:00','2026-10-05 09:00:00'),
('Cannot upload invoice','Medium','Open',NULL,'2026-10-05 16:10:00',NULL);
USE support_desk;
SELECT * FROM agents;
SELECT * FROM tickets;
