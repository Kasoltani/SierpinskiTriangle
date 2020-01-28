public void setup(){
	size(600,600);
	background(0);
}

public void draw(){
	sierpinski(0, height, 600);
}


public void sierpinski(int x, int y, int len){
	noStroke();
	if(len <= 20){
	 	triangle(x,y,x+len,y,x+len/2,y-len);
	}else{
		if(frameCount % 10 == 0){
			fill(random(0,255),random(0,255),random(0,255));
		}
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
}