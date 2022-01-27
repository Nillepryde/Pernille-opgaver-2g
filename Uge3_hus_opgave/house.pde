//lav et rum //<>// //<>// //<>//
Room [] house = new Room[6];//opgave 6


void setup() {
  size(800, 800);
  background(205);
  
   house[0] = new Room("Room", false, 100, 300);
  house[1] = new Room("Kitchen", false, 210, 300);
  house[2] = new Room("Livingroom", false, 320, 300);
  house[3] = new Room("Toilet", true, 100, 410);
  house[4] = new Room("Bedroom", false, 210, 410);
  house[5] = new Room("Bathroom", false, 320, 410);
}

void draw(){
  for(int i= 0; i<house.length; i++){
  // tegn taget 
  house[i].drawRoof(); // opgave 5
  // tegn rum
  house[i].drawRoom();
  
  }
    
}

void mouseClicked() {
  // lav baggrund
  background(205);
  fill(105);
  rect(80, 680, 300, 30);
  fill(250);

  // find ud af om vi tænder eller slukker lyset
  if (house.isRoomClicked(mouseX, mouseY))
    if (house.light) {
      house.setLight(false);
      text("Turning off the light in "+house.getRoomName(), 100, 700);
    } else {
      house.setLight(true);
      text("Turning on the light in "+house.getRoomName(), 100, 700);
    }
}
