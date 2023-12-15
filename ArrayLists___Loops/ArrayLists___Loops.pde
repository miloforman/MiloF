ArrayList<Star> FBlockList;
PImage img;

void setup(){
  size(1000,1000);

  FBlockList = new ArrayList<Star>();
  for(int i = 0; i < 20; i++){
    FBlockList.add(new Star(i * 100,i * 100,50,50)); //making x a normal number and y staying as i*100, allows for the stars to be put in a vertical order,
    //as the y value is changing depending on the object/star. Vice versa applies if you wanted to have the stars in rows (normal y) rather than collumns(normal x)
    
    //The "i*100 in place of x and y respectively, allows the x and y coordinate of where the star is
    //placed on the plane to be changed by 100 each star. (Example, star(0) will be at 0,0 -- star(1) will be at 100,200 -- star(2) will be at 200 400,
    //star(3) at 300,600 etc...
  }
  img = loadImage("circle.jpeg");

}
void draw(){
  background(100);
  for(int i = 0; i < FBlockList.size(); i++){ //FBlockList.size is the code that updates the the size/amount of things in a list. 
  //ie: AList = [a,b,c,d] == 4 ----> AList = [a,b,c,d,e] == 5
   if(random(0,100) < 15) {
      FBlockList.get(i).changeSize();
    }
    FBlockList.get(i).drawStar();
    //The ".get(i)" code allows stars 0-20 to be drawn. ".get(i).draw();" ----> ".get(0).draw();" -- ".get(1).draw();" -- ".get(2).draw();" ...etc.
  }
}
