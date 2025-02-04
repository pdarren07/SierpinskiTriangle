int a = 0;
int b = height;
color[] pastelColors = {
  color(255, 204, 204), color(255, 229, 204), color(255, 255, 204),
  color(204, 255, 204), color(204, 255, 229), color(204, 255, 255),
  color(204, 229, 255), color(204, 204, 255), color(229, 204, 255),
  color(255, 204, 255), color(255, 204, 229), color(240, 187, 204),
  color(255, 222, 173), color(216, 191, 216), color(173, 216, 230),
  color(152, 251, 152), color(250, 250, 210), color(255, 182, 193),
  color(221, 160, 221), color(176, 224, 230)
};
int c = (int)(Math.random()*20);
boolean blind = false;
public void setup()
{
  size (800, 800);
}
public void draw()
{
  
  a = Math.abs(100 - mouseX)* 2;
  b = (height - a);
  background(0);
  sierpinski(width/2, b, a); 
  sierpinski(-width/2, -b, a);
}
public void mousePressed()//optional
{
  c = (int)(Math.random()*20);
}
public void keyPressed()//optional
{
  if(blind == false)
    blind = true;
  else
    blind = false;
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
    if(blind == true)
      c = (int)(Math.random()*20);
    fill(pastelColors[c]);
    triangle(x, y, x + len, y, x + len/2, y - len);
  }
  else{
    if(blind == true)
      c = (int)(Math.random()*20);
    fill(pastelColors[c]);
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
