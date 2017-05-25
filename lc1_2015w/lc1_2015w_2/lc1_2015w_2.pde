Rect rect;
Ball ball;

void setup() {
    rect = new Rect();
    ball = new Ball(rect);
}

void draw() {
    background(0);
    rect.render();
    ball.update();
    ball.render();
    
}