
//declaring my button classes
Button button1;
Button button2;
Button button3;

void setup(){
  size(1442,845);
  //putting my buttons at different locations
  button1 = new Button(200, 300);
}

void draw(){
  background(100,100,100);
  
  button1.drawButton();
  button2.drawButton();
  button3.drawButton();
  
  //this will happen 60 times per sdcond since it's in void draw
  if(mousePressed){
