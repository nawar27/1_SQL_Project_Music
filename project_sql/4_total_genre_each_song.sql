SELECT 
    name,
    title,
    title_song,
    genre
FROM (
    SELECT 
        artist.name,
        al.title,
        tr.name AS title_song,
        gr.name AS genre,
        ROW_NUMBER() OVER (PARTITION BY gr.name ORDER BY RANDOM()) AS rn
    FROM artist
    RIGHT JOIN album al ON artist.artistid = al.artistid
    RIGHT JOIN track tr ON al.albumid = tr.albumid
    RIGHT JOIN genre gr ON tr.genreid = gr.genreid
) AS sub
WHERE rn = 1