% Draw the problem graph in graphical form
% Return void
function [] = drawGraph(graph)
hold on

% Iterate each node pair
% Extract each node pair
for i = 1 : graph.n -1
    for j = i+1 : graph.n 
        x1 = graph.node(i).x;
        y1 = graph.node(i).y;
        
        x2 = graph.node(j).x;
        y2 = graph.node(j).y;
        
        x = [x1, x2];
        y = [y1, y2];
        
        plot(x,y);
    end
end
end
