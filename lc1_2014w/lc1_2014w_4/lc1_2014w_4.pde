Flugobjekt fo;

void setup() {
    size(300, 400);
    fo = new Flugobjekt();
    println(fo.x, fo.y);
}

void draw() {
    background(255);
    fo.bewege();
    fo.zeichne();
    
}