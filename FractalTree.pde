private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .5;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(135,206,235);   
	stroke(0,255,0);   
	line(320,480,320,280);   
	drawBranches(320,280,100,3*Math.PI/2);  //will add later 
} 
public void KeyPressed()
{
	if(key == 'a')
	{
	}
}
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1,angle2;  
	angle1 = angle + branchAngle;
	angle2= angle - branchAngle;
	branchLength = branchLength * fractionLength; 
	int endX1,endY1,endX2,endY2;
	endX1 = (int)(branchLength*Math.cos(angle1) + x);
	endY1 = (int)(branchLength*Math.sin(angle1) + y);
	endX2 = (int)(branchLength*Math.cos(angle2) + x);
	endY2 = (int)(branchLength*Math.sin(angle2) + y);
	//stroke(random(256),random(256),random(256));
	stroke(112, 141, 19);
	line(x,y,endX1,endY1);
	line(x,y,endX2,endY2);
	fill(96,128,56);
	stroke(0);
	rect(0,440,640,40);
	if(branchLength > smallestBranch)
	{
		drawBranches(endX1,endY1,branchLength,angle1);
		drawBranches(endX2,endY2,branchLength,angle2);
	}
} 
