mergeSort(List<int> arr) {
  if (arr.length < 2) {
    return arr;
  }
  int mid = arr.length ~/ 2;
  List<int> leftArr = arr.sublist(0, mid);
  List<int> rightArr = arr.sublist(mid);

  return merge(mergeSort(leftArr), mergeSort(rightArr));
}

merge(List<int> leftArr, List<int> rightArr) {
  List<int> sortedArr = [];
  while (leftArr.isNotEmpty && rightArr.isNotEmpty) {
    if (leftArr[0] < rightArr[0]) {
      sortedArr.add(leftArr.removeAt(0));
    } else {
      sortedArr.add(rightArr.removeAt(0));
    }
  }
  return [...sortedArr, ...leftArr, ...rightArr];
}

void main(){
  List<int>arr=[6,3,76,3,7,8,9,1,0,0];
  print(mergeSort(arr));
}