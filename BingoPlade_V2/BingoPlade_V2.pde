//lavet af Christian Brun
import java.util.Arrays; //<>// //<>//

// Array til at lave kolonne
int[] kolonne = new int[3];

// 2D Array som svarer til vores bingo plade. 9 kolonner og 3 rækker
int[][] bingoPlade = new int[9][3];


void setup() {
  size(600, 600);
  textSize(20);
  fill(0); //lavet af mig

  //funktionen findTreTal returnerer en kolonne med tre tal. En bingoPlade består af 9 kolonner - get it? :)

  // ****Lav en lykke som kan gentages 9 gange. Her starter din løkke

  for (int i =0; i < bingoPlade.length; i++) {
    // start med at finde tre tal
    kolonne = findTreTal(i);
    while (findEns(kolonne)) {
      kolonne = findTreTal(i);
    }

    // sorter kolonne stigende
    kolonne = sorter(kolonne);

    // **** put kolonne i bingPlade[i] det gør du her
    bingoPlade[i] = kolonne;

    // her slutter din løkke
  }
  int[] nuller = new int[4];
  for (int i=0; i<3; i++) {
    nuller =findFireTal();
    while (findEns(nuller)) {
      nuller =findFireTal();
      nuller =sorter(nuller);
    }
    for (int j=0; j<nuller.length; j++) {
      bingoPlade[nuller[j]][i]=0;
    }
  }
  // her printer jeg bingopladen til consol
  for (int i=0; i<bingoPlade.length; i++) {
    println("-------");
    printArray(bingoPlade[i]);
  }
  println();
}
void draw() {
  background(250, 250, 250);
  udskriv();
  //vandrette linjer lavet af mig
  line(90, 75, 450, 75);
  line(90, 115, 450, 115);
  line(90, 155, 450, 155);
  line(90, 195, 450, 195);
  line(90, 75, 90, 195);
  //lodrette linjer lavet af mig
  line(130, 75, 130, 195);
  line(170, 75, 170, 195);
  line(210, 75, 210, 195);
  line(250, 75, 250, 195);
  line(290, 75, 290, 195);
  line(330, 75, 330, 195);
  line(370, 75, 370, 195);
  line(410, 75, 410, 195);
  line(450, 75, 450, 195);
}

int[] findTreTal(int faktor) {
  int[] tal = new int[3];
  for (int i=0; i < tal.length; i++) {
    // vi ganger faktor med 10 for at få 10'er 20'er etc
    tal[i]  = (int)random(1, 11)+faktor*10 ;
  }
  return tal;
}
int[] findFireTal() {
  int[] tal = new int[4];
  for (int i=0; i < tal.length; i++) {
    // vi ganger faktor med 10 for at få 10'er 20'er etc
    tal[i]  = (int)random(0, 9) ;
  }
  return tal;
}

int[] sorter(int[] tal) {
  int i=0;
  //for (int i =0; i <tal.length-1; i++) {
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

void udskriv() {
  // udskriv bingoPlade
  // ****gentag så jænge i er mindre end ni
  // ****gentag så jænge j er mindre end 3
  // ****text(string,x-værdi+10*i,y-værdi+10*j);
  for (int i =0; i<bingoPlade.length; i++) {
    for (int j =0; j<bingoPlade[i].length; j++) {
      text(bingoPlade[i][j], 100+i*40, 100+j*40);
    }
  }
}
