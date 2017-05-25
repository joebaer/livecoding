class Rect {
    
    PVector pos;
    PVector size;
    
    Rect() {
        this.pos = new PVector(20, 10);
        this.size = new PVector(60, 80);
    }
    
    void render() {
        fill(255);
        stroke(255);
        noFill();
        rect(this.pos.x, this.pos.y, this.size.x, this.size.y);
    }
    
}