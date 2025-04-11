SELECT 
    artist.name,
    al.title,
    tr.name AS title_song,
    tr.composer,
    gr.name AS genre

FROM artist
RIGHT JOIN album al ON artist.artistid = al.artistid
RIGHT JOIN track tr ON al.albumid = tr.albumid
RIGHT JOIN genre gr ON tr.genreid = gr.genreid
AND composer is NOT NULL

