int SSort_i = 0, SSort_j = 0, SSort_min_idx = 0;
void selectionSort() {
  line(SSort_j, width, SSort_j, width-arr[SSort_j]);
  sin.freq(map(arr[SSort_j],0,width,freqMin,freqMax));
  if (arr[SSort_j] < arr[SSort_min_idx])
    SSort_min_idx = SSort_j;
  SSort_j++;
  if ( SSort_j >= arr.length ) {
    int temp = arr[SSort_min_idx];
    arr[SSort_min_idx] = arr[SSort_i];
    arr[SSort_i] = temp;

    SSort_i++;
    SSort_j=SSort_i;
    SSort_min_idx = SSort_j;
    if (SSort_i >= arr.length)
      done = true;
  }
}
