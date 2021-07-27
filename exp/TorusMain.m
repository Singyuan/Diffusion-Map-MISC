% Embedding torus into S1 or disc?
clc; clear; close all;
n = 1000;
RevoR = 3;
TubeR = 2;
theta = (rand(n, 1)-0.5)*2*pi;
phi = (rand(n, 1)-0.5)*2*pi;
X(:, 1) = (RevoR+TubeR*cos(phi)).*cos(theta);
X(:, 2) = (RevoR+TubeR*cos(phi)).*sin(theta);
X(:, 3) = TubeR*sin(phi);
% sort by revolution
[~, idx] = sort(theta);
X = X(idx, :);

% Here the bandwidth is given
[U, S] = DMapBasic(X, 100, 4, 1.2);

figure
numofpts = size(U, 1);
jetcustom = jet(numofpts); % partition the color bar from blue to red
for i = 1:numofpts
    plot3(U(i, 1), U(i, 2), U(i, 3), '.', 'Color',  jetcustom(i, :))
    hold on
end

colormap(jetcustom)
cb = colorbar;
caxis([0, 2*pi])
ylabel(cb,'Revolution direction (\theta) \rightarrow', 'Fontsize', 13)
title('Embedding Torus', 'Fontsize', 16, 'FontWeight', 'bold')