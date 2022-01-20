// initiering af variablen f
Firkant f;
Circle c;
Rektangel r;
Trekant t;

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
  f.drawFirkant();
  c.drawCircle();
  r.drawRektangel();
  t.drawTrekant();
}
