class Santa {

    float x;
    float y;
    float xVel;
    boolean shocked;

    float w;

    color skin;  
    color hat;   
    color beard; 

    Santa(float x, float y, float xVel) {
        this.x = x;
        this.y = y;
        this.xVel = xVel;
        if(random(1) < 0.5) {
            this.shocked = false;
        } else {
            this.shocked = true;
        }
        w = 40;
        skin  = color(255, 224, 189);
        hat   = color(255, 0, 0);
        beard = color(255, 255, 255);
    }
    
    Santa(float x, float y, float xVel, boolean shocked) {
        this.x = x;
        this.y = y;
        this.xVel = xVel;
        this.shocked = shocked;
        w = 40;
        skin  = color(255, 224, 189);
        hat   = color(255, 0, 0);
        beard = color(255, 255, 255);
    }

    void move() {
        this.x += this.xVel;
        if(this.x >= width - w/2 || this.x <= 0 + w/2) {
            this.xVel = -this.xVel;
            this.shocked = !this.shocked;
        }
    }

    void draw() {
        fill(this.skin);
        ellipse(this.x, this.y, w, w);
        fill(this.beard);
        ellipse(this.x - 8, this.y - 3, 8, 8);
        ellipse(this.x + 8, this.y - 3, 8, 8);
        rect(this.x - this.w/2, this.y+5, this.w, 25);
        if (!shocked) {
            fill(this.hat);
            triangle(this.x - w/2, this.y - 10, this.x + w/2, this.y - 10, this.x, this.y - 40);
        } else {
            fill(this.hat);
            triangle(this.x - w/2, this.y - 25, this.x + w/2, this.y - 25, this.x, this.y - 65);
        }
    }
    
}