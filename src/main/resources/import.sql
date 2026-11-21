INSERT INTO tb_user (name, email, password) VALUES ('Alex', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCT');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp Html', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR918l6_bKwnkwHB0CG-JpAfSRqcc5Es-JhRqmpguvHAClzXMMtsqSnk5dM&s=10', 'https://www.libras.com.br/ct__images/biografias/_v/ferdinand-berthier/ferdinand-berthier-800x800.webp');

INSERT INTO tb_offer (edition, star_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-10-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-10-14T03:00:00Z', '1');
INSERT INTO tb_offer (edition, star_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-14T03:00:00Z', '1');

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR918l6_bKwnkwHB0CG-JpAfSRqcc5Es-JhRqmpguvHAClzXMMtsqSnk5dM&s=10', 1 , 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('FORUM', 'Tire suas dúvidas', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR918l6_bKwnkwHB0CG-JpAfSRqcc5Es-JhRqmpguvHAClzXMMtsqSnk5dM&s=10', 2 , 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives para turma', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR918l6_bKwnkwHB0CG-JpAfSRqcc5Es-JhRqmpguvHAClzXMMtsqSnk5dM&s=10', 0 , 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 1', 'Neste capitulo vamos começar', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR918l6_bKwnkwHB0CG-JpAfSRqcc5Es-JhRqmpguvHAClzXMMtsqSnk5dM&s=10', 1 , null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 2', 'Neste capitulo vamos continuar', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR918l6_bKwnkwHB0CG-JpAfSRqcc5Es-JhRqmpguvHAClzXMMtsqSnk5dM&s=10', 1 , 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 3', 'Neste capitulo é o 3', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR918l6_bKwnkwHB0CG-JpAfSRqcc5Es-JhRqmpguvHAClzXMMtsqSnk5dM&s=10', 1 , 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refound_Moment, available, only_Update) VALUES (1,1, TIMESTAMP WITH TIME ZONE '2020-10-20T13:00:00Z', null, true, false );
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refound_Moment, available, only_Update) VALUES (2,1, TIMESTAMP WITH TIME ZONE '2020-10-20T14:00:00Z', TIMESTAMP WITH TIME ZONE '2020-11-20T14:00:00Z', true, false );
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refound_Moment, available, only_Update) VALUES (3,1, TIMESTAMP WITH TIME ZONE '2020-10-20T14:00:00Z', null, true, true );
