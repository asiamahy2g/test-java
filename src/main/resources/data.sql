INSERT INTO USER (id, confirmation_token, username, enabled, first_name, last_name, gender, password, authority, lastseen)
VALUES
(3, 'AAAAAAA', 'student@manny.test', 1, 'student', 'Manny student', 'Male', 'school1', 'ROLE_ADMIN', '05/01/2022'),
(4, 'BBBBBBB', 'root@manny.test', 1, 'root','Manny ROOT','Female', 'root_pass', 'ROLE_USER', '05/01/2022'),
(5, 'CCCCCCC', 'mekano@manny.test', 1, 'Mekano','hermann','Male', 'mekano_pass', 'ROLE_DOCTOR', '05/01/2022'),
(6, 'DDDDDDD', 'alain-pierre@manny.test', 1, 'Alain','Pierre','Male', 'alain_pass', 'ROLE_ADMIN', '05/01/2022'),
(7, 'EEEEEEE', 'dev@manny.test', 1,'Dev', 'User','Male', 'dev_test', 'ROLE_PATIENT', '05/01/2022'),
(8, 'GGGGGGG', 'serge@manny.test', 1, 'Serge','Prof.','Male', 'serge_pass', 'ROLE_ADMIN', '05/01/2022'),
(31, 'AAAAAAA', 'student2@manny.test', 1, 'student', 'Manny student', 'Male', 'school1', 'ROLE_ADMIN', '05/01/2022'),
(41, 'BBBBBBB', 'root2@manny.test', 1, 'root','Manny ROOT','Female', 'root_pass', 'ROLE_USER', '05/01/2022'),
(51, 'CCCCCCC', 'mekano2@manny.test', 1, 'Mekano','hermann','Male', 'mekano_pass', 'ROLE_DOCTOR', '05/01/2022'),
(61, 'DDDDDDD', 'alain-pierre2@manny.test', 1, 'Alain','Pierre','Male', 'alain_pass', 'ROLE_ADMIN', '05/01/2022'),
(71, 'EEEEEEE', 'dev2@manny.test', 1, 'dev', 'User','Male', 'dev_test', 'ROLE_PATIENT', '05/01/2022'),
(81, 'GGGGGGG', 'serge2@manny.test', 1, 'Serge','Prof.','Male', 'serge_pass', 'ROLE_ADMIN', '05/01/2022');
commit;