public void setup()
{
  size (800, 800);
  background(0);
}
public void draw()
{
  fill(255);
  sierpinski(0, 800, 800); 
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len < 20){
    triangle(x, y, x + len, y, x + len/2, y - len);
  }
  else{
    fill(#39FF14);
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
