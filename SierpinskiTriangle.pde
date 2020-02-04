public void setup()
{
	size(500,500);
	background(0);
}
public void draw()
{
	fill(255);
	noStroke();
	sierpinski(50 , 450, 400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len <= 20)
	{
		triangle(x, y, x+len, y, x+len/2, y-len/2);
	}
	else
	{
		sierpinski(x , y , len/2);
		sierpinski(x+len/2, y , len/2);
		sierpinski(x , y-len/2, len/2);
	}
}