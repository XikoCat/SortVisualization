import processing.sound.*;
Sound s;
SinOsc sin;
int freqMin = 50, freqMax = 4000;
int[] arr;

void setup() {
  sin = new SinOsc(this);
  sin.play();
  size(500, 500, FX2D);
  //fullScreen(FX2D);
  frameRate(5000);

  arr = scramble(fillOrdered(new int[width]), 1);
}

boolean done = false;
void draw() {
  background(0);

  stroke(255);
  for (int i=0; i < arr.length; i++) {
    line(i, width, i, width-arr[i]);
  }

  if (!done) {
    //println(frameCount);
    stroke(0, 255, 0);
    //selectionSort();
    //bubbleSort();
    insertionSort();
  } else {
  println(frameCount);
  noLoop();
  }
}
