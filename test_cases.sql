CREATE TABLE test_groups (
name TEXT,
test_value INTEGER
);

CREATE TABLE test_cases (
    id INTEGER,
    group_name TEXT, 
    status TEXT
);

INSERT INTO test_groups (name, test_value) VALUES
('performance', 15),
('corner cases', 10),
('numerical stability', 20),
('memory usage', 10);

INSERT INTO test_cases (group_name, status) VALUES
('memory usage', 'OK'),
('numerical stability', 'OK'),
('memory usage', 'ERROR'),
('numerical stability', 'OK'),
('numerical stability', 'OK'),
('performance', 'ERROR'),
('performance', 'ERROR'),
('performance', 'OK'),
('performance', 'OK');
