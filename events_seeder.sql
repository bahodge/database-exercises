USE events_db;

INSERT INTO attendees (first_name, last_name, email) VALUES
  ('Geoff','Geoffries','geoff@exa,ple.com'),
  ('Fred', 'Fredston', 'fred@example.com'),
  ('Dave', 'Davis', 'dave@example.com');

SELECT * FROM attendees;
SELECT id FROM attendees
WHERE email = 'geoff@exa,ple.com';

SELECT * FROM presentations;
SELECT id FROM presentations
WHERE location = 'Venus';

SELECT * FROM att_pres;

INSERT INTO att_pres(att_id, pres_id) VALUES
  ((SELECT id FROM attendees
  WHERE email = 'dave@example.com'), (SELECT id FROM presentations
WHERE location = 'Venus'));
# ((SELECT id FROM attendees
# WHERE email = 'fred@example.com'), (SELECT id FROM presentations
#                                      WHERE location = 'Mars'));

INSERT INTO presentations (pres_name, location, time) VALUES
  ('Test-Driven Development 101', 'Venus', '10:00'),
  ('Test-Driven Development 102', 'Mars', '11:00'),
  ('Test-Driven Development 103', 'Jupiter', '12:00');


SELECT * FROM att_pres;

# Get everyone attending jupiter

SELECT first_name, last_name
FROM attendees
  JOIN att_pres a
    ON attendees.id = a.att_id
WHERE a.pres_id = (
  SELECT id
  FROM presentations
  WHERE location = 'mars'
);

# Get times that each attendee will be allocated for
SELECT first_name, last_name, time
FROM attendees
JOIN att_pres a ON attendees.id = a.att_id
JOIN presentations p
ON p.id = a.pres_id;

# Count number of attendees for each event
SELECT pres_name, count(a.att_id)
FROM presentations
  JOIN att_pres a ON presentations.id = a.pres_id
GROUP BY pres_name;

#