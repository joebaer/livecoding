class Flugobjekt {

    float x;
    float y;
    float xSpeed;
    boolean shocked;

    float w;
    float h;

    color col;

    Flugobjekt() {
        this.w = 40;
        this.h = 30;
        this.x = random(width - this.w);
        this.y = random(this.h, height);
        this.xSpeed = random(5);
        this.shocked = false;
        this.col = color(255);
    }

    void bewege() {

        this.x += this.xSpeed;

        if (this.x + this.w >= width || this.x <= 0) {
            this.xSpeed = -this.xSpeed;
            this.shocked = !this.shocked;
            this.swapColor();
        }
    }

    void zeichne() {
        fill(this.col);
        if (!shocked) {
            triangle(this.x, this.y + this.h, this.x + this.w/2, this.y, this.x + this.w, this.y + this.h);
        } else {
            rect(this.x, this.y, this.w, this.h);
        }
    }

    void swapColor() {
        if (this.col == color(255)) {
            this.col = color(0);
        } else {
            this.col = color(255);
        }
    }
    
}