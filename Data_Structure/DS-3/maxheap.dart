class Maxheap{
  List<int>heap=[];
  void insert(int value){
    heap.add(value);
    heapifyup(heap.length-1);
  }
  int? extractmax(){
    if(heap.isEmpty)return null;
 int root=heap[0];
 if(heap.length==1){
  return heap.removeLast();
 }
 heap[0]=heap.removeLast();
 heapifydown(0);
 return root;
  }
   heapifyup(int index){
    if(index==0){
      return;
    }
    int parentindex=(index-1)~/2;
    if(index>0 && heap[index]<heap[parentindex]){
      swap(index,parentindex);
      heapifyup(parentindex);
    }
   }
    heapifydown(int index){
      int leftindex=(2*index+1);
      int rightindex=(2*index+2);
      int largest=index;
      if(leftindex<heap.length && heap[leftindex]<heap[largest]){
        largest=leftindex;
      }
       if(rightindex<heap.length && heap[rightindex]<heap[largest]){
        largest=rightindex;
      }
       if(largest!=index){
        swap(index,largest);
        heapifydown(largest);
       }
    }
     swap(int index1,int index2){
      int temp=heap[index1];
      heap[index1]=heap[index2];
      heap[index2]=temp;
     }
      List<int>heapsort(){
        List<int>sorted=[];
        while(heap.isNotEmpty){
          sorted.add(extractmax()!);
         
        }
         return sorted;
      }
       void dis(){
        print(heap);
       }
  }
   void main(){
    Maxheap heap=Maxheap();
    heap.insert(29);
    heap.insert(9);
    heap.insert(2);
    heap.insert(229);
     print("extractmin:${heap.extractmax()}");
    List<int>sorted=heap.heapsort();
    print(sorted);
   }
