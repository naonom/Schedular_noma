class Twitter_main {
  String consumerKey = "___";
  String consumerSecret = "___";
  String accessToken = "___";
  String accessTokenSecret = "___";

  Twitter_main() {
    tweets = new ArrayList();
    ConfigurationBuilder builder = new ConfigurationBuilder();
    builder.setOAuthConsumerKey(consumerKey);
    builder.setOAuthConsumerSecret(consumerSecret);
    builder.setOAuthAccessToken(accessToken);
    builder.setOAuthAccessTokenSecret(accessTokenSecret);
    TwitterFactory factory = new TwitterFactory(builder.build());
    twitter = factory.getInstance();
  }

  void display(float n) {
    fill(0);
    String pointed = null;
    for (int i = 0; i < tweets.size(); i++) {
      Tweet t = tweets.get(i);
      //String line [] = pointed;
      //int n = height / t.profileImage.height;
      float x = 10 + n;
      float y = 30 + 60 * i;
      image(t.profileImage, x, y);
      if (x < mouseX && mouseX < x + t.profileImage.width && y < mouseY && mouseY < y + t.profileImage.height) {
        pointed = t.name + " @" + t.screenName + "\n" + t.text;
      }
    }
    if (pointed != null) {
      textSize(20);
      text(pointed, 60 + n, mouseY, 200, 200);
    }
  }
}

void updateTimeLine() {
  try {
    ResponseList<Status> result;
    if (tweets.size() > 0) {
      Paging p = new Paging(tweets.get(0).id);
      result = twitter.getHomeTimeline(p);
    } else {
      result = twitter.getHomeTimeline();
    }
    ArrayList<Tweet> temp = new ArrayList();
    for (int i = 0; i < result.size(); i++) {
      temp.add(new Tweet(result.get(i)));
    }
    tweets.addAll(0, temp);
  }
  catch(TwitterException e) {
    println("Error occured while trying to get the timeline.");
  }
}

void tweet(String text) {
  try {
    twitter.updateStatus(text);
  }
  catch(TwitterException e) {
    println("Error occured while trying to tweet.");
  }
}

class Tweet {
  long id;
  String text;
  String name;
  String screenName;
  PImage profileImage;
  public Tweet(Status s) {
    id = s.getId();
    text = s.getText();    
    User u = s.getUser();
    name = u.getName();
    screenName = u.getScreenName();
    profileImage = loadImage(u.getProfileImageURL());
  }
}

  
