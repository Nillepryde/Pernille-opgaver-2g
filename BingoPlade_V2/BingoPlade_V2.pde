//Lavet af christian //<>//

// hent bib til netværk //<>// //<>// //<>//
import processing.net.*; 

// Sæt client og var op
Client myClient; 
int dataIn; 
int last=0; // til at huske den sidst trukne værdi fra server


// 2D Array som svarer til vores bingo plade. 9 kolonner og 3 rækker
int[][] bingoPlade = new int[9][3];

// array til alle truknetal
int[] trukneTal = new int[90];
int trukneTalIndex=0;
int[][] mouseClickedXY = new int[27][2];
int timesMouseClicked=0;


void setup() {
  size(600, 600);
  textSize(20);
  fill(0);
  rectMode(CENTER);
  //funktionen findTreTal returnerer en kolonne med tre tal. En bingoPlade består af 9 kolonner - get it? :)
  // ****Lav en lykke som kan gentages 9 gange. Her starter din løkke 
  bingoPlade = nyPlade();
  // find 4 ikke ens tal så vi kan blokere fire felter i en række.
  // bloker felter
  bingoPlade=placerNuller(bingoPlade);

  // exporter bingo plade til string og sæt dit bruger navn ind i starten
  String s = "Chris"+exportToString(bingoPlade);
  println("String: ", s);


  // Log på server og send navn plus bingoplade som string
  myClient = new Client(this, "127.0.0.1", 5204); 
  // send til server
  myClient.write(s);
}
void draw() {
  background(225, 225, 225);
  udskriv(); // udskriv alle tal
  drawMatrix(); // lav streget så det ligner en bingo plade
  
  // lyt på netværket efter nye tal
  if (myClient.available() > 0) { 
    dataIn = myClient.read();
  }
  // serveren sender det samme tal masser af gange. for at undgå at få flere ens tal 
  if (dataIn != last) {
    last = dataIn;
  }
  // har jeg det nummer som bliver trukket?
  if (findNumber(bingoPlade, dataIn)) {
    text ("Yahoo", 100, 300);
    // istedet forat gemme alle tal gemmer jeg kun de tal som er på min plade.
    if (!findEnsTal(trukneTal, dataIn)) {
      trukneTalIndex++;
      trukneTal[trukneTalIndex] = dataIn;
    }
  }  
  // udskriver det sidste trukne tal til skærm  
  text("Server: "+dataIn, 100, 400);
  // udskriver de felter man har markeret med musen
  placeRedSDots(mouseClickedXY, timesMouseClicked);
}

void mouseReleased() {
  // jeg regner baglæns for at finde i!!
  int x = (mouseX-90)/40;
  int y = (mouseY-70)/40;
  //)
  if ((mouseX >90 && mouseX<440)&&(mouseY>70 && mouseY<190)) {
    println(mouseY);

    mouseClickedXY[timesMouseClicked][0]=x;
    mouseClickedXY[timesMouseClicked][1]=y;
    timesMouseClicked++;
  }
}


void placeRedSDots(int[][] mc, int t) {

  // fordi rectmode er center 
  fill(255, 0, 0, 50); // rød farve
  for (int i=0; i < t; i++) {
    int x=110+mc[i][0]*40;
    int y=90+mc[i][1]*40;
    pushMatrix();
    translate( x, y);
    rect(0, 0, 40, 40);
    popMatrix();
  } 
  fill(0); // lav farven tilbage til sort
}


//laver et gitter for at hjælpe mig med hvor vi skal klikke på skærmen..
void drawMatrix() {
  // dette fortæller mig at den første celle starter i 90,70. Er 40 pixels bred og fyrre høj 
  int x = 90;
  int y = 70;
  for (int i =0; i<4; i++) { // lodrette streger
    pushMatrix();
    translate(x, y+i*40);
    line(0, 0, 0+360, 0);
    popMatrix();
  }

  for (int i =0; i<10; i++) { // vandrettet streger
    pushMatrix();
    translate(x+i*40, y);
    line(0, 0, 0, 0+120);
    popMatrix();
  }
}

// lav et array med tre tilfældige tal
int[] findTreTal(int faktor) {
  int[] tal = new int[3];
  for (int i=0; i < 3; i++) {
    // vi ganger faktor med 10 for at få 10'er 20'er etc
    tal[i]  = (int)random(1, 11)+faktor*10 ;
  }
  return tal;
}

// lav et array med fire tilfældige tal 
int[] findFireTal() {
  int[] tal = new int[4];
  for (int i=0; i < 4; i++) {
    // jeg skal bruge værdier fra 0 til 8
    tal[i]  = (int)random(0, 9);
  }
  return tal;
}

// det er lettere at finde to ens tal hvis mit array er sorteret
int[] sorter(int[] tal) {
  int i=0;
  while (i<tal.length-1) {
    if (tal[i]>tal[i+1]) {
      int temp = tal[i];
      tal[i]=tal[i+1];
      tal[i+1]=temp;
      i=0;
    } else {
      i++;
    }
  }
  return tal;
}

// løber gennem et array og returnerer sand hvis der er to ens tal. Kræver et sorteret array
boolean findEns(int[] tal) {
  boolean notAlike = false;
  // find og ret dubletter 
  for (int i =0; i<tal.length; i++) {
    for (int j=i+1; j<tal.length; j++) {
      if (tal[i] == tal[j]) {
        notAlike = true;
      }
    }
  }
  return notAlike;
}

//leder efter et bestemt tal i et array. Hvis det findes returnerer den true
boolean findEnsTal(int[] tt, int tal) {
  boolean notAlike = false;
  for (int i=0; i<tt.length; i++) {
    if (tt[i] == tal) {
      notAlike = true;
    }
  }
  return notAlike;
}


void udskriv() {
  // udskriv bingoPlade
  for (int i =0; i<bingoPlade.length; i++) {
    for (int j =0; j<bingoPlade[i].length; j++) {
      if (bingoPlade[i][j]>0) {
        pushMatrix();
        translate(100+i*40, 100+j*40);
        text(bingoPlade[i][j], 0, 0);
        popMatrix();
      }
    }
  }
}

// laver et array som vi bruger til at blokere felter med
int[] lavNuller() {
  int[] t=new int[4];
  while (findEns(t)) {
    t = findFireTal();
    t = sorter(t);
  }
  return t;
}

// fjerner værdier i vores bingoplade og erstartter dem med nul
int[][] placerNuller(int [][] b) {
  // brug de 4 tal som index til rækken og placer et 0 i de udpegede celler.
  int[] nuller = new int[4];
  for (int i =0; i<3; i++) {
    nuller = lavNuller();
    for (int j =0; j<nuller.length; j++) {
      b[nuller[j]][i]=0;
    }
  }
  return b;
}

// Laver en bingoplade
int[][] nyPlade() {
  // array til bingoplade
  int[][] b = new int[9][3];
  // Array til at lave kolonne
  int[] kolonne = new int[3];

  for (int i =0; i < b.length; i++) {
    // start med at finde tre tal
    kolonne = findTreTal(i);
    while (findEns(kolonne)) {
      kolonne = findTreTal(i);
    }
    // sorter kolonne stigende 
    kolonne = sorter(kolonne);
    // **** put kolonne i bingPlade[i] det gør du her
    b[i] = kolonne;
  }
  return b;
}


// lav en funktion som kan exportere bingopladen til en String
String exportToString(int[][] bp) {
  String s="";
  for (int i=0; i<bp.length; i++) {
    for (int j=0; j<bp[i].length; j++) {
      s=s+","+str(bp[i][j]);
    }
  }

  return s;
}

// lav en funktion som kan finde et tal på vores plade som serveren har trukket.
boolean findNumber(int[][] bp, int tal) {
  boolean fundet = false;
  for (int i =0; i < bp.length; i++) {
    for (int j=0; j<bp[i].length; j++) {
      if (bp[i][j]==tal && bp[i][j] !=0) {
        fundet=true;
        fill(255, 0, 0, 50);
        pushMatrix();
        translate(100+i*40, 80+j*40);
        rect(0, 0, 25, 25);
        popMatrix();
        fill(0);
      }
    }
  }
  return fundet;
} //<>//
