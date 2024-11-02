import 'dart:collection';

class Node{
  dynamic value;
  Node?right;
  Node?left;
  Node(this.value);
}
class BT{
  Node?root;
  void insert(dynamic value){
    Node newnode=Node(value);
if(root==null){

root=newnode;
return;
  }
  
  Queue<Node?>que=Queue<Node?>();
  que.add(root);
  while(que.isNotEmpty){
      Node?current=que.removeFirst();
      if(current?.left==null){
        current?.left=newnode;
        break;}
        else{
          que.add(current?.left);
        }
        if(current?.right==null){
        current?.right=newnode;
        break;}
        else{
          que.add(current?.right);
        }
        
      }
  }
  void display(){
   if(root==null){
return;
  }
  
  Queue<Node?>que=Queue<Node?>();
  que.add(root);  while(que.isNotEmpty){
      Node?current=que.removeFirst();
      print(current?.value);
      if(current?.left!=null){ 
       que.add(current?.left);
  }
  if(current?.right!=null){ 
       que.add(current?.right);
  }
  }}
   bool areidentical(Node? node1,Node?node2){
    if(node1==null && node2==null){
      return true;
    }
    if(node1==null || node2==null){
      return false;
   }
   return (node1.value==node2.value)&&
   areidentical(node1.left,node2.left)&&
   areidentical(node1.right,node2.right);
  }}

  void main(){
    BT bt1=BT();
    bt1.insert(59);
    bt1.insert(9);

    bt1.insert(5);

    bt1.insert(89);
    bt1.display();
      BT bt=BT();
    bt.insert(59);
    bt.insert(9);

    bt.insert(5);

    bt.insert(89);
    bt.display();
    if(bt1.areidentical(bt1.root,bt.root)){
 print("are identical");}
 else{
  print("not");
 }}

  