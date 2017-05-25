Flocke[] schnee;
float velocityScale = 0.5;

void setup() {
    size(300, 200);
    schnee = new Flocke[100];
    for (int i = 0; i < schnee.length; i++) {
        schnee[i] = new Flocke();
    }
}

void draw() {
    background(0);
    for (int i = 0; i < schnee.length; i++) {
        schnee[i].update();
        schnee[i].render();
    }
}


void keyPressed() {
    if (key == CODED) {
        switch(keyCode) {
            case UP:
                if(velocityScale < 1) {
                    velocityScale += 0.1;
                } else {
                    velocityScale = 1;
                }
                break;
                
            case DOWN:
                if(velocityScale > 0) {
                    velocityScale -= 0.1;
                } else {
                    velocityScale = 0;
                }
                break;
        }
    } else {
        if(key == 'w') {
            for(int i = 0; i < schnee.length; i++) {
                schnee[i].swapColor();
            }
        }
    }
}