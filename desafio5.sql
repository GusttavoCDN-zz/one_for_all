-- Active: 1656725077704@@localhost@3306@SpotifyClone
SELECT s.song AS 'cancao', COUNT(h.song_id) AS 'reproducoes' FROM `songs` AS s
INNER JOIN `historic` AS h ON s.song_id = h.song_id
GROUP BY s.song
ORDER BY reproducoes DESC, s.song
LIMIT 2;