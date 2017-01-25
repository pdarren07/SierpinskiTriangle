int size = 0;
int posY = height/2;

public void setup() {
	size(500, 500);
}

public void draw() {
	size = Math.abs(250 - mouseX)* 2;
	posY = (height - size) / 2;

	background(125);
	sierpinski(width / 2, posY, size);
}


public void sierpinski(int x, int y, int len) {

	if (len <= 5) {
		fill(255);
	} else {
		triangle(x, y, x-(len/2), y+len, x+(len/2), y+len);
		sierpinski(x,y,len / 2);
		sierpinski(x + len / 4, y + len / 2, len / 2);
		sierpinski(x - len / 4, y + len / 2, len / 2);
	}
}