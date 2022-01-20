class Firkant {

  // klassens attributter/ tilstand
  float x, y;
  float o;

    //konstroktøren
    Firkant() {
    this.x = random(600);      // find to tilfældige værdier inden for canvas størrelsen
    this.y = random(400);
    this.o = random(600);
  }

  // klassens metoder

  // tegn firkant på canvas
  void drawFirkant() {
    fill(random(255), random(255), random(255));
    square(x, y, o);
  }
}
