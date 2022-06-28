-- It inserts the roles ADMIN and USER into roles table.
INSERT INTO roles (id, created_at, description, name, updated_at)
SELECT 1,
       CURDATE(),
       'This role has full control permission to manage the web application. It has full access to restricted services.',
       'ROLE_ADMIN',
       NULL WHERE NOT EXISTS (SELECT * FROM roles WHERE name='ROLE_ADMIN');

INSERT INTO roles (id, created_at, description, name, updated_at)
SELECT 2,
       CURDATE(),
       'This role has basic permissions only to use the allowed services. It does not have access to restricted services to manage the content of the web application.',
       'ROLE_USER',
       NULL WHERE NOT EXISTS (SELECT * FROM roles WHERE name='ROLE_USER');

INSERT INTO users(id,created_at,email,is_active,updated_at,password,role_id)
SELECT 1,
       CURDATE(),
       'adriangh1321@gmail.com',
       TRUE,
       NULL,
       '$2a$10$DG0WbMHihHQilUssObgK6.b1iO8.RLGzqwYuSLUB31p/KvtEXmmke',
       2 WHERE NOT EXISTS (SELECT * FROM users WHERE id=1);

INSERT INTO contact_informations (id,created_at,deleted_at,email,is_active,linked_in,phone,remote_repository,updated_at,facebook,twitter,instagram)
SELECT 1,
	   CURDATE(),
       NULL,
       "adriangh1321@gmail.com",
       TRUE,
       "linkedin.com/in/gustavohernandez-ing",
       "(261)5749942",
       "github.com/adriangh1321",
       NULL,
       "facebook.com/adrian.0119",
       "twitter.com/Gustavo89441547",
       "instagram.com/adriangh1321"
       WHERE NOT EXISTS (SELECT * FROM contact_informations WHERE id=1);

INSERT INTO current_companies (id,created_at,deleted_at,image,is_active,name,updated_at,url)
SELECT 1,
	   CURDATE(),
       NULL,
       "./assets/img/ecogas-logo.png",
       TRUE,
       "Ecogas",
       NULL,
       "ecogas.com.ar"
	   WHERE NOT EXISTS (SELECT * FROM current_companies WHERE id=1);

INSERT INTO portfolios (id, about_me,country,created_at,deleted_at,firstname,image,is_active,lastname,ocupation,state,updated_at,current_company_id,contact_information_id,user_id)
SELECT 1,
       "I am a java backend developer!",
       "Argentine",
       CURDATE(),
       NULL,
       "Gustavo",
       "./assets/img/profile-photo.png",
       TRUE,
       "Hernandez",
       "Chemical Engineer",
       "Mendoza",
       NULL,
       1,
       1,
       1
	   WHERE NOT EXISTS (SELECT * FROM portfolios WHERE id=1);
       
INSERT INTO experiences (id,company,country,created_at,deleted_at,description,end_date,image,is_active,position,start_date,state,updated_at,portfolio_id)
SELECT 1,
	   "Ecogas",
       "Argentine",
       CURDATE(),
       NULL,
       "Loading and control of documentation of external works for the digitization department of Ecogas",
       '2018-05-30',
       "./assets/img/ecogas-logo.png",
       TRUE,
       "Documentation control",
       '2017-04-17',
       "Mendoza",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM experiences WHERE id=1);
       
INSERT INTO experiences (id,company,country,created_at,deleted_at,description,end_date,image,is_active,position,start_date,state,updated_at,portfolio_id)
SELECT 2,
	   "Aguas Danone S.A.",
       "Argentine",
       CURDATE(),
       NULL,
       "Quality control at Villavicencio plant",
       '2010-10-30',
      "./assets/img/villavicencio-logo.jpg",
       TRUE,
       "Laboratory analyst",
       '2010-10-01',
       "Mendoza",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM experiences WHERE id=2);
       
INSERT INTO educations (id,created_at,deleted_at,end_date,image,institute,is_active,start_date,title,updated_at,portfolio_id)
SELECT 1,
	   CURDATE(),
       NULL,
       '2019-11-25',
       "./assets/img/utn-logo.png",
       "Universidad Tecnologica Nacional",
       TRUE,
       '2011-03-01',
       "Chemical Engineer",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM educations WHERE id=1);
       
INSERT INTO educations (id,created_at,deleted_at,end_date,image,institute,is_active,start_date,title,updated_at,portfolio_id)
SELECT 2,
	   CURDATE(),
       NULL,
       '2014-12-01',
       "./assets/img/utn-logo.png",
       "Universidad Tecnologica Nacional",
       TRUE,
       '2011-03-01',
       "Chemical Technician",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM educations WHERE id=2);
       
INSERT INTO educations (id,created_at,deleted_at,end_date,image,institute,is_active,start_date,title,updated_at,portfolio_id)
SELECT 3,
	   CURDATE(),
       NULL,
       '2021-12-01',
       "./assets/img/logo-egg.JPG",
       "Egg Institute",
       TRUE,
       '2021-05-01',
       "Fullstack Developer",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM educations WHERE id=3);
       
INSERT INTO skills (id, created_at,deleted_at,is_active,name,percent,type,updated_at,portfolio_id)
SELECT 1,
	   CURDATE(),
       NULL,
       TRUE,
       "Authentication API",
       75,
       "HARD",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM skills WHERE id=1);
       
INSERT INTO skills (id, created_at,deleted_at,is_active,name,percent,type,updated_at,portfolio_id)
SELECT 2,
	   CURDATE(),
       NULL,
       TRUE,
      "Spring Security",
       50,
       "HARD",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM skills WHERE id=2);
       
INSERT INTO skills (id, created_at,deleted_at,is_active,name,percent,type,updated_at,portfolio_id)
SELECT 3,
	   CURDATE(),
       NULL,
       TRUE,
      "Teamwork",
       90,
       "SOFT",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM skills WHERE id=3);
       
INSERT INTO skills (id, created_at,deleted_at,is_active,name,percent,type,updated_at,portfolio_id)
SELECT 4,
	   CURDATE(),
       NULL,
       TRUE,
      "Problem-solving",
       100,
       "SOFT",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM skills WHERE id=4);
       
INSERT INTO skills (id, created_at,deleted_at,is_active,name,percent,type,updated_at,portfolio_id)
SELECT 5,
	   CURDATE(),
       NULL,
       TRUE,
      "Comunication",
       100,
       "SOFT",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM skills WHERE id=5);
       
INSERT INTO skills (id, created_at,deleted_at,is_active,name,percent,type,updated_at,portfolio_id)
SELECT 6,
	   CURDATE(),
       NULL,
       TRUE,
      "MVC Design Pattern",
       90,
       "HARD",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM skills WHERE id=6);
       
INSERT INTO projects (id,created_at,deleted_at,description,is_active,name,updated_at,portfolio_id)
SELECT 1,
	   CURDATE(),
       NULL,
       "This API was developed with Java Spring for SOMOS MAS organization in Alkemy Aceleration",
       TRUE,
       "API for Somos Mas NGO",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM projects WHERE id=1);
       
INSERT INTO projects (id,created_at,deleted_at,description,is_active,name,updated_at,portfolio_id)
SELECT 2,
	   CURDATE(),
       NULL,
       "This web application was developed with Java Spring that allows renting accommodation",
       TRUE,
       "Accommodation Application",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM projects WHERE id=2);
       
INSERT INTO interests (id,created_at,deleted_at,image,is_active,name,updated_at,portfolio_id)
SELECT 1,
	   CURDATE(),
       NULL,
       "./assets/img/game-interest.jpg",
       TRUE,
       "Games",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM interests WHERE id=1);
       
INSERT INTO interests (id,created_at,deleted_at,image,is_active,name,updated_at,portfolio_id)
SELECT 2,
	   CURDATE(),
       NULL,
       "./assets/img/movie-interest.jpg",
       TRUE,
       "Movies",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM interests WHERE id=2);

       
       


       
       

       