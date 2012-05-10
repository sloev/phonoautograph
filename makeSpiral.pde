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

  makeSpiral() {
    w=width/2;
    h=height/2;
    rot=(0.6)/(33.333333333);
    growFactor=rot*2;
    grow=0;
  }

  void make() {

    translate(w, h);

    // Convert polar to cartesian
    x = grow * cos(rotated);
    y = grow * sin(rotated);

    rotated+=rot;
    grow+=growFactor;

    line(lastx, lasty, x, y);
    stroke(255, 255, 255);
    point(x, y);
    println(x+"\t"+y+"\t"+lastx+"\t"+lasty);
    lastx=x;
    lasty=y;
  }
}

