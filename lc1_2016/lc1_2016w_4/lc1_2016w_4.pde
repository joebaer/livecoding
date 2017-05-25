Kugel[] kugeln;

void setup() {

    size(200, 200);
    //size(300, 300);
    
    kugeln = new Kugel[20];

    int xOffset = width / kugeln.length;
    int yOffset = height / ( kugeln.length / 2 );

    int yPos = height;


    for (int i = 0; i < kugeln.length; i++) {
        
        kugeln[i] = new Kugel( i * xOffset, yPos );
        
        if (i < kugeln.length / 2) {
            yPos -= yOffset;
        } else {
            yPos += yOffset;
        }
    }
}

void draw() {
    background(0);
    for (int i = 0; i < kugeln.length; i++) {
        kugeln[i].zeiche();
    }
}

void keyPressed() {
    for(int i = 0; i < kugeln.length; i++) {
        if(random(1) < 0.5) {
            kugeln[i].isRed = !kugeln[i].isRed;
        }
    }
}