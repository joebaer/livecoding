class Rect {

    PVector pos;
    PVector size;
    color col;
    float growSpeed;

    Rect(int posX, int posY, int width, int height) {
        this.pos = new PVector(posX, posY);
        this.size = new PVector(width, height);
        this.col = color(255);
        this.growSpeed = 1;
    }

    void update() {
        this.size.x += growSpeed;
        this.size.y += growSpeed;

        if (this.size.x >= width || this.size.x <= 0 || this.size.y >= height || this.size.y <= 0) {
            this.growSpeed = -this.growSpeed;
        }
    }

    void render() {
        noStroke();
        fill(this.col);
        rectMode(CENTER);
        rect(pos.x, pos.y, size.x, size.y);
    }

    void swapColor() {
        if (this.col == color(255)) {
            this.col = color(255, 255, 0);
        } else {
            this.col = color(255);
        }
    }
}