int startX = 200;
int startY = 150;
int endX = 200;
int endY = 150;

void setup()
{
    size(700,300);
    strokeWeight(5);
    background(127);
}
void draw()
{
  beginShape();
  stroke(0);
  vertex(50,150);
  vertex(200,100);
  vertex(200,200);
  endShape(CLOSE);
  ellipse(200,150,20,100);
  stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  while(startY < 300){
    endX += (int)(Math.random()*9);
    endY += (int)((Math.random()*18)-9);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  startX = 200;
  startY = 150;
  endX = 200;
  endY = 150;
}
