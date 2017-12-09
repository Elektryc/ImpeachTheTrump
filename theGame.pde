void theGame() {
  if (delay >= 100) {
  Face = GTF;
}
  image(OV,0,0,800,600);
  image(Face,x,y,100,125);
  image(MF,mouseX-5.5,mouseY-5,30,30);
  image(ScoreBar, 10,40);
  image(LivesBar, 600,40,192,64);
  textSize(30);
  text(score, 150,85);
  text(lives, 740,85);
  x = x + vx;
  y = y + vy;
  
  if (y <= -10 || y >= height - 125) {
    vy = -vy;
  }
  if (x <= -10 || x >= width - 95) {
    vx = -vx;
    
  }
  
 
    
  
  
 if(keyPressed) {
    if(key == 'l') {
      mode = 1;
    }
    }
    if (lives == 0) {
      mode = 3;
    }

}