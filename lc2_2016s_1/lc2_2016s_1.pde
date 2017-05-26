Alien[] aliens;

void setup() {
  size(300, 300);
  aliens = new Alien[3];
  for (int i = 0; i < aliens.length; i++) {
    aliens[i] = new Alien();
  }
}

void draw() {
  background(255);
  for (int i = 0; i < aliens.length; i++) {
    aliens[i].zeichne();
  }
}

void keyPressed() {
  switch(key) {
    case '+':
      aliens = (Alien[]) append(aliens, new Alien());
      break;
      
    case ' ':
      int randomIndex = int(random(0, aliens.length));
      aliens[randomIndex].increaseStatus();
      break;
  }
}