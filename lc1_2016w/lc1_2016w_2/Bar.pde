class Bar {

    PVector pos;
    PVector size;
    float growSpeed;
    boolean goesUp;
    boolean grows;

    Bar() {
        this.size = new PVector(20, 0);
        this.pos = new PVector(width / 2 - this.size.x / 2, height / 2);
        this.growSpeed = 1;
        this.goesUp = true; // false = goesDown
        this.grows = true;  // false = shrinks
    }

    void render() {
        noStroke();
        fill(255);
        rect(this.pos.x, this.pos.y, this.size.x, this.size.y);
    }

    void update() {

        if ( this.goesUp && grows ) {
            this.size.y -= this.growSpeed;
            if ( this.size.y <= -(height / 2) ) {
                this.grows = !this.grows;
            }
        }

        if ( this.goesUp && !grows ) {
            this.size.y += this.growSpeed;
            if ( this.size.y >= 0) {
                this.grows = !this.grows;
            }
        }

        if ( !this.goesUp && grows ) {
            this.size.y += growSpeed;
            if ( this.size.y >= height / 2) {
                this.grows = !this.grows;
            }
        }

        if ( !this.goesUp && !grows ) {
            this.size.y -= growSpeed;
            if( this.size.y <= 0 ) {
                this.grows = !this.grows;
            }
        }
        
    }
    
}