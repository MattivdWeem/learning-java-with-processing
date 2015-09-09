int wWidth = 800;
int wHeight = wWidth;

size(wWidth, wHeight);

background(#2222FF);
fill(#FFFF00);
stroke(#FFFF00);

line(0, 0, wWidth, wHeight);
line(0, wHeight/2, wWidth, wHeight/2);
line(wWidth/2, 0, wWidth/2, wHeight);
line(0, wHeight, wWidth, 0);


ellipse(wWidth/2, wHeight/2, wWidth/2, wHeight/2);
