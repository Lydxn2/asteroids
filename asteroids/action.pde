true;

void keyPressed() {
  if (keyCode == LEFT)
    keyLeft = true;
  if (keyCode == RIGHT)
    keyRight = true;
  if (keyCode == UP)
    keyUp = true;
  if (key == ' ' && !keySpace) {
    keySpace = true;
    freeSpace = true;
  }
  if (keyCode == ENTER && !keyEnter) {
    keyEnter = true;
    freeEnter = true;
  }
  if (key == 'a' || key == 'A')
    keyA = true;
  if (key == 't' || key == 'T')
    keyT = true;
  if ((key == 'p' || key == 'P') && !keyP) {
    keyP = true;
    freeP = true;
  }
}

void keyReleased() {
  if (keyCode == LEFT)
    keyLeft = false;
  if (keyCode == RIGHT)
    keyRight = false;
  if (keyCode == UP)
    keyUp = false;
  if (key == ' ')
    keySpace = false;
  if (keyCode == ENTER)
    keyEnter = false;
  if (key == 'a')
    keyA = false;
  if (key == 't' || key == 'T')
    keyT = false;
  if (key == 'p' || key == 'P')
    keyP = false;
}
