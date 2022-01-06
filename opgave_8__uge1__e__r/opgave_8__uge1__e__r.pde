//                    OPGAVE 2                //
//lav et program som kan finde alle e-ér med et for-loop

String minString = "afbsdflee,gødre,eøsæekeenehzejkls.seekel";
int antal = 0;
int i = 0;

boolean fundet =false;


for (int j = 0; j< minString.length(); j++) {
  if (minString.charAt(j)=='e')
  {
    antal++;
  }
}
println("antal e-ér:"+antal);

// Lav et program som kan finde alle e-ér med et while-loop

while (!fundet) {
  if (minString.charAt(i)=='e') {
    fundet=true;
    antal++;
  }
  i++;
  if (i == minString.length());
  {
    break;
  }
}
println("antal e-ér:"+antal);

//lav et program som retunere antallet af bogstaer i strengen
println("Antal af bogstaver: "+minString.length());

//                    OPGAVE 3                //
// forklar om det er en fordel hvis bogstaverne er sorterede
//        jeg tror ikke det gør nogen forskel.

//                    OPGAVE 4                //
//tilføj en -if-betingelse til din kode. Hvis din string indeholder 'z' så skal programmet
//udskrive: jeg har fundet en Zebra på position XX:
while (!fundet) {
  if (minString.charAt(antal)=='z')
  {
    fundet=true;
  }
  antal++;
}
println("jeg har fundet en zebra på positon: "+antal);
