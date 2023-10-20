
Car car1;
Car car2;
Car car3;


void setup(){
  size(1600,900);
  car1 = new Car(800,450,5,5,2);
  car2 = new Car(200,200,5,5,2);
  car3 = new Car(250,600,5,5,2);
}

void draw(){
  background(100);
  car1.drawCar();
  car2.drawCar();
  car3.drawCar();
}
