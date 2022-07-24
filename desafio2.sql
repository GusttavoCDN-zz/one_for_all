-- Active: 1656725077704@@localhost@3306@SpotifyClone
SELECT
    (
        SELECT
            COUNT(*)
        FROM
            `songs`
    ) AS 'cancoes',
    (
        SELECT
            COUNT(*)
        FROM
            `artists`
    ) AS 'artistas',
    (
        SELECT
            COUNT(*)
        FROM
            `albums`
    ) AS 'albuns';