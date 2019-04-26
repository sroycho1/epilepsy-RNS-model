%% Line Length Detection Tool

function hit = lineLength(ecog,dt)

% dy -> diff(ecog)
% dx -> dt
% dLen -> c^2 = a^2 + b^2
len = sqrt( diff(ecog).^2 + dt^2 ); %pythagorean distance


