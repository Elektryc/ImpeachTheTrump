// Xavier St-Jacques 2-3 ? || Game Project || Impeach The Trump
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
int mode;
PImage Face;
PImage LivesBar;
int lives;
PImage ScoreBar;
int score;
PImage UF;
PImage MF;
PImage GTF;
PImage BTF;
PImage OV;
PImage CR;
float x;
float y;
float vx;
float vy;
float angle;
Minim myMinim;
AudioPlayer music;
AudioPlayer Grab;
int delay;
void setup() {
  
  noCursor();
  delay = 80;
  myMinim = new Minim(this);
  music = myMinim.loadFile("3am.mp3");
  Grab = myMinim.loadFile("grab.mp3");
  size(800,600);
  lives = 11;
  score = 0;
  mode = 1;
  ScoreBar = loadImage("score.jpg");
  LivesBar = loadImage("lives.jpg");
  UF = loadImage("flag.gif");
  MF = loadImage("MF.png");
  GTF = loadImage("GTF.png");
  BTF = loadImage("BTF.png");
  OV = loadImage("OV.jpg");
  CR = loadImage("CR.jpg");
  x = 400;
  y = 300;
  vx = 10;
  vy = -10;
  Face = GTF;
}


void draw() {
  delay++;
  background(255);
  
  if (mode == 1) {
    introScreen();
  }
  
  else if (mode == 2) {
    theGame();
    if(keyPressed) {
    if(key == 'l') {
      lives = 11;
      score = 0;
      Face = GTF;
    }
  }
  }
  else if (mode == 3) {
    gameOver();
    if(keyPressed) {
    if(key == 'l') {
      lives = 11;
      score = 0;
      Face = GTF;
    }
  }
  }
  else if (mode ==4) {
    credits();
  }
  else {
    background(255,0,0);
    
  }
}