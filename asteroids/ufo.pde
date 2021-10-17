class UFO extends GameObject {
  int side;
  float w, h;
  
  UFO() {
    this.side = (int) random(0, 4);
    switch (this.side) {
    case 0:
      this.loc = new PVector(width / 2, -100);
      this.vel = new PVector(0, 1);
      break;
    case 1:
      this.loc = new PVector(width / 2, height + 100);
      this.vel = new PVector(0, -1);
      break;
    case 2:
      this.loc = new PVector(-100, height / 2);
      this.vel = new PVector(1, 0);
      break;
    case 3:
      this.loc = new PVector(width + 100, height / 2);
      this.vel = new PVector(-1, 0);
      break;
    }
    
    this.w = 68; this.h = 40;
    this.vel.setMag(1.5);
    this.vel.rotate(radians(random(-30, 30)));
    this.lives = 1;
    this.rad = 85;
  }
  
  void render() {
    ufoImg.render(this.loc.x, this.loc.y, this.w, this.h);
  }
  
  void act() {
    switch (this.side) {
    case 0:
      if (this.loc.y > height + this.rad)
        this.lives = 0;
      break;
    case 1:
      if (this.loc.y < -this.rad)
        this.lives = 0;
      break;
    case 2:
      if (this.loc.x > width + this.rad)
        this.lives = 0;
      break;
    case 3:
      if (this.loc.x < -this.rad)
        this.lives = 0;
      break;
    }
    
    this.loc = this.loc.add(this.vel);
    
    // make UFO shoot every X frames (on avg.)
    if ((int) random(0, 120) == 0)
      bullets.add(new Bullet(this.loc));
  }
}
