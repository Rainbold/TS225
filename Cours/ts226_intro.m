%% Fichiers en "vraie couleur"

A = imread('img/pool.tif');
whos;

figure, image(A);
A(:,:,1);
A(:,:,2);
A(:,:,3);


%% Fichiers en couleur index?e

A = imread('img/lena.bmp');
whos;

figure, image(A), colorbar;
figure , image(A), colormap(gray(256)), colorbar;
get(0, 'ScreenDepth');
[A, map] = imread('img/lena.bmp');
figure, image(A), colormap(map), colorbar