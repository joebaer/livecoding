int floaterCount;

Floater[] floaters;

void setup() {

    floaterCount = 12;
    
    size(300, 300);

    floaters = new Floater[floaterCount];

    for (int i = 0; i < floaters.length; i++) {

        if (i < floaters.length / 2) {
            floaters[i] = new Floater(true);
        } else {
            floaters[i] = new Floater(false);
        }
        
    }
    
}

void draw() {

    background(0);

    for (int i = 0; i < floaters.length; i++) {
        floaters[i].update();
        floaters[i].render();
    }
    
}

void mousePressed() {
    for (int i = 0; i < floaters.length; i++) {
        floaters[i].horizontal = !floaters[i].horizontal;
    }
}