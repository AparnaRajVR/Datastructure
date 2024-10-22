import 'dart:collection';

class Node{
  dynamic value;
  Node?left;
  Node?right;
  Node(this.value);
}
class BT{
  Node?root;
void insert(dynamic value){
  Node newnode=Node(value);
  if(root==null){
    root=newnode;
    return;}
  Queue<Node?> que=Queue<Node?>();
  que.add(root);
  while(que.isNotEmpty){
    Node? current=que.removeFirst();
if(current?.left==null){
  current?.left=newnode;
  break;}
  else{
  que.add(current?.left);
  }

if(current?.right==null){
  current?.right=newnode;
  break;
}
else{
  que.add(current?.right);
  }
}

  }
  void display(){
    if(root==null){
   
    return;}
  Queue<Node?> que=Queue<Node?>();
  que.add(root);
  while(que.isNotEmpty){
    Node? current=que.removeFirst();
    if(current!=null){
    print(current.value);}
if(current?.left!=null){
 que.add(current?.left);
  }
  if(current?.right!=null){
 que.add(current?.right);
  }}

  
}
bool areidentical(Node?node1,Node? node2){
  if(node1==null && node2==null){
return true;
  }
   if(node1==null || node2==null){
return false;
  }
 return (node1.value == node2.value) &&
        areidentical(node1.left, node2.left) &&
        areidentical(node1.right, node2.right);
  }
}

void main(){
  BT tree1=BT();
  tree1.insert(30);
  tree1.insert(89);
  tree1.insert(8);
  tree1.insert(9);
  tree1.display();

  print("second tree");
    BT tree2=BT();
  tree2.insert(30);
  tree2.insert(89);
  tree2.insert(8);
  tree2.insert(0);
  tree2.display();
  if(tree1.areidentical(tree1.root, tree2.root)){
    print("two are identical");}
    else{
 print("not identical");
    }
  }
