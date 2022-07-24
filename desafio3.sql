-- Active: 1656725077704@@localhost@3306@SpotifyClone
SELECT
    name AS 'usuario',
    COUNT(h.song_id) AS 'qtde_musicas_ouvidas',
    ROUND(SUM(s.duration) / 60, 2) AS 'total_minutos'
FROM
    `users` AS u
    INNER JOIN `historic` AS h ON u.user_id = h.user_id
    INNER JOIN `songs` AS s ON s.song_id = h.song_id
GROUP BY
    name
ORDER BY
    name;