COPY album
FROM 'D:\Output\1_SQL_Project_Music\csv\Album.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY artist
FROM 'D:\Output\1_SQL_Project_Music\csv\Artist.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY customer
FROM 'D:\Output\1_SQL_Project_Music\csv\Customer.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY employee
FROM 'D:\Output\1_SQL_Project_Music\csv\Employee.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY genre
FROM 'D:\Output\1_SQL_Project_Music\csv\Genre.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY invoice
FROM 'D:\Output\1_SQL_Project_Music\csv\Invoice.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY invoiceline
FROM 'D:\Output\1_SQL_Project_Music\csv\InvoiceLine.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY mediatype
FROM 'D:\Output\1_SQL_Project_Music\csv\MediaType.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY playlist
FROM 'D:\Output\1_SQL_Project_Music\csv\Playlist.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY playlisttrack
FROM 'D:\Output\1_SQL_Project_Music\csv\PlaylistTrack.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY track
FROM 'D:\Output\1_SQL_Project_Music\csv\Track.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');


-- Get the absolute file path of your csv files and change it
-- Find path by right-clicking a CSV file in VS Code and selecting “Copy Path” 
