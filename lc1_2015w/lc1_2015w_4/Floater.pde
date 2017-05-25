class Floater {

    float x;
    float y;
    float speed;
    boolean horizontal;

    Floater(boolean horizontal) {
        this.x = random(0, 80);
        this.y = random(0, 80);
        this.speed = random(1, 3);
        this.horizontal = horizontal;
    }

    void render() {
        noStroke();
        fill(255);
        rect(x, y, 20, 20);
    }



    void update() {

        if (this.horizontal) {
            this.x += this.speed;
        } else {
            this.y += this.speed;
        }

        if (this.x < 0) {
            this.speed = -this.speed;
            this.x = 0;
        }
        
        if (this.x > width-20) {
            this.speed = -this.speed;
            this.x = width-20;
        }

        if (this.y < 0) {
            this.speed = -this.speed;
            this.y = 0;
        }

        if (this.y > height-20) {
            this.speed = -this.speed;
            this.y = height-20;
        }
        
    }
    
}