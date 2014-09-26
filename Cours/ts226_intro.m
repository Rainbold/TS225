%% Fichiers en "vraie couleur"

A = imread('img/pool.tif');
whos;

figure, image(A);
A(:,:,1);
A(:,:,2);
A(:,:,3);


%% Fichiers en couleur index?e

clear all;
close all;

A = imread('img/lena.bmp');
whos;

figure, image(A), colorbar;
figure , image(A), colormap(gray(256)), colorbar;
get(0, 'ScreenDepth');
[A, map] = imread('img/lena.bmp');
figure, image(A), colormap(map), colorbar

A=double(imread('img/coronair.tif'));
BW=A>150;
B=A.*not(BW)+500.*BW;
figure
image(B)
colormap(gray(256))
colorbar
figure
imagesc(B)
colormap(gray(256))
colorbar


%% Fonction imshow

clear all
close all

A = imread('cameraman.tif');
figure
imshow(A)

B = double(A);
figure
imshow(B);

figure
imshow(B/200)


%% Synth?se analytique : meshgrid

clear all
close all

[X, Y] = meshgrid(-32:32,-32:32);
R = (X.^2+Y.^2).^0.5;

img = -1000 * R;
figure, imagesc(img), axis square
figure, surf(img)


%% Exercice synth?se additive

clear all
close all

[R,G,B] = disks(1000, 200, 100);
A = cat(3, R,G,B);
image(A)


%% Exercice synth?se additive

clear all
close all

map = [0 0 0; 0 0 1; 0 1 0; 0 1 1; 1 0 0; 1 0 1; 1 1 0; 1 1 1]

M = disks_scal(1000, 200, 100);
image(M)
