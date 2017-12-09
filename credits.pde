void credits() {
  image(CR,0,0);
  fill(255);
  text("L for Exit",10,50);
  
  if(keyPressed) {
    if(key == 'l') {
      mode = 1;
    }
    
  }
}