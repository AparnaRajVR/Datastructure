class Graph{
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
      adjlist.forEach((vertex, edge) {
        print("$vertex:$edge");
       });
    }
     void dfs(int startvertex,Set<int>visited){
      if(!visited.contains(startvertex)){
         print(startvertex);
        visited.add(startvertex);
       
        for(int vertex in adjlist[startvertex]??[]){
          dfs(vertex,visited);
        }
      }
     }
      void bfs(int startvertex){
        List<int>que=[];
        Set<int>visited={};
        que.add(startvertex);
        visited.add(startvertex);
        while(que.isNotEmpty){
          int vertex=que.removeAt(0);
          print(vertex);
          for(int adjvertex in adjlist[vertex]??[]){
            if(!visited.contains(adjvertex)){
              que.add(adjvertex);
              visited.add(adjvertex);
            }
          }
        }
      }
}


void main(){
  Graph g=Graph();
  g.addvertex(2);
   g.addvertex(4);
    g.addvertex(1);
     g.addvertex(55);
      g.addvertex(3);
  g.addedges(2, 4);
  g.addedges(4,1 );
  g.addedges(55, 3);
  g.addedges(3, 1);
   g.display();
  //  g.dfs(2, {});
   g.bfs(3);
}