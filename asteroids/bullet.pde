class Bullet extends GameObject {
  int lifespan;
  boolean isShip;

  Bullet() {
    this.loc = new PVector(ship.loc.x, ship.loc.y);
    this.vel = new PVector(ship.dir.x, ship.dir.y);
    this.vel.setMag(15);
    this.rad = 3;
    this.lives = 1;
    this.isShip = true;
    
    // die after some number of frames
    this.lifespan = 20;
  }
  
  // 2nd constructor for UFO bullets
  Bullet(PVector p) {
    this.loc = p.copy();
    this.vel = new PVector(ship.loc.x - this.loc.x, ship.loc.y - this.loc.y);
    this.vel.setMag(3);
    
    this.rad = 3;
    this.lives = 1;
    this.isShip = false;
    
    this.lifespan = 50;
  }
  
  void render() {
    noStroke(); fill(isShip ? WHITE : #FF0000);
    circle(this.loc.x, this.loc.y, rad);
  }
  
  void act() {
    super.act();
    this.loc = this.loc.add(this.vel);
    this.lifespan--;
  }
}
