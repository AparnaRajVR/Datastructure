import 'dart:collection';

class Node{
  dynamic value;
  Node? left;
  Node?right;
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
    }}
    void insertnode(Node?current,Node?newnode){
      // if(root==null) return;
    if(newnode?.value<current?.value){
      if(current?.left==null){
       current?.left=newnode;
      }
      else{
        insertnode( current?.left,newnode,);
      }
    }
    else{
      if(newnode?.value>current?.value){
      if(current?.right==null){
       current?.right=newnode;
      }
      else{
        insertnode (current?.right,newnode,);
    }
    }}}

   
void levelorder(){
  if(root==null){
    return;
  }
  Queue<Node?>que=Queue<Node?>();
  que.add(root);
  while(que.isNotEmpty){
    Node?current=que.removeFirst();
    if(current!=null){
    print(current.value);
    }
    if(current?.left!=null){
      que.add(current?.left);
    }
    if(current?.right!=null){
      que.add(current?.right);
    }
  }
}
void preorder(Node?root){
  if(root!=null){
    print(root.value);
    preorder(root.left);
        preorder(root.right);

  }
}
  min(root){
  if(root?.left==null){
  return root?.value;
  }
  else{
    return min(root?.left);
  }
 }
}
 void main(){
  BST bt=BST();
  bt.insert(30);
  bt.insert(32);
  bt.insert(45);
  //  bt.levelorder();
  // bt.preorder(bt.root);
  print("min is:${bt.min(bt.root)}");
 }