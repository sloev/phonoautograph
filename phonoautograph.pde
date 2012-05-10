
makeSpiral spiral;
readSpiral turntable;

void setup() {
  spiral=new makeSpiral();
  turntable = new readSpiral();
}

void draw() {
  spiral.make();
}

