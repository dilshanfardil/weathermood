import ballerina/http;
import ballerina/log;

listener http:Listener httpDefaultListener = http:getDefaultListener();

service /MusicMode on httpDefaultListener {
    resource function get playlist(string location) returns json|http:InternalServerError {
        do {
            WetherData wetherResponse = check WetherAPIClient->get(string `/current.json?q=${location}&key=${WETHER_API_KEY}`);

            log:printInfo("Condition : " + wetherResponse.current.condition.text);
            log:printInfo("Code : " + wetherResponse.current.condition.code.toString());

            int weatherCode = wetherResponse.current.condition.code;
            string musicMode = getWeatherMusicMode(weatherCode);

            log:printInfo("Music Mode : " + musicMode);

            SpotifyPlayList spotifyResponse = check SpotifyAPIClient->get(string `/search?q=${musicMode}&type=playlist`);

            log:printInfo("Spotify PlayList : " + spotifyResponse.toString());

            return transform(wetherResponse, spotifyResponse);
        } on fail error err {
            return <http:InternalServerError>{
                body: {
                    message: "Failed to fetch weather data or determine music mode",
                    details: err.message()
                }
            };
        }
    }
}
