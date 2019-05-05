int BSort_i = 0, BSort_j = 0;
void bubbleSort() {
  if (arr[BSort_j] > arr[BSort_j+1]) {
    line(BSort_j, width, BSort_j, width-arr[BSort_j]);
    sin.freq(map(arr[BSort_j],0,width,freqMin,freqMax));
    // swap arr[j+1] and arr[i]
    int temp = arr[BSort_j]; 
    arr[BSort_j] = arr[BSort_j+1]; 
    arr[BSort_j+1] = temp;
  }
  BSort_j++;
  if (BSort_j >= arr.length - BSort_i - 1) {
    BSort_j=0;
    BSort_i++;
    if (BSort_i >= arr.length - 1)
      done = true;
  }
}
