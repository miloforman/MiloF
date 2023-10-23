Building1 building1;
Building2 building2;
Building3 building3;
Building4 building4;
Building5 building5;
Building6 building6;
Building7 building7;
Building8 building8;
Road1 road1;
Car car1;
sun sun1;
Stars stars;
Car2 car2;
float timer;
float timerb;
float timerg;
float timerr;
int daylightcounter;


void setup(){
  size(1442,845);
  timer = 0;
  timerb = 255;
  timerg = 200;
  timerr = 115;
  daylightcounter = 0;
  
  //The numbers represent the values of (x,y,w,h,dx) in that order
  building1 = new Building1(80,315,150,525,0);
  building2 = new Building2(235,400,150,375,0);
  building3 = new Building3(1350,400,150,525,0);
  building4 = new Building4(391,450,150,315,0);
  building5 = new Building5(550,450,150,600,0);
  building6 = new Building6(725,450,150,900,0);
  building7 = new Building7(900,450,150,555,0);
  building8 = new Building8(1125,450,285,600,0);
  //This class is the gray part of the road in my city
  road1 = new Road1(85,725,2708,300,10,200,105,105);
  //Car #1 that will be on the road
  car1 = new Car(5,740,50,30,6);
  car2 = new Car2(1200,600,50,30,9);
  sun1 = new sun(5,200,75,75,3,-1,255,255,0);
  stars = new Stars(10,10,30,30,255,255,255);
}

void draw(){
  //This changes the background of the city to a blue sky like color
  //timerr,timerb, and timerg all represent the values of red blue and green depending on what value the timer is at
  background(timerr,timerg,timerb);
  if (daylightcounter == 0){
  timerr += -0.708;
  timerg += -0.708;
  timerb += -0.708;
  //The daylightcounter at 1 represents nighttime, and 0 daytime
  if (timerb < 0){
    daylightcounter = 1;
  }
  
  }
  else if (daylightcounter == 1){
  timerr += 0.708;
  timerg += 0.708;
  timerb += 0.708;
  if (timerb > 255){
    daylightcounter = 0;
  }
  }
  building1.drawBuilding1();
  building2.drawBuilding2();
  building3.drawBuilding3();
  building4.drawBuilding4();
  building5.drawBuilding5();
  building6.drawBuilding6();
  building7.drawBuilding7();
  building8.drawBuilding8();
  road1.drawRoad1();
  car1.drawCar();
  car2.drawCar2();
  //This if statement changes the sun to a moon depending on the value of the daylightcounter variable
  if (daylightcounter == 1){
    fill(255);
    sun1.drawsun();
  }
  else if (daylightcounter == 0){
    fill(255,255,0);
    sun1.drawsun();
  }
    if (daylightcounter ==1){
      fill(255);
      stars.drawStars();
    }
    else if (daylightcounter == 0){
    
  }
}
