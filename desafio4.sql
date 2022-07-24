-- Active: 1656725077704@@localhost@3306@SpotifyClone
SELECT
    u.name AS 'usuario',
    IF (
        YEAR(MAX(reprodution_date)) = 2021,
        'Usuário ativo',
        'Usuário inativo'
    ) AS 'condicao_usuario'
FROM
    `historic` AS h
    INNER JOIN `users` AS u ON h.user_id = u.user_id
GROUP BY
    u.name
ORDER BY
    u.name;