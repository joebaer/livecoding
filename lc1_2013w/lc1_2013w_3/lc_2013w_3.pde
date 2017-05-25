void setup() {
    kasten(5, 3);
    //kasten(7, 10);
}

void kasten(int a, int b) {
    for(int y = 0; y < b; y++) {
        for(int x = 0; x < a; x++) {
            print("#");
        }
        println();
    }
    println();
}