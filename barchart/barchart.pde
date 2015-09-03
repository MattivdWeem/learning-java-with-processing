/*
  Matti van de weem
  MIT()
*/
// setup
int windowWidth = 800;
int[] values = {300, 230, 380, 200, 320, 100, 20, 4};

// define consts.
int windowHeight = windowWidth/2;
int cellWidth = (windowWidth) /values.length / 2;
int total = 0;

// set window
size(windowWidth, windowHeight);
background(12);
textAlign(CENTER, CENTER);

// loop trough array
for (int i = 0; i < values.length; i++ ) {
  total += values[i];
  fill(random(255), 150, random(255));
  text(values[i], i*(cellWidth/2)+i*cellWidth+cellWidth+(cellWidth/2) + 90, height-values[i]-10);
  rect(i*(cellWidth/2)+i*cellWidth+cellWidth + 90, height-values[i], cellWidth, values[i]);
}


// draw avg.
int avg = total/values.length;

stroke(#ff0000);
fill(#ff0000);
text(avg, 20, height-avg-20);
line(2, height-avg, width, height-avg);
