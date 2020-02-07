private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(255);   
	stroke(0,119,87);   
	line(320,480,320,380);
	drawBranches(320,380,100,(3*Math.PI/2));    
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1 = angle + Math.random()+.02;
	double angle2 = angle - Math.random()-.02;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	int endX3 = (int)(branchLength*Math.cos(angle) + x);
	int endY3 = (int)(branchLength*Math.sin(angle) + y);
	line(x,y,endX1,endY1);
	line(x,y,endX2,endY2);
	line(x,y,endX3,endY3);
	if(branchLength > 5){
		drawBranches(endX1,endY1,branchLength*3/4,angle1);
		drawBranches(endX2,endY2,branchLength*3/4,angle2);
		drawBranches(endX3,endY3,branchLength*2/4,angle);
	}    
} 
