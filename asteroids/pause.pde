void doPause() {
  if (keyP && freeP) {
    mode = Mode.GAME;
    freeP = false;
  }
  
  fill(#FFFF00);
  textFont(deltaFont, 50);
  text("PAUSED", width / 2, height / 2);
}
