class graph
{
  Map<int,List<int>>adjlist={};
  void addvertex(int vertex){
    if(!adjlist.containsKey(vertex));
    adjlist[vertex]=[];

  }
  void addedges(int vertex1,int vertex2){
    addvertex(vertex1);
    addvertex(vertex2);
    adjlist[vertex1]?.add(vertex2);
    adjlist[vertex2]?.add(vertex1);
  }
  void display(){
    adjlist.forEach((vertex, edges) { 
      print("$vertex:$edges");
    });
  }

  void dfs( startvertex,Set<int>visited){
 if(!visited.contains(startvertex));
 print(startvertex);
 visited.add(startvertex);
 for(int vertex in adjlist[startvertex]??[]){
  dfs(vertex,visited);
 }
  }
  void bfs(startvertex){
    List<int>queue=[];
    Set<int>visited={};
    queue.add(startvertex);
    visited.add(startvertex);
    while(queue.isNotEmpty){
      int vertex=queue.removeAt(0);
      print(vertex);
      for(int adjvertex in adjlist[vertex]??[]){
        if(!visited.contains(adjvertex)){
          queue.add(adjvertex);
        }
      }
    }

  }

}
void main(){
  graph g=graph();{
    g.addvertex(7);
        g.addvertex(79);

    g.addvertex(12);

    g.addvertex(57);
    g.addedges(7, 79);
    g.addedges(12, 79);
        g.addedges(12, 57);
        g.dfs(79, {});
        g.display();

    


  }
}
