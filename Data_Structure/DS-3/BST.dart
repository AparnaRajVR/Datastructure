import 'dart:collection';

class Node {
  dynamic value;
  Node? right;
  Node? left;
  Node(this.value);
}

class BST {
  Node? root;
  void insert(dynamic value) {
    Node newnode = Node(value);
    if (root == null) {
      root = newnode;
      return;
    } else {
      insertnode(root, newnode);
    }
  }

  void insertnode(Node? current, Node? newnode) {
    if (newnode?.value < current?.value) {
      if (current?.left == null) {
        current?.left = newnode;
      } else {
        insertnode(current?.left, newnode);
      }
    } else {
      if (newnode?.value > current?.value) {
        if (current?.right == null) {
          current?.right = newnode;
        }
      }
    }
  }

//------------check BST or Not----------
  bool isbst(Node? root,
      [double min = double.negativeInfinity, double max = double.infinity]) {
    if (root == null) {
      return true;
    } else if (root.value <= min || root.value >= max) {
      return false;
    }
    return isbst(root.left, min, root.value.toDouble()) &&
        isbst(root.right, root.value.toDouble(), max);
  }

  //------------BFS-------------
  void levelorder() {
    if (root == null) {
      return;
    }
    Queue<Node?> que = Queue<Node?>();
    que.add(root);
    while (que.isNotEmpty) {
      Node? current = que.removeFirst();
      if (current != null) {
        print(current.value);
      }
      if (current?.left != null) {
        que.add(current?.left);
      }
      if (current?.right != null) {
        que.add(current?.right);
      }
    }
  }

// --------DFS------------------
  void preorder(Node? root) {
    if (root != null) {
      print(root.value);
      preorder(root.left);
      preorder(root.right);
    }
  }

// -----inorder------
  void inorder(Node? root) {
    if (root != null) {
      inorder(root.left);
      print(root.value);
      inorder(root.right);
    }
  }

//-----postorder------
  void postorder(Node? root) {
    if (root != null) {
      postorder(root.left);

      postorder(root.right);
      print(root.value);
    }
  }

  //-------min---
  min(root) {
    if (root?.left == null) {
      return root?.value;
    } else {
      return min(root?.left);
    }
  }

  //-------max------
  max(root) {
    if (root?.left == null) {
      return root?.value;
    } else {
      return max(root?.left);
    }
  }

//  -------search------
  search(root, value) {
    if (root == null)
      return false;
    else {
      if (value == root.value) {
        return true;
      } else if (value < root.value) {
        return search(root.left, value);
      } else {
        return search(root.right, value);
      }
    }
  }
  //-------------leaf node--------
List leafnode(Node? root, [List? result]) {
  result ??= []; 
  
  if (root != null) {
    if (root.left == null && root.right == null) {
      result.add(root.value);  
    } else {
      leafnode(root.left, result); 
      leafnode(root.right, result); 
    }
  }
  return result;
}

}

void main() {
  BST bst = BST();
  bst.insert(89);
  bst.insert(9);
  bst.insert(99);
  bst.insert(98);
  bst.insert(90);
  bst.preorder(bst.root);
  bst.postorder(bst.root);
  print(bst.search(bst.root,93));
  print("min:${bst.min(bst.root)}");
   print("leafnodes:${bst.leafnode(bst.root)}");
  print("isbst:${bst.isbst(bst.root)}");
}
