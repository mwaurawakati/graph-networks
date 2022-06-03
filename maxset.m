%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

%A function for finding the maximum indipendent sets of a graph
%The input of the function is a containers.Map variable with:
%keys as the nodes
%values as a array of the nodes that the key node is connected to
%it gives an array of the maximal indipendent set

%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function maxset= maxset(graph)
%empty graphs
    if(length(graph) == 0);
        fprintf('The graph is empty');
		maxset=[];
   %graph with one node
    elseif(length(graph) == 1);
        fprintf('The graph has one node');
		 maxset=graph;
    else
        i=[];
        while length(graph)~=0;
            vertices=keys(graph);
            remove(graph,string(vertices(1)))
            i=[i,vertices(1)];
            for m=keys(graph);
                edge=graph(string(m));
                contain=any(edge(:)==str2num(cell2mat(vertices(1))));
                if contain==1;
                    remove(graph,string(m));
                end
            
            end
        end
        maxset=i;
    end
    maxset=maxset
    
    
