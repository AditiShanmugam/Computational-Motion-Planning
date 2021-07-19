% TestScript2 for Graph Based Planning Methods
%

%% Define a small map
map = false(20);

% Add an obstacle
map (1:10, 6) = true;
map (7:12, 8) = true;
map (13, 5:8) = true;

start_coords = [6, 2];
dest_coords  = [9, 9];

%%
close all;
% Uncomment following line to run Dijkstra
%[route, numExpanded] = DijkstraGrid (map, start_coords, dest_coords);
% Uncomment following line to run Astar
%[route, numExpanded] = AStarGrid (map, start_coords, dest_coords);
