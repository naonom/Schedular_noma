import twitter4j.*;
import twitter4j.api.*;
import twitter4j.auth.*;
Twitter twitter;

import twitter4j.conf.*;
import twitter4j.json.*;
import twitter4j.management.*;
import twitter4j.util.*;
import twitter4j.util.function.*;

String consumerKey = "";
String consumerSecret = "";
String accessToken = "";
String accessTokenSecret = "";

ArrayList<Tweet> tweets;

void setup() {
  size(400, 800);
  tweets = new ArrayList();
  ConfigurationBuilder builder = new ConfigurationBuilder();
  builder.setOAuthConsumerKey(consumerKey);
  builder.setOAuthConsumerSecret(consumerSecret);
  builder.setOAuthAccessToken(accessToken);
  builder.setOAuthAccessTokenSecret(accessTokenSecret);
  TwitterFactory factory = new TwitterFactory(builder.build());
  twitter = factory.getInstance();
}

void draw() {
  background(255);
  fill(0);
  
  if ( millis() / 1000  % 120 == 0){
    updateTimeLine();
  }
  
  String pointed = null;
  for (int i = 0; i < tweets.size(); i++) {
    Tweet t = tweets.get(i);
    //String line [] = pointed;
    //int n = height / t.profileImage.height;
    float x = 10;
    float y = 0 + 60 * i;
    image(t.profileImage, x, y);
    if (x < mouseX && mouseX < x + t.profileImage.width && y < mouseY && mouseY < y + t.profileImage.height) {
      pointed = t.name + " @" + t.screenName + "\n" + t.text;
    }
  }
  
  if (pointed != null) {
    text(pointed, 60, mouseY, 200, 200);
  }
}
