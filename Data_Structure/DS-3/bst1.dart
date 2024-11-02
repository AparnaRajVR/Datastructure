class Node{
dynamic value;
Node?right;
Node?left;
Node(this.value);
}
class BST{
  Node?root;
  void insert(dynamic value){
    Node newnode=Node(value);
    if(root==null){
      root=newnode;

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
    }
  }
}