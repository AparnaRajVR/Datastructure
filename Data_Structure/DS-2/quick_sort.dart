isQuicksort(List<int>arr){
  if(arr.length<2){
    return arr;
  }
  int pivot=arr[arr.length-1];
  List<int>right=[];
  List<int>left=[];
  for(int i=0; i<arr.length-1;i++){
    if(arr[i]<pivot){
      right.add(arr[i]);
    }else{
      left.add(arr[i]);
    }
  }
  return [...isQuicksort(right),pivot,...isQuicksort(left)];
}
void main(){
  List<int>arr=[8,5,4,3,22,2,1];
  print(isQuicksort(arr));
}