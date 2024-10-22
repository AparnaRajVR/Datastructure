
class Node{
  dynamic value;
  Node? right;
  Node? left;
  Node(this.value);
}
class BST{
  Node?root;
  // bool isEmpty(){
  //   return root==null;
  // }
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
void preorder(Node?root){
  if(root!=null){
    print(root.value);
    preorder(root.left);
    preorder(root.right);

  }}
  void inorder(Node?root){
  if(root!=null){
     inorder(root.left);
    print(root.value);
   
    inorder(root.right);

  }}
   void postorder(Node?root){
  if(root!=null){
     postorder(root.left);
     postorder(root.right);
    print(root.value);
  }

}
}
void main(){
  BST bst=BST();
  bst.insert(89);
  bst.insert(9);
  bst.insert(99);
  bst.insert(98);
  print("preorder");
  bst.preorder(bst.root);
  print("postorder");
  bst.postorder(bst.root);

}
