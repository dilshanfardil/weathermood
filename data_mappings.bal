function transform(WetherData WeatherData, SpotifyPlayList SpotifyData) returns MusicSuggestion => {
    location: WeatherData.location.name,
    weather: WeatherData.current.condition.text,
    musicMode: getWeatherMusicMode(WeatherData.current.condition.code),
    playList: from var itemsItem in SpotifyData.playlists.items
        select {
            name: itemsItem?.name ?: "",
            url: itemsItem?.external_urls?.spotify ?: "",
            artist: itemsItem?.owner?.display_name ?: ""
        }
};