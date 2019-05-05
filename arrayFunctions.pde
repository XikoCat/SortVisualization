int[] fillOrdered(int[] a) {
  for (int i=0; i<a.length; i++)
    a[i] = i;
  return a;
}

int[] scramble(int[] a, int n){
  for (int i=0; i<a.length*n; i++){
    int r = (int)random(a.length);
    int temp = a[i%a.length];
    a[i%a.length] = a[r];
    a[r] = temp;
  }
  return a;
}
