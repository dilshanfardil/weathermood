
type Location record {|
    string name;
    string region;
    string country;
    decimal lat;
    decimal lon;
    string tz_id;
    int localtime_epoch;
    string localtime;
|};

type Condition record {|
    string text;
    string icon;
    int code;
|};

type Current record {|
    int last_updated_epoch;
    string last_updated;
    int temp_c;
    decimal temp_f;
    int is_day;
    Condition condition;
    decimal wind_mph;
    decimal wind_kph;
    int wind_degree;
    string wind_dir;
    int pressure_mb;
    decimal pressure_in;
    decimal precip_mm;
    decimal precip_in;
    int humidity;
    int cloud;
    decimal feelslike_c;
    decimal feelslike_f;
    decimal windchill_c;
    decimal windchill_f;
    decimal heatindex_c;
    decimal heatindex_f;
    int dewpoint_c;
    decimal dewpoint_f;
    int vis_km;
    int vis_miles;
    int uv;
    decimal gust_mph;
    decimal gust_kph;
|};

type WetherData record {|
    Location location;
    Current current;
|};
