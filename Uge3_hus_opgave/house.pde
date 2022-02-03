//lav et rum //<>// //<>//
Room[] house = new Room [6];

void setup() { // dette er en funktion
  size(800, 800);
  background(205);

  house[0] = new Room("Kitchen", false, 100, 300);
  house[0] = new Room("LivingRoom", false, 300, 200);
}

void draw() { // dette er en funktion
  for (int i=0; i<house.length; i++) {
    
    // tegn taget
    house[0].drawRoof(); // opgave 5
    // tegn rum
    house[0].drawRoom();
  }
}



void mouseClicked() { //dette er en funktion
  // lav baggrund
  background(205);
  fill(105);
  rect(80, 680, 300, 30);
  fill(250);

  for (int i =0; i<house.length; i++) {
    // find ud af om vi tænder eller slukker lyset
    if (house[i].isRoomClicked(mouseX, mouseY))
      if (house[i].light) {
        house[i].setLight(false);
        text("Turning off the light in "+house[i].getRoomName(), 100, 700);
      } else {
        house[i].setLight(true);
        text("Turning on the light in "+house[i].getRoomName(), 100, 700);
      }
  }
}
