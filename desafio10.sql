-- Active: 1656725077704@@localhost@3306@SpotifyClone
SELECT s.song AS 'nome', COUNT(h.song_id) AS 'reproducoes' FROM `songs` AS s
INNER JOIN `historic` AS h ON s.song_id = h.song_id
INNER JOIN `users` AS u ON u.user_id = h.user_id
WHERE u.plan_id IN (2, 4)
GROUP BY s.song
ORDER BY s.song;