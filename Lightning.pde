int BACKGROUND_X = 300;
int BACKGROUND_Y = 300;
void setup()
{
  size(300,300);
  background(0);
} 
void draw()
{
	int startX=0;
	int startY=150;
	int endX;
	int endY;
	while(startX<BACKGROUND_X){
		endX = startX+(int)(Math.random()*9)+1;
		endY = startY+(int)(Math.random()*19)-9;
		line(startX,startY,endX,endY);
		stroke(255,255,0,150);
		startX=endX;
		startY=endY;
	}
}	
void mousePressed()
{

}

