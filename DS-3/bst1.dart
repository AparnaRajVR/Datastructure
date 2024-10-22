class Node{
  dynamic value;
  Node? left;
  Node? right;
  Node(this.value);
}
class BTS{
  Node? root;
  bool isEmpty(){
    return root==null;
  }
  void insert(dynamic value){
   
 Node newnode=Node(value);
 if(isEmpty()){
       root=newnode;
    }
    else{
      insertnode(root,newnode);
    }
    }
  
   void insertnode(Node?current,Node?newnode){
    if(newnode?.value<current?.value){
      if(current?.left==null){
      current?.left=newnode;}
    
    else{
      insertnode(current?.left, newnode);
    }}
    else{
       if(newnode?.value>current?.value)
  if(current?.right==null){
      current?.right=newnode;
    }
    else{
      insertnode(current?.right, newnode);
    }
    }
   }
   void preorder(Node?root){
    if(root!=null){
    print(root.value);
    preorder(root.left);
    preorder(root.right);
   }}
   }
void main(){
  BTS bts=BTS();
  bts.insert(40);
  bts.insert(90);
  bts.insert(30);
  bts.insert(10);
  print("pre");
  bts.preorder(bts.root);
}