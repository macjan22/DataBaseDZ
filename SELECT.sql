select name, duration from track
where duration = (select max(duration) from track);

