class Maxheap{
  List<int>heap=[];
  void insert(value){
    heap.add(value);
    heapifyup(heap.length-1);
  }
 
 extractmax(){
  if(heap.isEmpty)return;
  int root=heap[0];
  if(heap.length==1){
    return heap.removeLast();
  }
  heap[0]=heap.removeLast();
  heapifydown(0);
  return root;

  }
  void heapifyup(int index){
    if(index==0)return;
    int parentindex=(index-1)~/2;
    if(index>0 && heap[index]>heap[parentindex]){
      swap(index,parentindex);
      heapifyup(parentindex);
    }
  }
  void heapifydown(int index){
    int leftindex=(2*index+1);
    int rightindex=(2*index+2);
    int largest=index;
    if(leftindex<heap.length && heap[leftindex]>heap[largest]){
      largest=leftindex;
    }
     if(rightindex<heap.length && heap[rightindex]>heap[largest]){
      largest=rightindex;
    }
    if(largest!=index){
      swap(index,largest);
      heapifydown(largest);
    }}
  
  void swap(int index1,int index2){
    int temp= heap[index1];
     heap[index1]=heap[index2];
     heap[index2]=temp;
  }
   List<int>heapsort(){
    List<int>sorted =[];
    while(heap.isNotEmpty){
      sorted.add(extractmax()!);}
      return sorted.reversed.toList();
    
   }
 }
  void main(){
    Maxheap h=Maxheap();
    h.insert(3);
    h.insert(1);
    h.insert(55);
    h.insert(33);
    h.insert(11);
    print("extract min:${h.extractmax()}");
    List<int>sorted=h.heapsort();
    print(sorted);
  }
