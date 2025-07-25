-- Название и продолжительность самого длительного трека.
select name, duration from track
where duration = (select max(duration) from track);

-- Название треков, продолжительность которых не менее 3,5 минут.
select name, duration from track
where EXTRACT(EPOCH from duration)::int >= 210;

/*
Использую функцию EXTRACT(EPOCH from duration) для преобразования
временного формата (HH:MI:SS) в число секунд 
и операцию приведения результата к целочисленному типу (::INT),
поскольку время хранится дробно (например, миллисекунды), а нужны целые секунды.
*/

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select name from collection
where manufacture between '2018.01.01' AND '2020.12.31';

-- Исполнители, чьё имя состоит из одного слова.
select name_pseudonym  from artists
where not name_pseudonym like '% %';

-- Название треков, которые содержат слово «мой» или «my».
with track as (
    select distinct name
    from track
    where lower(name) in ('мой', 'my')
       or lower(name) like '% мой %'
       or lower(name) like 'мой %'
       or lower(name) like '% мой'
       or lower(name) like '% my %'
       or lower(name) like 'my %'
       or lower(name) like '% my'
)
select *
from track;


with track as (
    select distinct on (name)
           name
    from track
    where lower(name) ~* '\mмой\M|\mmy\M'
)
select *
from track;

-- Количество исполнителей в каждом жанре.
select g.name, count(a.artist_id)
from genre g 
join genre_to_artists gta on g.genre_id  = gta.genre_id 
join artists a on gta.artist_id = a.artist_id
group by g.name

-- Количество треков, вошедших в альбомы 2019–2020 годов.
select count(t.name) from track t
join albums a on t.album = a.albums_id 
where a.manufacture  between '2019.01.01' and '2020.12.31';

-- Средняя продолжительность треков по каждому альбому.
select a.name, avg(duration) from track t 
join albums a on t.track_id = a.albums_id 
group by a.name 
order by avg(duration);

-- Все исполнители, которые не выпустили альбомы в 2020 году.
select ar.name_pseudonym from artists ar
where ar.artist_id not in (
    select a.albums_id
    from artists_to_albums ata
    join albums a on ata.albums_id = a.albums_id 
    where a.manufacture between '2020-01-01' and '2020-12-31'
);

-- Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select distinct c.name, a2.name_pseudonym from collection c
join track_to_collection ttc on ttc.collection_id = c.collection_id
join track t on ttc.track_id = t.track_id 
join albums a on t.album = a.albums_id
join artists_to_albums ata on a.albums_id = ata.albums_id
join artists a2 on ata.artist_id = a2.artist_id
where a2.name_pseudonym = 'Lumen';





