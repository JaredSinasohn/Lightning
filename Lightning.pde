int BACKGROUND_X = 500;
int BACKGROUND_Y = 500;
void setup()
{
  size(500,500);
  background(0);
  for(int i=0; i<BACKGROUND_X; i++){
  	ellipse((int)random(0,BACKGROUND_X),(int)random(0,BACKGROUND_Y/2),1,1);
  	fill(200);
  	stroke(200);
  }
} 
int startX=BACKGROUND_X/2+(int)(Math.random()*BACKGROUND_X/4)-BACKGROUND_X/8;
int startY=0;
void draw()
{
	int endX;
	int endY;
	while(startY<BACKGROUND_Y*3/4){
		strokeWeight(3);
		stroke(255,255,0);
		endY = startY+(int)(Math.random()*9)+1;
		endX = startX+(int)(Math.random()*19)-9;
		if(endY>BACKGROUND_Y*3/4){
			endY = BACKGROUND_Y*3/4;
		}
		line(startX,startY,endX,endY);
		strokeWeight(3);
		stroke(255,255,0);
		startX=endX;
		startY=endY;
	}
	fill(0,200,0);
  	stroke(0,200,0);
  	rect(0,BACKGROUND_Y*3/4,BACKGROUND_X,BACKGROUND_Y/4);
  	for(int j = 0; j<5; j++){
  		fill(150);
  		stroke(150);
  		ellipse(BACKGROUND_X/2-75+(j*37.5),15,75,75);
  	}
}	
void mousePressed()
{
	startX=BACKGROUND_X/2+(int)(Math.random()*BACKGROUND_X/4)-BACKGROUND_X/8;
	startY=0;
}