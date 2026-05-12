resource "spotify_playlists" "Bollywood"{
    name = "Bollywood"
    track = ["1331yybV7A3TmC34a0qE8u8"]

}
 data "spotify_search_playlists" "name"{
    artist = "eminem"
 }

resource "spotify_playlists" "slimshady"{
    name = "Slimshady"
    tracks = [data.spotify_search_track.eminem.tracks.[0].id ,
    data.spotify_search_track.eminem.tracks.[1].id,
    data.spotify_search_track.eminem.tracks.[2].id] 
    
}