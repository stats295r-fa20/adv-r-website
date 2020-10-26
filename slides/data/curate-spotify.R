library(spotifyr)

artist <- get_artist("6vWDO969PvNqNYHIOW5v0m")

name <- artist[["name"]]
followers <- artist[["followers"]][["total"]]
popularity <- artist[["name"]]

artist_top <- get_artist_top_tracks("6vWDO969PvNqNYHIOW5v0m")

