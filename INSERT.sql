insert into artists (name_pseudonym)
values ('Порнофильмы'), -- id 1
('Король и Шут'), -- id 2
('Noize MC'), -- id 3
('Anacondaz'), -- id 4
('Lumen'), -- id 5
('F.P.G.'), -- id 6
('TestArtist'); -- id 7

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
('Правда?', '2007.05.23'), -- 5
('Гонщики', '2001.08.10'), -- 6
('TestAlbum', '2025.07.22'); -- 7



insert into track (name, duration, album)
values ('Это пройдет', '00:03:56' ,1),
('Уроки любви', '00:05:16', 1),
('Проклятый старый дом', '00:04:17', 2),
('Возвращение колдуна', '00:03:15', 2),
('Вояджер-1', '00:03:38', 3),
('Столетняя война', '00:03:13', 3),
('Уходи', '3:30', 4),
('Передавай привет', '00:04:43', 4),
('Пока ты спал', '00:03:16', 5),
('Гореть', '00:05:19', 5),
('My way', '00:05:48', 6),
('Не отступай', '00:04:50', 6),
('myself test-track', '00:02:50' ,7),
('o my god test-track', '00:02:50' ,7),
('by myself', '01:02:03',7),
('bemy self', '00:01:33', 7),
('myself by track', '00:04:56', 7),
('by myself by', '00:09:10', 7),
('beemy', '00:02:31',7),
('premyne test', '00:04:02', 7);


insert into collection  (name, manufacture)
values ('После России', '2023.01.13'),
('Собрание', '2001.03.01'),
('The Greatest Hits Vol. 2', '2010.02.01'),
('Акустика Live', '2018.03.04'),
('XX лет. Избранное', '2018.03.02'),
('Punk Jazz', '2008.08.05');

insert into artists_to_albums (artist_id, albums_id)
values (1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7,7);

insert into genre_to_artists  (genre_id, artist_id)
values (1, 1),
(3, 2),
(4, 3),
(2, 4),
(2, 5),
(3, 6),
(1, 7);

insert into track_to_collection (track_id, collection_id)
values (2, 1),
(3, 2),
(5, 3),
(7, 4),
(9, 5),
(11, 6);