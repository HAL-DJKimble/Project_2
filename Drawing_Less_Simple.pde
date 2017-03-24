int s = 10;
int r = 0;
int g = 0;
int b = 0;
//above are variables for size and each RGB value.

void setup() {
size(750,750);
strokeWeight(1);
background(227, 234, 244);
frameRate(100);
smooth();
}
void draw() {
  fill(r,g,b);
    stroke(r,g,b);
  if(mousePressed) {
    fill(227, 234, 244);
    stroke(227, 234, 244);
  }
  if (keyPressed == true) {
    if(key == 'w'){
    fill(random(37), random(100), random(100));
    stroke(random(137), random(100, random(100)));
    //this is for random colors
    }
    if(key == 'a'){
    s = s-1;
    }
    if(key == 'd') {
    s = s+1;
    }
    if(key == 's'){
      s = 10;
      //resets size
    }
    if(key == 'q'){
      s=0;
      //no pointer, so you don't have to erase to not draw.
    }
    
    if(key == '2'){
    r=r-5;
    r = r;
    //decrease red
    }
    if(key == '3'){
      g = g+5;
      g = g;
      //increase green
    }
    if(key == '4'){
      g=g-5;
      g =g;
      //decrease green
    }
    if(key == '5'){
      b = b+5;
      b = b;
      //blue up
    }
    if(key == '6'){
      b = b-5;
      b = b;
      //blue down
    }
    if(key == '1'){
      r = r+5;
      r = r;
    }
    if(key == 'z'){
      background(227, 234, 244);
      //RESET BUTTON
    }
  }
  //below are the color bounds. This stops a glitch where color values... 
  //...are too high or too low to ever change again.
  if(r>255){
    r=255;
  }
  if(r<0){
    r=0;
  }
  if(g>255){
    g = 255;
  }
  if(g<0){
    g=0;
  }
  if(b>255){
    b = 255;
  }
  if(b<0){
    b = 0;
  }
  //END COLOR BORDERS
  ellipse(mouseX,mouseY,s,s);
}