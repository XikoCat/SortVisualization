int ISort_i = 0, ISort_j = 0, ISort_key = -1;
int insertionSort() {
  
  //println("SortI: "+ISort_i+"\n"+"Sortj: "+ISort_j+"\n"+"\n"+(ISort_j >= 0)+""+(arr[ISort_j] > ISort_key));
  
  if (ISort_key != -1 && ISort_j >= 0 && arr[ISort_j] > ISort_key) {
    line(ISort_j, width, ISort_j, width-arr[ISort_j]);
    sin.freq(map(arr[ISort_j],0,width,freqMin,freqMax));
    arr[ISort_j + 1] = arr[ISort_j];
    ISort_j--;
  } else {
    if (ISort_key != -1)
      arr[ISort_j + 1] = ISort_key;

    ISort_i++;
    if (ISort_i > arr.length-1){
      done =true;
      return 0;
    }
    ISort_key = arr[ISort_i];
    ISort_j = ISort_i-1;
  }
  return 0;
}
