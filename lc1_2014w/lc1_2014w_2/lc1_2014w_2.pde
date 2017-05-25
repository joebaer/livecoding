Rect rect;

void setup() {
    rect = new Rect(width/2, height/2, 0, 0);
    size(200, 200);
}

void draw() {
    background(0);
    rect.update();
    rect.render();
}

void keyPressed() {
    if(key == 'g') {
        rect.swapColor();
    }
}