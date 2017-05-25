void setup() {

    splitBoxHori(6, 4, 2);
    println();
    splitBoxVert(10, 5, 6);
    
}

void splitBoxHori(int breite, int hoehe, int zeile) {

    for ( int i = 0; i < hoehe; i++) {
        for ( int j = 0; j < breite; j++) {
            if (i < zeile) {
                print("#");
            } else {
                print(".");
            }
        }
        println();
    }
    
}

void splitBoxVert(int breite, int hoehe, int zeile) {

    for ( int i = 0; i < hoehe; i++) {
        for ( int j = 0; j < breite; j++) {
            if (j < zeile) {
                print("#");
            } else {
                print(".");
            }
        }
        println();
    }
    
}