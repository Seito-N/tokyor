-- !preview conn=DBI::dbConnect(RSQLite::SQLite(), "chinook.db")

/*SELECT
  tracks
  --Name
  , Composer
  , Milliseconds
  , Milliseconds / 1000 AS Seconds
  
FROM
  tracks

WHERE
  --Composer IN ("Queen", "Brian May")
  --Composer = "Queen"
  --AND Milliseconds BETWEEN 4*60*1000 AND 5*60*1000

ORDER BY
  Seconds DESC*/
  
SELECT
  tracks.Name AS track_Name
  , albums.Title AS albums_Title
  , artists.Name AS artist_Name
FROM
  tracks
LEFT JOIN
  albums
  ON tracks.AlbumId = albums.AlbumId
LEFT JOIN
  artists
  ON albums.ArtistId = artists.ArtistId