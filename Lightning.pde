int startX = 200;
int startY = 150;
int endX = 200;
int endY = 150;

void setup()
{
    size(700,300);
    strokeWeight(4);
    background(127);
    textSize(10);
}
void draw()
{
  stroke(0);
  beginShape(); 
  vertex(50,150);
  vertex(200,100);
  vertex(200,200);
  endShape(CLOSE);
  ellipse(200,150,20,100);
 
  while(startX < 700){
    stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    endX += (int)(Math.random()*20);
    endY += (int)((Math.random()*18)-9);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  startX = 210;
  startY = 150 + (int)(Math.random()*18-9);
  endX = 210;
  endY = startY;
}
