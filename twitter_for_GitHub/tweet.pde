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
