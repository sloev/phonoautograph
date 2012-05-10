class makeSpiral {
  int w=0;
  int h=0;

  float x=0;
  float y=0;
  float lastx=0;
  float lasty=0;

  float rot=0;
  float rotated=0;

  float grow=0;
  float growFactor=0.003333;

  int maxRounds=0;
  int countRounds=0;

  makeSpiral() {
    maxRounds=10;
    w=width/2;
    h=height/2;
    rot=(0.6)/(33.333333333);
    growFactor=rot*2;
    grow=0;
  }

  boolean make() {
    if (maxRounds>countRounds) {
      translate(w, h);

      float randomsin=((noise(millis())+sin(millis()/100)*2));
      float randomcos=((noise(millis())+cos(millis()/100)*2));

      // Convert polar to cartesian
      x = (grow+randomcos) * cos(rotated);
      y = (grow +randomsin) * sin(rotated);

      rotated+=rot;
      grow+=growFactor;
      strokeWeight(0.5);
      line(lastx, lasty, x, y);
      stroke(255, 255, 255);
      //point(x, y);
      println(x+"\t"+y+"\t"+lastx+"\t"+lasty);
      lastx=x;
      lasty=y;

      return false;
    }
    return true;
  }
}

