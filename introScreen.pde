void introScreen() {
   image(UF,0,0);
   
if (mousePressed == true ) {
   if ( mouseY > 350 && mouseY < 398 && mouseX > 0 && mouseX < 800) {
    mode = 2;
   }
   if (mouseY > 450 && mouseY < 498 && mouseX > 0 && mouseX < 800) {
     mode = 4;
   }
 }   

//Text
//Start
fill(0);
textSize(48);
text("Start Game",275,388);
//Credits
//text("Credits",325,488);


image(MF,mouseX-5.5,mouseY-5,30,30);
}