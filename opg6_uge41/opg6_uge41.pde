//Vi trækker håndbremsen, stopper op, og reflekterer over hvad vi har lært 'so far'. 

//Computere arbejder med 0,1 og alt basserer sig på det binæretalsystem. Det betyder at alt funktionalitet baserer sig på booskalgebra, AND, OR og NOT. De nøgleord bruger vi også når vi programmerer. 

//I har lavet en liste med ord og udtryk:

//Instruktion
//Sekvens
//Funktion
//Kontrolstruktur
//Betingelser
//Forgrening
//Løkke
//Variabel (https://data-flair.training/blogs/java-data-types/)
  //ikke primitive
   // a. String
  //  b. Array
  //  c. klasser
   // d. Interfaces  
//  Primitive
//    a. Int
//    b. Float
//    c. Char
//    d. Boolean
//    e. Byte
//    f. Short
//    g. long
//    h. Double.
//Funktion
//Initiering
//Deklaration
//Parameter

//Cammelback notation

//Denne opgave handler om at forstå de forskellige datatyper.

//Opgave 4:
//  a) Undersøg for hver primitiv datatype, hvor meget plads (bytes) der allokeres i hukommelsen når man deklarerer en variabel af datatypen. 
//(find svaret her https://data-flair.training/blogs/java-data-types/). Noter alle dine resultater
//           int = 4 bytes
//         float = 4 bytes
//          char = 2 bytes  
//       boolean = 1 byte
//          byte = 8 bytes ????
//         short = 2 bytes ???
//          long = 8 bytes
//        double = ????
//  b) Skriv et program som ved hjælp af funktioner, beviser hvilke minimums- og maksimumsværdier for de primitive datatype kan indeholde.Find evt. inspiration i programmet testDatatyper, som du finder på github. Noter alle dine resultater
//        Det jeg skriver nu er det som christian har skrevet som inspiration på github --> uge 41 --> testDatatyper
void setup(){
  noLoop();
}
void draw(){
  testint(37500);
}
void testint(int x){
  println(x);
}
//  d) De to datatyper float og double er ikke lige nøjagtige. 
// Det kan de se hved følgende opgave: Hvad giver kvadratroden af 2 gange med kvadratroden af 2? 
// Lav et først et program med sqrt() som returnerer en float og herefter med Math.squrt() som returnerer en double. Forklar forskellen på de to funktioner og redegør for resultatet af de to instruktioner. 
