class Timer
{
  float Time;
  
  Timer(float set)//constructor when you create a new Timer
  {
    Time = set;
  }
  float getTime()//Returns the current time
  {
    return(Time);
  }
 void setTime(float set)// Set the timer to whatever you put as your temporary variable
 {
   Time = set;
 }
 void countUp()//Update the timer by counting up. This needs to be called within the void draw() to work.
 {
   Time += 1/frameRate;
 }
 void countDown()//Update the timer by counting down. This needs to be called within the void draw() to work.
 {
   Time -= 1/frameRate;
 }
}
