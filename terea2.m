
%% *SCRIPT EN MATLAB DE RESOLUCION DE E.D EXACTA*
% 
%
%  *Autor:* Joel Cartuche
%  *Fecha:* 27/05/2021
%
% *Ejercicio 1:*
%  (2x+y)dx +(x-3y) dy = 0
%% Inizializacion de variables
clear;clc;
syms x y g(y) C
M = 2*x + y;
N = x - 3*y;

%% Paso 1
% Comprobamos si es una E.D exacta
dM = diff(M,y); %dM contiene DM/DY
dN = diff(N,x); %dN contiene DN/DX
if(dM-dN) ~= 0 %si no es igual a cero no es una ecuacion diferencial exacta
    fprintf('La E.D no es exacta')
else
    %% PASO 2 
    % Aplicamos integracion a M o N y obtenemos f(x,y)
    
    f(x,y) = int(M,'x'); % contiene la integral de M en funcion de x
    
    %% PASO 3
    % Igualamos f(x,y)=c
    
    %Restamos la ecuacion N y derivamos con respecto a y
    fy= N-diff(f(x,y),'y');
    
    %integramos para obtener el resultado de g(y)
    g(y) = int(fy,'y');
    
    %% SOLUCIÓN

    c = f(x,y) + g(y);
    pretty(c)
end