/**  
  Matti van de Weem  
  MIT

**/

int totalCount = 0;
// eerste frame, setup
void setup(){
  frameRate(15);
  size(800,600);
  background(255,0,0);
  drawText();
 
}

// herhaling elk frame
void draw(){
   
  for (int i = 0; i < random(40); i++) {
    
    textSize(random(200));
    fill(int(random(255)), 0, 0, int(random(255)));
    text("♥", random(width), random(height));
     totalCount ++;
     println(totalCount);
     if (totalCount > 150){
       drawText();
       
       totalCount = 0;
     }
  }
}

void drawText(){
  textSize(40);
  textAlign(CENTER,CENTER);
  fill(255, 255, 255, int(random(255)));
  text("awww ♥ yisshh", width/2, height/2);
}

/**

  Void         = '(function)' zonder return type
  void draw    = functie die elk frame herhaald
  void setup   = functie die bij de setup van het script 1
                 maal gedraaid word
           
           
   Random maakt een float
    int(...) typecast naar int :')   
    
    RGBA 
    
    Rood = 255 max
    0 0 
    A 
    
    rood 0/255
    alpha 0/255
                
**/

