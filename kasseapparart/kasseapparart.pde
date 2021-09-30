//variable deklaration
PImage img;

void setup(){
  size(400,600);
  img = loadImage("loevbjerg-logo-med-bund.png"); 
}

void draw(){
  background(255);//gør bagrunden hvid
  image(img,45, height-600);
  
  fill(0,0,0);//gør teksten sort
  textSize(20);//sætter størelsen på teksten
  text("H P Hansens Gade 41",20,120);//;//skriver tekst og hvor henne i canvas det skal skrives
  text("6200 Aabenraa, Danmark",20,140);
  text("TLF: 96132140",20,160);
  text("Betjent af: Marianne Lorenzen",20,200);
  line(15,210,385,210);//laver en linje
  
  text("Antal", 20,240);
  text("Vare",160,240);
  text("Pris i DKK",305,240);
  
  
  int antal1 = 3;
  text(antal1,20,261);
  text("Æble",160,261);
  int pris1 = 2;
  int fuldpris1 = pris1 * antal1;
  text(fuldpris1,370,261);
  
  int antal2 = 1;
  text(antal2,20,280);
  text("vindruer",160,280);
  int pris2 = 14;
  int fuldpris2 = pris2 * antal2;
  text(fuldpris2,365,280);
  
  int antal3 = 2;
  text(antal3,20,300);
  text("SnackPots",160,300);
  int pris3 = 10;
  int fuldpris3 = pris3 * antal3;
  text(fuldpris3,365,300);
  
  line(15,320,20,320);
  line(25,320,30,320);
  
  text("Total",20,347);
  int total = fuldpris1 + fuldpris2 + fuldpris3;
  text(total,365,347);
}
