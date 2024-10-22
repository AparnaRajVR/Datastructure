class Graph{
  Map<int,List<int>>adjlist={};
  void addvertex(int vertex){
if(!adjlist.containsKey(vertex)){
  adjlist[vertex]=[];
  
}
  }
  void addedges(int vertex1,int vertex2){
    addvertex(vertex1);
    addvertex(vertex2);
    adjlist[vertex1]?.add(vertex2);
    adjlist[vertex2]?.add(vertex1);
  }
  void display(){
    adjlist.forEach((vertex, edges) 
    {print("$vertex:$edges"); });
  }}
  void dfs(int startvertex,Set<int>visited){
    if(!visited.contains(startvertex)){
      print(startvertex);
      visited.add(startvertex);
      for (int vertex in adjlist[startvertex] ??[]){
        dfs(vertex,visited);
      }
    }
  }

  void main(){
    Graph g=Graph();
    g.addvertex(20);
    g.addvertex(30);
    g.addvertex(12);
    g.addvertex(14);
    g.addedges(12, 14);
    g.addedges(30, 20);
    g.addedges(14, 30);
    g.display();
  }
  
