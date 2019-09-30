int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup()
{
    size(300,300);
    strokeWeight(5);
    background(127);
}
void draw()
{
  stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  while(startX < 300){
    endX += (int)(Math.random()*9);
    endY += (int)((Math.random()*18)-9);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}

