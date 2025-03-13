class Node {
  int? value;
  Node? next;
  Node(this.value);
}

class single {
  Node? head;
  Node? tail;
  void append(int value) {
    Node newnode = Node(value);
    if (head == null) {
      head = newnode;
    } else {
      tail?.next = newnode;
    }
    tail = newnode;
  }

  void display() {
    Node? current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }

  void listToLl(List<int> arr) {
    for (int i = 0; i < arr.length; i++) {
      append(arr[i]);
    }
  }
}

void main() {
  single s = single();

  // s.append(3);
  // s.append(32);
  // s.append(31);


  List<int> l1 = [1, 2, 3, 4, 5, 6, 7];

  s.listToLl(l1);
     s.display();
}
