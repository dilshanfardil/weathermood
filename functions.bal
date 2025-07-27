function getWeatherMusicMode(int weatherCode) returns string {
    
    // Clear/Sunny conditions (code: 1000)
    if (weatherCode == 1000) {
        return "Upbeat Sunshine";
    }
    
    // Partly cloudy (code: 1003)
    if (weatherCode == 1003) {
        return "Mellow Vibes";
    }
    
    // Cloudy and Overcast (codes: 1006, 1009)
    if (weatherCode == 1006 || weatherCode == 1009) {
        return "Contemplative Mood";
    }
    
    // Mist and Fog (codes: 1030, 1135, 1147)
    if (weatherCode == 1030 || weatherCode == 1135 || weatherCode == 1147) {
        return "Atmospheric Ambience";
    }
    
    // Light rain conditions (codes: 1063-1183)
    if (weatherCode >= 1063 && weatherCode <= 1183) {
        return "Cozy Drizzle";
    }
    
    // Moderate to heavy rain (codes: 1186-1201)
    if (weatherCode >= 1186 && weatherCode <= 1201) {
        return "Stormy Blues";
    }
    
    // Snow conditions (codes: 1210-1258)
    if (weatherCode >= 1210 && weatherCode <= 1258) {
        return "Winter Serenity";
    }
    
    // Thunderstorms (codes: 1087, 1273-1282)
    if (weatherCode == 1087 || (weatherCode >= 1273 && weatherCode <= 1282)) {
        return "Electric Energy";
    }
    
    // Sleet and ice conditions (codes: 1204-1207, 1249-1264)
    if ((weatherCode >= 1204 && weatherCode <= 1207) || (weatherCode >= 1249 && weatherCode <= 1264)) {
        return "Chill Beats";
    }
    
    // Blizzard and severe snow (codes: 1114, 1117, 1225)
    if (weatherCode == 1114 || weatherCode == 1117 || weatherCode == 1225) {
        return "Intense Storm";
    }
    
    // Heavy rain showers (codes: 1240-1246)
    if (weatherCode >= 1240 && weatherCode <= 1246) {
        return "Rhythmic Rain";
    }
    
    // Default case for any other conditions
    return "Adaptive Harmony";
}