class Graph{
  Map<int,List<int>>adjlist={};
  void addvertex(int vertex){
    if(!adjlist.containsKey(vertex)){
      adjlist[vertex]=[];
    }
  }
  void addEdges(int vertex1,int vertex2){
    addvertex(vertex1);
    addvertex(vertex2);
    adjlist[vertex1]?.add(vertex2);
    adjlist[vertex2]?.add(vertex1);


  }
  void display(){
    adjlist.forEach((vertex, edges) { print( "$vertex:$edges");});
  }
  void dfs(startvertex,Set<int>visited){
    if(!visited.contains(startvertex)){
      print(startvertex);
      for(int vertex in adjlist[startvertex]??[]){
      dfs(vertex,visited);
    }

    }
  }
}

