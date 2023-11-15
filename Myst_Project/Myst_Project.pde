//INSTRUCTIONS:

//THE GOAL OF THE GAME IS TO SURVIVE AS LONG AS POSSIBLE WITHOUT GETTING HIT BY A RED BALL
//IF YOU'RE HIT WITH A RED BALL, YOU'LL BE PROMPTED TO RESET THE GAME TO THE BEGINNING.
//AFTER YOU ARE HIT WITH A RED BALL, YOUR TIME OF SURVIVAL WILL BE SHOWN ON SCREEN.
//CLICK AND HOLD ON YOUR CHARACTER (THE GREEN BALL), AND DO YOUR BEST TO AVOID THE RED BALLS.

//ALSO; Mr. Klett, my old game had some major issues, so I spent the last day and a half
// completely re-doing my game. Although I didn't meet with you, I tried my best to add
// comments that explain my understanding of the code that I used various websites such
// as; https://processing.org/ . I took inspiration from one of my childhood mobile games
// "Ballz". I hope you enjoy the game - Milo

int menu = 0;
/*
0 main menu
1 game play
2 end game
*/

Button StartButton;
Button ResetButton;

int playerSize = 100;
Timer gameTime = new Timer(0);
ArrayList<Ball> DodgeBalls = new ArrayList<Ball>(); //Arraylists make objects able to be resized, added, and taken away easily in this code, it allows for various different balls to be made using the "ArrayList" as sort of a list of all of the various different ball objects within the game.
boolean GameOver = false;

Timer levelTime = new Timer(5);
int levelNumber =1;

void setup()
{
  size(600,600);
  StartButton = new Button(250,350,100,50,"Start",0,200,200);
  ResetButton = new Button(250,450,100,50,"Reset",0,200,200);
}
void draw()
{
  background(0);
  switch(menu)
  {
    case 0: // main menu
    {
      fill(255);
      textSize(30);
      textAlign(CENTER,CENTER);
      text("Avoid The Red Balls!",width/2,100);
      StartButton.update();
      StartButton.render();
      if(StartButton.isClicked())
      {
        menu =1;
        levelNumber =1;
        levelTime.setTime(5);
        DodgeBalls = new ArrayList<Ball>();
        DodgeBalls.add(new Ball(random(0,width),10,20,100,255,0,0));
        gameTime.setTime(0);
        GameOver = false;
      }
    }
    break;
    case 1: //Game play
    {
      if(GameOver == true)
      {
        menu =2;
      }
      gameTime.countUp();
      levelTime.countDown();
      fill(255);
      text("Time Played: " + int(gameTime.Time),width/2,20);
      text("Level: " + levelNumber + "Next Level In: " + int(levelTime.Time),width/2,50);
      fill(0,200,0);
      ellipse(mouseX,mouseY,playerSize,playerSize);
      
      if(levelTime.Time<=0)
      {
        levelNumber++;
        levelTime.setTime(5);
        DodgeBalls.add(new Ball(random(0,width),10,20,100,255,0,0));
      }
      
      for(Ball temp: DodgeBalls)
      {
        temp.update();
        temp.render();
        if(temp.Pos.dist(new PVector(mouseX,mouseY))<=(temp.Size/2+playerSize/2))
        {
          GameOver = true;
        }
      }
      
    }
    break;
  case 2: //End Game
    {
      fill(255);
      text("You Lost: " + gameTime.Time,width/2,100);
      ResetButton.update();
      ResetButton.render();
      if(ResetButton.isClicked())
      {
        menu =0;
      }
    }
  break;
  }
}
