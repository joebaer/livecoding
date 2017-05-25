class Ball {

    PVector vel;
    PVector pos;
    float radius;
    
    Rect rect;
    
    Ball(Rect rect) {
        this.vel = new PVector( random(-3, 3), random(-3, 3));
        this.pos = new PVector(50, 50);
        this.radius = 10;
        this.rect = rect;
    }
    
    void collisionCheck() {
        
        if(this.pos.x < this.rect.pos.x + this.radius) {
            this.vel.x = -this.vel.x;
        }
        
        if(this.pos.x > this.rect.pos.x + this.rect.size.x - this.radius) {
            this.vel.x = -this.vel.x;
        }
        
        if(this.pos.y < this.rect.pos.y + this.radius) {
            this.vel.y = -this.vel.y;
        }
        
        if(this.pos.y > this.rect.pos.y + this.rect.size.y - this.radius) {
            this.vel.y = -this.vel.y;
        }
        
    }
    
    void update() {
        this.pos.add(vel);
        collisionCheck();
    }
    
    void render() {
        fill(255);
        noStroke();
        ellipse(this.pos.x, this.pos.y, this.radius*2, this.radius*2);
    }
    
}