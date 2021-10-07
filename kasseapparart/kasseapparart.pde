//variable deklaration
//dekleration af billedet
PImage img;
PImage photo;

void setup(){
  size(400,700); //Bestemer størelsen på canvaset
  img = loadImage("loevbjerg-logo-med-bund.png"); //fortæller hvilket billed den skal tage, billedet skal være i samme mappe som denne IDE
  photo = loadImage("Stregkode.png");
    
}

void draw(){
  background(255);//gør bagrunden hvid
  image(img,45, height-700); //Bestemer hvor stort billedet skal være
  image(photo,33,550);//indsætter billed af løvbjerg logo
  
  //gør teksten sort og sætter størelsen på tekst
  fill(0,0,0);//gør teksten sort
  textSize(20);//sætter størelsen på teksten
  
  //skriver adresse, postnummer, land, tlf og betjent af, og en linje under det
  text("H P Hansens Gade 41",20,120);//;//skriver tekst og hvor henne i canvas det skal skrives
  text("6200 Aabenraa, Danmark",20,140);
  text("TLF: 96132140",20,160);
  text("Betjent af: Marianne Lorenzen",20,200);
  line(15,210,385,210);//laver en linje
  
  // skriver antal, vare og prisen i dkk og hvor henne det skal være
  text("Antal", 20,240);
  text("Vare",160,240);
  text("Pris i DKK",305,240);
  
  //beregning af pris for æbler med moms
  int antal1 = 3;//Interiering af antalet af æbler 
  text(antal1,20,261);//indsætter antal
  text("Æble",160,261);//indsætter varen
  int pris1 = 2;//Interiering af prispå æbler
  int fuldpris1 = pris1 * antal1;//Interiering af den fulde pris
  text(fuldpris1,375,261); //indsætter den fuld pris
  
  //beregning af pris for vindruer med moms
  int antal2 = 1;//Interiering af antalet af vindruer
  text(antal2,20,280);//indsætter antal
  text("vindruer",160,280);//indsætter vare
  int pris2 = 14;//Interiering af prisen på vindruer 
  int fuldpris2 = pris2 * antal2;//Interiering af den fulde pris 
  text(fuldpris2,365,280);//indsætter den fuld pris
  
  //beregning af pris for SnackPots med moms og skriver det som tekst i canvas
  int antal3 = 2;//Interiering af antalet af Snackpots
  text(antal3,20,300);//indsætter antalet
  text("SnackPots",160,300);//indsætter varen
  int pris3 = 10;//Interiering af prisen for SnackPots
  int fuldpris3 = pris3 * antal3;//Interiering af den fulde pris
  text(fuldpris3,365,300);//indsætter den fulde pris
  
  //stiblet linje
  text("- - - - - - - - - - - - - - - - - - - - - - - -",15,325);//indsætter en sripletline 
  
  //beregning af den totale pris med moms
  text("Total",20,347);//indsætter texten total
  int total = fuldpris1 + fuldpris2 + fuldpris3;//Interiering af den totale pris
  text(total,370,347);// indsætter den totale pris
  
  text("Her af moms",20,367);//indsætter text 
  text("Beløb uden moms",20,387);// indsætter text
  
  //skriver beløbet uden moms i canvas
  float undenMoms = beregnUdenMoms(total);//Deklarering af udenMoms
  text(undenMoms,330,387);//indsætte text "undenMoms"
  
  //skriver beløbet af momsen i canvas
  int udenMoms = 32;//Interiering af undenMoms
  float Moms = beregnMoms(udenMoms);// Deklarering af Moms
  text(Moms,340,367);//indsætte text "Moms"
  
  //laver den nederste linje
  line(15,393,385,393);//laver en tom linje
  
  //Dato
  int d=day();//Interiere dagen som en variabel
  int m=month();//Interiere  måneden som en variabel
  int y=year();//Interiere  året  
  int h=hour();//Interiere  timen 
  int min=minute();//Interiere minutet
  
  String dato = String.format(d+"/"+m+"-"+y+"      "+h+":"+min);//Dato deklarere string og der initierers karaktere
  text(dato,20,430); //Data skrivet ind som text 
  
  //bon nr
  text("Bon nr.: 00000P26600289844",20,450);
  
  //tekt "på gensyn"
  textSize(40);//sætter størelsen på teksten
  text("På gensyn",100,520);
  
}

//beregning af moms
float beregnMoms(int beløb){//Deklarering af beregnMoms og initerering af belød
  return beløb*0.25;//Udregning af belød med moms
}
  
  //beregning af beløb uden moms
 float beregnUdenMoms(int fuldbeløb){// Deklarering af BeregnUdenMoms og intiterering af belød
   return fuldbeløb*0.8;//Udregning af det fuldebelød uden moms
}
