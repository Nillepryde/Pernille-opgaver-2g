//1.opgave: se progammet fourTimesAAlien (hentes på GITHUP).
//a) Find funktionen framFunction. på hvilken linje (nummer), deklarerers frameFunktion
//        FramFunktion deklareres på linje 42 hvor der står void foran den

// b) Fro hvilke linjenumre, bliver funktionen kald?
//        linje 9 til 13

// c) Med hvor mange parameter kalder jeg funktionen?
//        det er 2 parametre for en framFunktion og der er 4 af dem så i alt er der 8

// d) Opret nu dine egne funktioner som laver
// i) Hoved med øjne

void setup(){
  size(600,600);
}

void draw(){
  fill(255,255,255);
  frameFunction(0,0);//laver en ramme bagved alienen
  frameFunction(300,0);
  
  frameFunction(0,300);
  frameFunction(300,300);
  
  line(300,0,300,600);//vertical line
  line (0,300,600,300); //Horizontal line
  
  Hoved(0,0);
  Hoved(300,0);
  Hoved(0,300);
  Hoved(300,300);
  
  krop(0,0);
  krop(300,0);
  krop(300,300);
  krop(0,300);
// iii) lav tekst med navn
 textSize(32);
  text("Alie", 120, 270);
  text("Palle", 120, 570);
  text("Polle", 420, 270);
  text("Ruth", 420, 570);
  
}
void Hoved(int x, int y){
 fill(255,255,255);//farver hoved hvidt
circle(x+150,y+75,100);//hoved
fill(0,0,0);//farver øjnene sorte
ellipse(x+125, y+75, 25,50);//laver elipse formet øjne
ellipse(x+175, y+75,25,50);//laver elipse formet øjne

}
// ii) kroppen med ben
void krop(int x, int y){
fill(0,0,0);//farver kroppen sort
rect(x+125,y+120,50,100);//laver kroppen som en rektangel

strokeWeight(5);
  line(x+125,y+220,x+110,y+250);
  line(x+175,y+220,x+195,y+250);
}


void frameFunction(int x,int y){
  rect(10+x,10+y,280,280);
}
