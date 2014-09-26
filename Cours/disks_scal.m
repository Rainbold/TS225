function [ M ] = disks_scal( size, radius, dist )

dxr = dist * cos(pi/6);
dyr = -dist * sin(pi/6);
dxg = -dxr;
dyg = dyr;
dxb = 0;
dyb = dist;

[X, Y] = meshgrid(-(size-1)/2:(size-1)/2);
radiusR = ((X-dxr).^2 + (Y-dyr).^2).^0.5;
radiusG = ((X-dxg).^2 + (Y-dyg).^2).^0.5;
radiusB = ((X-dxb).^2 + (Y-dyb).^2).^0.5;

M = zeros(size);
M = double(radiusB < radius);
M = M + 2*double(radiusG < radius);
M = M + 4*double(radiusR < radius);

end

