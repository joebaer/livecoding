class Alien {
  
  PVector position;
  float durchmesser;
  color farbe;
  int status;

  Alien() {
    this.durchmesser = random(10, 40);
    float randomX = random( 0 + this.durchmesser/2, width  - this.durchmesser/2);
    float randomY = random( 0 + this.durchmesser/2, height - this.durchmesser/2);
    this.position = new PVector(randomX, randomY);
    int farbe = int(random(0, 255));
    this.farbe = color(farbe, farbe, farbe);
    this.status = 0;
  }

  void increaseStatus() {
    if (this.status < 2) {
      this.status++;
    }
  }

  void zeichne() {
    fill(this.farbe);

    switch(this.status) {
      
      case 0:
        line(this.position.x, this.position.y, this.position.x - this.durchmesser, this.position.y - this.durchmesser);
        line(this.position.x, this.position.y, this.position.x + this.durchmesser, this.position.y - this.durchmesser);
        break;
  
      case 1:
        line(this.position.x, this.position.y, this.position.x - this.durchmesser, this.position.y);
        line(this.position.x, this.position.y, this.position.x + this.durchmesser, this.position.y);
        break;
  
      case 2:
        line(this.position.x, this.position.y, this.position.x - this.durchmesser, this.position.y + this.durchmesser);
        line(this.position.x, this.position.y, this.position.x + this.durchmesser, this.position.y + this.durchmesser);
        break;
      
    }

    ellipse(this.position.x, this.position.y, this.durchmesser, this.durchmesser);
  }
  
}