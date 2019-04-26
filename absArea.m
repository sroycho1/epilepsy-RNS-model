%% Absolute Area Under the Curve Tool

function [hit, prevAbsArea] = absArea(ecog,dt,prevAbsArea)

ecogArea = trapz(abs(ecog))*dt;

if ecogArea > 1.5*prevAbsArea
    hit = 1;
else
    hit = 0;
    prevAbsArea = mean(prevAbsArea, ecogArea);
end

end

