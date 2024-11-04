
class Graphs {
  Map<int, List<int>> adjList = {};

//--------------add vertex--------------
  void addVertex(int vertex) {
    if (!adjList.containsKey(vertex)) {
      adjList[vertex] = [];
    }
  }

//------------add edges------------------

  void addedges(int vertex1, int vertex2) {
    addVertex(vertex1);
    addVertex(vertex2);

    adjList[vertex1]?.add(vertex2);
    adjList[vertex2]?.add(vertex1);
  }

//--------------display----------------

  void display() {
    adjList.forEach((vertex, edges) {
      print("$vertex : $edges");
    });
  }
//---------------DFS--------------------

  void dfs(startVertex, Set<int> visited) {
    if (!visited.contains(startVertex)) {
      print(startVertex);
      visited.add(startVertex);

      for (int vertex in adjList[startVertex] ?? []) {
        dfs(vertex, visited);
      }
    }
  }

//---------------BFS-----------------
void bfs(int startvertex){
  List<int>que=[];
  Set<int>visited={};
  que.add(startvertex);
  visited.add(startvertex);
  while(que.isNotEmpty){
    int vertex=que.removeAt(0);
    print(vertex);
  }
}


//-----------count leaf-------------

int countLeaf(){

  int leafCount=0;
  for(var vertex in adjList.keys){
    if(adjList[vertex]!.length==1){
      leafCount++;
    }
  }
  return leafCount;
}
}

void main() {
  Graphs g = Graphs();

  g.addVertex(1);
  g.addVertex(2);
  g.addVertex(3);
  g.addVertex(4);

  g.addedges(1, 2);
  g.addedges(1, 3);
  g.addedges(2, 3);
  g.addedges(2, 4);

  g.display();
  // g.dfs(1, {});

  // g.bfs(1);
  print(g.countLeaf())
  ;
}
