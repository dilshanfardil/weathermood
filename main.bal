import ballerina/http;

listener http:Listener httpDefaultListener = http:getDefaultListener();

service /MusicMode on httpDefaultListener {
    resource function get playlist(string location) returns string|http:InternalServerError {
        do {
            WetherData wetherResponse = check WetherAPIClient->get(string `/current.json?q=${location}&key=${WETHER_API_KEY}`);
            int weatherCode = wetherResponse.current.condition.code;
            string musicMode = getWeatherMusicMode(weatherCode);
            return musicMode;
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