INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('bootcamp HTML', 'https://www.publicdomainpictures.net/pictures/280000/velka/family-relationship-course.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUREyYtelKO-ojKA8OWY0huAyKKRZSEkfJjw&usqp=CAU');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2021-10-18T10:00:00Z', TIMESTAMP WITH TIME ZONE '2022-07-14T10:00:00Z', 1 );
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2021-10-18T10:00:00Z', TIMESTAMP WITH TIME ZONE '2022-07-14T10:00:00Z', 1 );

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://www.publicdomainpictures.net/pictures/280000/velka/family-relationship-course.jpg', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'https://www.publicdomainpictures.net/pictures/280000/velka/family-relationship-course.jpg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma', 3, 'https://www.publicdomainpictures.net/pictures/280000/velka/family-relationship-course.jpg', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 01', 'Neste capítulo vamos começar', 1, 'https://www.publicdomainpictures.net/pictures/280000/velka/family-relationship-course.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 02', 'Neste capítulo vamos continuar', 2, 'https://www.publicdomainpictures.net/pictures/280000/velka/family-relationship-course.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 03', 'Neste capítulo vamos finlizar', 3, 'https://www.publicdomainpictures.net/pictures/280000/velka/family-relationship-course.jpg', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, avaliable, only_Update) VALUES (1, 1,TIMESTAMP WITH TIME ZONE '2021-10-18T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, avaliable, only_Update) VALUES (2, 1,TIMESTAMP WITH TIME ZONE '2021-10-18T13:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 capítulo 01', 1, 1);
INSERT INTO tb_content (id, test_Content, video_Uri) VALUES (1, 'Material de apoio', 'https://www.youtube.com/watch?v=QekeJBShCy4' );

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 capítulo 01', 2, 1);
INSERT INTO tb_content (id, test_Content, video_Uri) VALUES (2, '', 'https://www.youtube.com/watch?v=QekeJBShCy4' );

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 capítulo 01', 3, 1);
INSERT INTO tb_content (id, test_Content, video_Uri) VALUES (3, '', 'https://www.youtube.com/watch?v=QekeJBShCy4' );

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 4 capítulo 01', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Trabalho bem feito', 5, 4,1.0,TIMESTAMP WITH TIME ZONE '2021-10-25T13:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);