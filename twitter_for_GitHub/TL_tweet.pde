 
void keyPressed() {
  tweet("aisu");
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
