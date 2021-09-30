int r =-300;
  
void setup() {
    size(400, 600);//sætter størrelsen på canvas
}

  void draw() {//for den til at blive ved med at dreje rundt
    background(225);//gør baggrunden hvid

    translate(200+r, 300);
    r++;
    if (r>300) {
      r=-300;
    }

    for (int i=1; i<width+600; i++) {

      if (i % 600==0) {
        drawWheel(i-600, 0);
      }
    }
  }
  void drawWheel(int x, int y){
    pushMatrix();
    rotate(frameCount/30.0);
    circle(x+0,y-0, 150);
    strokeWeight(9);// Thicker
    line(x+0, y-(-75),x+0,y-75);
    line(x+(-70),y-( -25),x+70, y-30);
    line(x+(-70),y-30,x+70,y-(-25));
    popMatrix();
  }
