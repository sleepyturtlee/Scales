public void setup() {
  size(400, 400);
  noLoop();
}
public void draw() {
  background(8, 32, 212);
  // loop
  boolean shift = true;
  for (int y = 1; y < 500; y += 35) {
    for (int x = 500; x > -50; x -= 40) {
      if(shift == true) {
        diamondScale(x, y - 10);
      } else {
        diamondScale(x, y);
      }
      if(shift == true) {
        shift = false;
      } else {
        shift = true;
      }
    }
  }
}
void diamondScale(int x1, int y1) {
  // x of peak of triangle on both ends
  int x2 = x1 + 40;
  // y of peak of top tri
  int y2TopTri = y1 - 25;
  // y of peak of bot tri
  int y2BotTri = y1 + 25;
  // x of top tri end
  int x3TopTri = x1 + 80;
  // x of bot tri end (longer than top tri end)
  int x3BotTri= x1 + 90;
  
  // scale color
  int colorG = 0;
  // make the scales
  while (y2TopTri < y1) {
    stroke(0, colorG, 255);
    triangle(x1, y1, x2, y2TopTri, x3TopTri, y1);
    triangle(x1, y1, x2, y2BotTri, x3BotTri, y1);
    // draw the scales towards the center to create gradient, in pixel increments
    y2TopTri ++;
    y2BotTri --;
    // make it more blue
    colorG += 255 / 30.0;
  }
}
