-- Active: 1656725077704@@localhost@3306@SpotifyClone
SELECT
    song as 'nome_musica',
    CASE
        WHEN song = "Dance With Her Own" THEN REPLACE(song, 'Her Own', 'Trybe')
        WHEN song = "Let's Be Silly" THEN REPLACE(song, 'Silly', 'Nice')
        WHEN song = "Magic Circus" THEN REPLACE(song, 'Circus', 'Pull Request')
        WHEN song = "Troubles Of My Inner Fire" THEN REPLACE(song, 'Inner Fire', 'Project')
        WHEN song = "Without My Streets" THEN REPLACE(song, 'Streets', 'Code Review')
    END as novo_nome
FROM
    `songs`
WHERE
    song = "Dance With Her Own"
    OR song = "Let's Be Silly"
    OR song = "Magic Circus"
    OR song = "Troubles Of My Inner Fire"
    OR song = "Without My Streets"
ORDER BY
    song;