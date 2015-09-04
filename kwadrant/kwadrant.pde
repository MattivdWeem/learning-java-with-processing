int windowWidth = 800;
int windowHeight = windowWidth/2;

size(windowWidth, windowHeight);

line(0, height/2, width, height/2);
line(width/2,0, width/2, height);
line(0, height-1, width, height-1);
line(width-1, 0, width-1, height);
line(0, 0, width, 0);
line(0, 0, 0, height);


noStroke();
fill(255,0,0);
rect(1, 1, windowWidth/2-1, windowHeight/2-1);

fill(0,255,0);
rect(windowWidth/2 + 1, windowHeight/2 +1 , windowWidth/2 -2, windowHeight/2 -2);

fill(0,0, 255);
rect(windowWidth/2 + 1, 1 , windowWidth/2 -2, windowHeight/2 -1);

fill(144,24, 255);
rect(1, windowHeight/2 +1 , windowWidth/2 -1, windowHeight/2 -2);
