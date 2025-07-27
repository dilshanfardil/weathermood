import ballerina/http;

final http:Client WetherAPIClient = check new ("https://api.weatherapi.com/v1");
final http:Client SpotifyAPIClient = check new ("https://api.spotify.com/v1", auth = {
    tokenUrl: "https://accounts.spotify.com/api/token",
    clientId: SPOTIFY_BIPROJECT_CLIENT_ID,
    clientSecret: SPOTIFY_BIPROJECT_CLIENT_SECRET
});
