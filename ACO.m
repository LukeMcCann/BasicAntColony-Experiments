close all 
clc

%% Create the Problem

% Create Graph 
[graph] = createGraph();

% Draw
figure
subplot(1, 3, 1)
drawGraph(graph);


%% ACO Algorithm

% Initial Parameters
max = 100;
antPop = 10;

% Calc the average of the distances between all edges in graph * #NO edges
% Pheromone concentration
tau0 = 10*1/( graph.n * mean(graph.edges(:) ));

% Create pheramone matrices
tau = tau0 * ones(graph.n, graph.n);

% Edge desirability: shorter is more desirable
eta = 1 ./graph.edges;

% Main Loop
for t = 1 : max
    % Create Colony
    
    % Calculate Fitness
    
    % Find Best Solution
    
    % Update Pheromone Matrix
    
    % Evaporate
    
    % Print Solution
    
end
