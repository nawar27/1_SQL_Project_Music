WITH albums_artist AS (
    SELECT
        artist.artistid AS id,
        albumid,
        name AS band_name,
        title AS title_album
    FROM 
        artist
    RIGHT JOIN
        album ON artist.artistid = album.artistid
    ORDER BY id ASC
    ),

    tracks AS (
    SELECT 
    band_name,
    title_album,
    name,
    composer,
    milliseconds / 1000 as second
        FROM albums_artist
    RIGHT JOIN
        track on albums_artist.albumid = track.albumid
    ORDER BY
    id ASC
    )

SELECT
band_name,
count(DISTINCT title_album) count_album
FROM tracks
GROUP BY band_name
ORDER BY count_album DESC
LIMIT 5