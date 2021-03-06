Santa[] santas;

Flocke[] schnee;

float velocityScale = 0.5;

void setup() {

    size(300, 400);

    santas = new Santa[6];
    for (int i = 0; i < santas.length; i++) {
        float randomX = random(0 + 20, width-20);
        float randomY = random(50, height-50);
        santas[i] = new Santa(randomX, randomY, random(2, 4));
    }

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

    for (int i = 0; i < santas.length; i++) {
        santas[i].move();
        santas[i].draw();
    }
    
}

void keyPressed() {

    if (key == CODED) {
        switch(keyCode) {
        case UP:
            if (velocityScale < 1) {
                velocityScale += 0.1;
            } else {
                velocityScale = 1;
            }
            break;

        case DOWN:
            if (velocityScale > 0) {
                velocityScale -= 0.1;
            } else {
                velocityScale = 0;
            }
            break;
        }
    } else {
        if (key == 'w') {
            for (int i = 0; i < schnee.length; i++) {
                schnee[i].swapColor();
            }
        }
        if (key == '1') {
            for (int i = 0; i < santas.length; i++) {
                santas[i].shocked = false;
            }
        }
        if (key == '2') {
            for (int i = 0; i < santas.length; i++) {
                santas[i].shocked = true;
            }
        }
    }
    
}