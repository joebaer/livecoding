class Kugel {

    float x;
    float y;
    boolean isRed;

    color col;
    float radius;

    Kugel(float x, float y) {
        this.x = x;
        this.y = y;
        this.isRed = true;
        this.radius = 5;
    }

    void zeiche() {
        noStroke();
        if (isRed) {
            this.col = color(255, 0, 0);
        } else {
            this.col = color(255, 255, 0);
        }
        fill(this.col);
        ellipse(this.x, this.y, this.radius*2, this.radius*2);
    }
}