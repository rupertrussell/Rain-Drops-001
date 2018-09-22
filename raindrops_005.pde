// Inspired by http://geometrydaily.tumblr.com/post/56876400759/495-garden-a-new-minimal-geometric-composition
// #495 Garden – A new minimal geometric composition each day
// Random Rain Drops by Rupert Russell
// September 23 2018
// Code on Github at:
// Artwork on Redbubble at: 

float x;
float y;
int max = 200;
int space = 10;
int saveEvery = 500;
int saveCount = 1;

void setup() {
  size(7700, 7700); 
  background(#f3f5f4);
  fill(#f3f5f4);
  stroke(#729287);
  strokeWeight(20);
  // noFill();
}

void draw() {

  x = random(width);
  y = random(height);

  for (int i = (int) random(400, 2000); i > 5; i = i - 150) {
    //  println(i);
    ellipse(x, y, i, i);
  }

  if (frameCount == saveEvery *  saveCount) {
    save(frameCount + ".png");
    saveCount ++;
  }
}

void mouseClicked() {
  // noLoop();
  save("test_" + frameCount + ".png");
}
