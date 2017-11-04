edge(a,b).
edge(a,f).
edge(f,g).
edge(f,c).
edge(f,e).
edge(g,c).
edge(e,d).
edge(b,c).
edge(c,d).
edge(c,e).
edge(X,Y) :- tedge(X,Y).

tedge(Node1,Node2):- edge(Node1,SomeNode), edge(SomeNode,Node2).
thedge(Node1,Node2):- edge(Node1,SomeNode1), edge(SomeNode1,SomeNode2), edge(SomeNode2,Node2).
thedge(Node1,Node2):- edge(Node1,SomeNode), tedge(SomeNode,Node2);
                      tedge(Node1,SomeNode),edge(SomeNode,Node2).
path(Node1,Node1).
path(Node1,Node2) :- edge(Node1,Node2).
path(Node1,Node2) :- edge(Node1,SomeNode), path(SomeNode,Node2).












