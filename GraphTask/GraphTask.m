edges=readtable("g_edges.csv");
nodes=readtable("g_nodes.csv");
graph=digraph(edges.Source,edges.Target,edges.Weight);
graph_plot=plot(graph,"Layout","auto");
graph.Nodes.NodeSizes=2.*sqrt(indegree(graph)-min(indegree(graph))+0.2);
graph_plot.MarkerSize=graph.Nodes.NodeSizes;
graph_plot.NodeCData=graph.Nodes.NodeSizes;
graph.Nodes.NodeIn=indegree(graph);
colorbar
shortPath=shortestpath(graph,'NED','TYRION');
highlight(graph_plot,shortPath,"EdgeColor","r")
disp("Самый короткий путь между NED и TYRION:")
disp(shortPath)
disp(head(sortrows(table(graph.Nodes.Name,graph.Nodes.NodeIn),"Var2","descend"),5))