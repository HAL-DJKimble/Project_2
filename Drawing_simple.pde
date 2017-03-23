void setup() {
size(500,500);
strokeWeight(1);
background(255,255,255);
}
void draw() {
 fill(0,0,0);
    stroke(0,0,0);
  if(mousePressed) {
    fill(255,255,255);
    stroke(255,255,255);
    ellipse(mouseX,mouseY, 30,30);
  }
  ellipse(mouseX,mouseY,10,10);
  
}