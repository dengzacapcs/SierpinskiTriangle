public void setup()
{
	size(1000,1000);
}
public void draw()
{
	sierpinski(500,500,300);
}
public void mouseDragged()//optional
{
}
public void equilateral(float x, float y, float len){
  triangle(x, y, x+len/2, (float)(y+len*Math.sqrt(3)/2), x-len/2, (float)(y+len*Math.sqrt(3)/2));
}
public void sierpinski(float x, float y, float len) 
{
	if (len <= 50)
		equilateral(x, y, len);
	else {
		sierpinski(x, y, len/2);
		sierpinski(x-len/4, y + len/2, len/2);
		sierpinski(x+len/4, y + len/2, len/2);
	}
}