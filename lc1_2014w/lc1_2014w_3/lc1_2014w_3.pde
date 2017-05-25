void setup() {
    printBox(5, 6);
    printBox(7, 3);
}

void printBox(int width, int height) {
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            if (y == 0 || y == height-1 || x == 0 || x == width-1) {
                print("#");
            } else {
                print(".");
            }
        }
        println();
    }
    println();
}