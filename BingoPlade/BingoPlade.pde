int[] kolonne = new int[3];
int[] [] bingoPlade =new int[9][3];

void setup() {
  kolonne = findTreTal();
  printArray(kolonne);
  kolonne = sorter(kolonne);
  printArray(kolonne);
}

void draw() {
}
// find 3 tilfældige tal i array
int[] findTreTal() {

  int[] tal = new int[3];
  for (int i=0; i < 3; i++) {
    tal[i] = (int)random(1, 11);
  }
  return tal;
}
// sortering af array
int[] sorter(int[] tal) {
  int i=0;
  while (i<2) {
    if (tal[i] > tal[i+1]) {
      int temp = tal[i+1];
      tal[i+1] = tal[i];
      tal[i] = temp;
      i=0;
    } else {
      i++;
    }
  }
  return tal;
}
