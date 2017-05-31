void setup() {
  makeX(5);
  makeX(10);
}

void makeX(int size) {
  for (int i=0; i<size; i++) {
    println();
    for (int j=0; j<size; j++) {
      if (i==j || (size-1-i)==(j)) {
        print('#');
      } else {
        print('.');
      }
    }
  }
}