pkg load statistics% clase 2 ej 2rho = 0.5;sigma2_x = 1;sigma2_y = sigma2_x / 2;% numero de realizacionesN = 1000;mu = zeros(2,1);sigma2 = [sigma2_x                                                     rho*sigma2_x*sigma2_y;                                rho*sigma2_x*sigma2_y    sigma2_y];XY = mvnrnd(mu,sigma2,N);% dibujar X vs Yscatter(XY(:,1),XY(:,2))% encontrar la proyeccionw= [1 1 ]';% pasar de vector fila a columnaXY = XY';z = zeros(length(XY),1);for i=1:length(XY)  z (i)= w'*XY(:,i);endforfigurehist(z,100)