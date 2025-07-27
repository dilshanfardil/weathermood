import ballerina/http;

final http:Client WetherAPIClient = check new ("https://api.weatherapi.com/v1");
final http:Client SpotifyAPIClient = check new ("https://api.spotify.com/v1");
