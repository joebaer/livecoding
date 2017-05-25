class Flocke {
    
    PVector pos;
    PVector vel;
    color col;
    
    float radius;
    
    Flocke() {
        
        float randomX = random(this.radius, width  - this.radius);
        float randomY = random(this.radius, height - this.radius);
        this.pos = new PVector(randomX, randomY);
        this.vel = new PVector(0, 1 + random(0, 3));
        this.col = color(255);
        this.radius = 1.5;
        
        //println(this.pos, this.vel);
    
    }
    
    void update() {
        PVector actVel = PVector.mult(this.vel, velocityScale);
        this.pos.add(actVel);
        if(this.pos.y > height) {
            this.pos.y = 0;
        }
    }
    
    void render() {
        noStroke();
        fill(this.col);
        ellipse(this.pos.x, this.pos.y, this.radius*2, this.radius*2);
    }
    
    void swapColor() {
        if(this.col == color(255)) {
            this.col = color(255, 255, 0);
        } else {
            this.col = color(255);
        }
    }
    
}