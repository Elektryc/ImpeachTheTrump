void gameOver() {
 image(MF,mouseX-5.5,mouseY-5,30,30);
  if(keyPressed) {
    if(key == 'l') {
      mode = 1;
    }
  }
}