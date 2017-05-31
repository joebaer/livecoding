void setup() {
    makeX(5);
    makeX(10);
}


// test
void makeX(int size) {

    int countLeft = 0;
    int countRight = size - 1;

    for (int y=0; y < size; y++) {
        for (int x = 0; x < size; x++) {
            if (x == countLeft || x == countRight) {
                print("#");
            } else {
                print(".");
            }
        }
        countLeft++;
        countRight--;
        println();
    }
    println();
}