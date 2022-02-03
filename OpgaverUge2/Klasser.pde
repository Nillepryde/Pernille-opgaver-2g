// initiering af variablen f
Firkant f;
Circle c;
Rektangel r;
Trekant t;
int whatShape=0;

void setup() {
  size (600, 400);
  frameRate(5);
}

void draw() {
  // initiering af objektet f
  f = new Firkant();
  c = new Circle();
  r = new Rektangel();
  t = new Trekant();
  // kald metoden generate som laver en tilfældig x og y pos
  //f.generate();
  // tegner firkanten på canvas
  if (whatShape==0) {
    f.drawFirkant();
  } else if (whatShape==1) {
    c.drawCircle();
  } else if (whatShape==2) {
    r.drawRektangel();
  } else if (whatShape==3) {
    t.drawTrekant();
    whatShape=0;
  }
  whatShape++;
}
