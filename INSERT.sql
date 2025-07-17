insert into artists (name_pseudonym)
values ('Порнофильмы'), -- id 1
('Король и Шут'), -- id 2
('Noize MC'), -- id 3
('Anacondaz'), -- id 4
('Lumen'); -- id 5

insert into genre (name)
values ('punk'),
('rock'),
('punk-rock'),
('hip-hop');

insert into albums (name, manufacture)
values ('Это пройдёт', '2020.01.29'), -- 1
('Как в старой сказке', '2001.11.12'), -- 2
('Выход в город', '2021.11.19'), -- 3
('Перезвони мне +79995771202', '2021.02.12'), -- 4
('Правда?', '2007.05.23'); -- 5

insert into track (name, duration, album)
values ('Это пройдет', '03:56' ,1)
('Уроки любви', '5:16', 1),
('Проклятый старый дом', '4:17', 2),
('Возвращение колдуна', '3:15', 2),
('Вояджер-1', '3:38', 3),
('Столетняя война', '3:13', 3),
('Уходи', '3:30', 4),
('Передавай привет', '4:43', 4),
('Пока ты спал', '3:16', 5),
('Гореть', '5:19',5);

insert into collection  (name, manufacture)
values ('После России', '2023.01.13'),
('Собрание', '2001.03.01'),
('The Greatest Hits Vol. 2', '2010.02.01'),
('Акустика Live', '2018.03.04'),
('XX лет. Избранное', '2018.03.02');

insert into artists_to_albums (artist_id, albums_id)
values (1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

insert into genre_to_artists  (genre_id, artist_id)
values (1, 1),
(3, 2),
(4, 3),
(2, 4),
(2, 5);

insert into track_to_collection (track_id, collection_id)
values (2, 1),
(3, 2),
(5, 3),
(7, 4),
(9, 5);