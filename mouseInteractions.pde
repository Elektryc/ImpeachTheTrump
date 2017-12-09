void mouseReleased() {
if (mode == 2) {
  if( mouseY > y && mouseY < y+125 && mouseX > x && mouseX < x+100 && delay > 100) {
      score = score + 1;
      Grab.rewind();
      Grab.play();
      vx = vx + random(-5,5);
      vy = vy + random(-5,5);
      delay = 0;
      Face = BTF;
    
  }
    
    else {
      lives = lives - 1;
    }
}


}