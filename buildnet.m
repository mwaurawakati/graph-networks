%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

%This Function should build a network
%The input variable represent the cluster
%The input variable Nodes nrepresent the number of nodes
%it is assumed that the clusters have the same properties:Edges and nodes
%The degree is the number of edges connecting to a node

%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++%

function networkbuild = buildnet( cluster, Nodes, degree);

    %Nodes=2093;
    %cluster=3;
    if (cluster==0);
        
         nodematrix=[];
    


        for node=1:Nodes;
            nodematrix(node)=(node);
        end
        edges=[];
        ne=containers.Map;
        for i=1:Nodes;
            edgei=[];
            for k=1:degree;
                vert2=round(((Nodes)).*rand());               
                edgei(k)=vert2;
            end;                  
            ne(string(i))=edgei;
        end;   
        fprintf('Cluster can not be Zero. The network created is not clustered.\n');
        networkbuild=ne ;  
    elseif cluster==1;
        nodematrix=[]; 
        for node=1:Nodes;
            nodematrix(node)=node;
        end
        edges=[];
        ne=containers.Map;
        for i=1:Nodes;
            edgei=[];
            for k=1:degree;
                vert2=round(((Nodes)).*rand());               
                edgei(k)=vert2;
            end;        
            ne(string(i))=edgei;
        end;   
        fprintf('Cluster is 1. The network created is not clustered');
        networkbuild=ne; 


    else
        nodematrix=[];
        edges=[];
        ne=containers.Map;
        for clusters=1:cluster;
            s=length(ne);
            %disp(length(ne))
            for g=s+1:Nodes*clusters;
                nodematrix(g)=g;
                
                edgei=[];
                for k=1:degree;
                    vert2=round(s + ((Nodes*clusters)-s).*rand());%randi(g);
                    
                    edgei(k)=vert2;
                end;
                ne(string(g))=edgei;
            end;
            ne=ne
        end;
        networkbuild=ne;
        
        
        
    end;
  
        


        
        