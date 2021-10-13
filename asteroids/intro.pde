void doIntro() {
  background(BLACK);
  
  ship.act(); ship.render();
  titleText.animate(); titleText.render();
  toGameText.animate(); toGameText.render();

  if (keyEnter && freeEnter) {
    freeEnter = false;
    mode = Mode.GAME;
  }
}
