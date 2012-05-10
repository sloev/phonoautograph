
makeSpiral spiral;
readSpiral turntable;

void setup() {
  smooth();
  background(0);
  size(600, 600);
  spiral=new makeSpiral();
  //frameRate(5);
  turntable = new readSpiral();
}

void draw() {
  //background(0);
  spiral.make();
}

