selectiionsort(List<int>arr){
for(int i=0;i<arr.length-1;i++){
  int minIndex=i;
  for(int j=i+1;j<arr.length;j++){
    if(arr[j]<arr[minIndex]){
    minIndex=j;
  }
  }
  if(minIndex!=i){
    int temp=arr[i];
    arr[i]=arr[minIndex];
    arr[minIndex]=temp;
  }
}

}
void main(){
  List<int>arr=[9,2,5,2,1];
  selectiionsort(arr);
  print(arr);
}