Bar bar;

void setup() {
    size(100, 100);
    //size(200, 200);
    bar = new Bar();
}

void draw() {
    background(0);
    bar.update();
    bar.render();
}

void keyPressed() {
    bar.size = new PVector(20, 0);
    bar.goesUp = !bar.goesUp;
    bar.grows = true;
}