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
  float growFactor=0.0003333;

  makeSpiral() {
    w=width/2;
    h=height/2;
    x=w;
    y=h;
    rot=(60*1000)/(33.333333333);
    grow=0;
  }

  void make() {
    lastx=x;
    lasty=y;
    rotated+=rot;
    grow+=growFactor;
    x=w+(grow*cos(degrees(rotated)));
    y=h+(grow*sin(degrees(rotated)));

    line(lastx, lasty, x, y);
    point(x, y);
    println(x+"\t"+y);
  }
}

