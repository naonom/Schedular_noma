class Weather {
  String baseURL = "http://weather.livedoor.com/forecast/webservice/json/v1?city=";
  String city = "017010";
  String title;
  JSONArray forecasts;
  String s1 = null;
  PImage webImage;


  Weather() {
    JSONObject w = loadJSONObject(baseURL + city);
    title = w.getString("title");
    forecasts = w.getJSONArray("forecasts");
  }

  void display(int x, int y) {
    fill(0);
    JSONObject f = forecasts.getJSONObject(0);
    String s =  f.getString("telop");
    String s1 = "  ";
    String s2 = "  ";
    JSONObject t = f.getJSONObject("temperature");
    if (!t.isNull("min")) {
      String d = t.getJSONObject("min").getString("celsius");
      s1 = s1 + "最低気温　" + d + "℃";
    }else if(t.isNull("min")){
      s1 = s1 + "最低気温　";
    if (!t.isNull("max")) {
      String d = t.getJSONObject("max").getString("celsius");
      s2 = s2 + "最高気温　" + d + "℃";
    }else if(t.isNull("max")){
      s2 = s2 + "最高気温　";
    }
    }
    JSONObject i = f.getJSONObject("image");
    String url = i.getString("url"); 
    webImage = loadImage(url, "png");

    text(title, x, y);
    image(webImage, x - 5, y + 10, 100, 70);
    textSize(20);
    text(s, x + 120, y + 35);
    text(s1, x + 100, y + 65);
    text(s2, x + 100, y + 95);
  }
}
