-- Active: 1656725077704@@localhost@3306@SpotifyClone
SELECT
    a.name AS 'artista',
    al.album,
    COUNT(f.following_artist) AS 'seguidores'
FROM
    `albums` AS al
    INNER JOIN `artists` AS a ON a.artist_id = al.artist_id
    INNER JOIN `followers` AS f ON f.following_artist = a.artist_id
GROUP BY
    a.name,
    al.album
ORDER BY
    seguidores DESC,
    a.name,
    al.album;