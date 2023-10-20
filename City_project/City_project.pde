Building1 building1;
Building2 building2;
Building3 building3;
Road1 road1;
Car car1;
sun sun1;
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
  building1 = new Building1(80,315,150,525,10);
  building2 = new Building2(235,400,150,375,10);
  building3 = new Building3(1350,400,150,525,10);
  //This class is the gray part of the road in my city
  road1 = new Road1(85,725,2708,300,10,200,105,105);
  //Car #1 that will be on the road
  car1 = new Car(5,740,50,30,6);
  car2 = new Car2(1200,600,50,30,9);
  sun1 = new sun(5,200,75,75,3,-1,255,255,0);
}

void draw(){
  //This changes the background of the city to a blue sky like color
  background(timerr,timerg,timerb);
  if (daylightcounter == 0){
  timerr += -0.708;
  timerg += -0.708;
  timerb += -0.708;
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
  road1.drawRoad1();
  car1.drawCar();
  car2.drawCar2();
  if (daylightcounter == 1){
    fill(255);
    sun1.drawsun();
  }
  else if (daylightcounter == 0){
    fill(255,255,0);
    sun1.drawsun();
  }
}
