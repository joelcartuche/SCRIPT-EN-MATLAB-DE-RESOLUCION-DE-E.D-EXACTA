</head><body><div class="content"><h1></h1><!--introduction--><!--/introduction--><h2>Contents</h2><div><ul><li><a href="#1"><b>SCRIPT EN MATLAB DE RESOLUCION DE E.D EXACTA</b></a></li><li><a href="#2">Inizializacion de variables</a></li><li><a href="#3">Paso 1</a></li><li><a href="#4">PASO 2</a></li><li><a href="#5">PASO 3</a></li><li><a href="#6">SOLUCI&Oacute;N</a></li></ul></div><h2 id="1"><b>SCRIPT EN MATLAB DE RESOLUCION DE E.D EXACTA</b></h2><pre>*Autor:* Joel Cartuche
*Fecha:* 27/05/2021</pre><p><b>Ejercicio 1:</b>  (2x+y)dx +(x-3y) dy = 0</p><h2 id="2">Inizializacion de variables</h2><pre class="codeinput">clear;clc;
syms <span class="string">x</span> <span class="string">y</span> <span class="string">g(y)</span> <span class="string">C</span>
M = 2*x + y;
N = x - 3*y;
</pre><h2 id="3">Paso 1</h2><p>Comprobamos si es una E.D exacta</p><pre class="codeinput">dM = diff(M,y); <span class="comment">%dM contiene DM/DY</span>
dN = diff(N,x); <span class="comment">%dN contiene DN/DX</span>
<span class="keyword">if</span>(dM-dN) ~= 0 <span class="comment">%si no es igual a cero no es una ecuacion diferencial exacta</span>
    fprintf(<span class="string">'La E.D no es exacta'</span>)
<span class="keyword">else</span>
</pre><h2 id="4">PASO 2</h2><p>Aplicamos integracion a M o N y obtenemos f(x,y)</p><pre class="codeinput">    f(x,y) = int(M,<span class="string">'x'</span>); <span class="comment">% contiene la integral de M en funcion de x</span>
</pre><h2 id="5">PASO 3</h2><p>Igualamos f(x,y)=c</p><pre class="codeinput">    <span class="comment">%Restamos la ecuacion N y derivamos con respecto a y</span>
    fy= N-diff(f(x,y),<span class="string">'y'</span>);

    <span class="comment">%integramos para obtener el resultado de g(y)</span>
    g(y) = int(fy,<span class="string">'y'</span>);
</pre><h2 id="6">SOLUCI&Oacute;N</h2><pre class="codeinput">    c = f(x,y) + g(y);
    pretty(c)
</pre><pre class="codeoutput">               2
            3 y
x (x + y) - ----
              2

</pre><pre class="codeinput"><span class="keyword">end</span>
</pre><p class="footer"><br><a href="https://www.mathworks.com/products/matlab/">Published with MATLAB&reg; R2019a</a><br></p></div><!--
##### SOURCE BEGIN #####

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
##### SOURCE END #####
--></body></html>
