-- 1. Open work, most urgent first
SELECT ticket_id, title, priority
FROM tickets
WHERE status IN ('Open','In Progress')
ORDER BY FIELD(priority,'Critical','High','Medium','Low');

-- 2. Tickets nobody owns
SELECT ticket_id, title FROM tickets
WHERE assigned_agent IS NULL;

-- 3. Tickets with agent names
SELECT t.ticket_id, t.title, a.agent_name
FROM tickets t
LEFT JOIN agents a ON t.assigned_agent = a.agent_id;

-- 4. Ticket count per agent
SELECT a.agent_name, COUNT(t.ticket_id) AS total_tickets
FROM agents a
LEFT JOIN tickets t ON t.assigned_agent = a.agent_id
GROUP BY a.agent_name;

-- 5. Average resolution time in hours
SELECT AVG(TIMESTAMPDIFF(HOUR, created_at, resolved_at)) AS avg_hours
FROM tickets
WHERE resolved_at IS NOT NULL;