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
% Can be reversed to find the longest path via graph.edges
eta = 1 ./graph.edges;

% Evaporation rate
rho = 0.05;

% Pheromone param
alpha = 1;
% Desirability param
beta = 1;

% Main Loop
for t = 1 : max
    % Create Colony
    colony = [];
    colony = createColony(graph, colony, antPop, tau, eta, alpha, beta);
    % Calculate Fitness
    for i = 1 : antPop
        colony.ant(i).fitness = calculateFitness(colony.ant(i).tour, graph);
    end
    % Find Best Solution
    
    % Update Pheromone Matrix
    
    % Evaporate
    
    % Print Solution
    
end
