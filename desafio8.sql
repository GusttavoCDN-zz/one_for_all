-- Active: 1656725077704@@localhost@3306@SpotifyClone
SELECT
    a.name AS 'artista',
    al.album
FROM
    `artists` AS a
    INNER JOIN `albums` AS al ON a.artist_id = al.artist_id
WHERE
    a.name = 'Walter Phoenix'
ORDER BY
    al.album ASC;