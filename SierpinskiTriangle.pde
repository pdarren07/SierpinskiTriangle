int size = 500;

public void setup() {
	size(500, 500);
}

public void draw() {
	size = Math.abs(250 - mouseX) * 2;
	
	background(125);
	sierpinski(width / 2, height * 0, size);
}

public void mouseDragged() {
	size = Math.abs(250 - mouseX) * 2;
}

public void sierpinski(int x, int y, int len) {

	if (len <= 5) {
		//triangle(x, y, x + len, y + len, x - len, y + len);
		fill(255);
	} else {
		triangle(x, y, x-(len/2), y+len, x+(len/2), y+len);
		sierpinski(x,y,len / 2);
		sierpinski(x + len / 4, y + len / 2, len / 2);
		sierpinski(x - len / 4, y + len / 2, len / 2);
	}
}