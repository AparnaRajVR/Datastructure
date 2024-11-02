
class Node{
  dynamic value;
  Node? right;
  Node? left;
  Node(this.value);
}
class BST{
  Node?root;
  void insert(dynamic value){
  Node newnode=Node(value);
  if(root==null){
    root=newnode;
    return;
  }
  else{
    insertnode(root,newnode);

  }
  
}
void insertnode(Node?current,Node?newnode){
  if(newnode?.value<current?.value){
    if(current?.left==null){
     current?.left=newnode;
    }
    else{
      insertnode(current?.left,newnode);
    }
     
  }
  else{
     if(newnode?.value>current?.value){
    if(current?.right==null){
     current?.right=newnode;
    }
  }
}}

 bool isbst(Node? root,[double min= double.negativeInfinity, double max=double.infinity]){
  if(root==null){
    return true;
  }
  else if(root.value<=min ||root.value >=max ){
    return false;
  }
  return isbst(root.left,min,root.value.toDouble())&& isbst(root.right,root.value.toDouble(),max);
 }
  void preorder(){}
}


void main(){
  BST bst=BST();
  bst.insert(89);
  bst.insert(9);
  bst.insert(99);
  bst.insert(98);
  bst.insert(90);
  // print("preorder");
  // bst.preorder(bst.root);
  // print("postorder");
  // bst.postorder(bst.root);
   print("isbst:${bst.isbst(bst.root)}");

}
