
<!DOCTYPE html
  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><head>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <!--
This HTML was auto-generated from MATLAB code.
To make changes, update the MATLAB code and republish this document.
      --><title>terea2</title><meta name="generator" content="MATLAB 9.6"><link rel="schema.DC" href="http://purl.org/dc/elements/1.1/"><meta name="DC.date" content="2021-05-27"><meta name="DC.source" content="terea2.m"><style type="text/css">
html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,font,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,center,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td{margin:0;padding:0;border:0;outline:0;font-size:100%;vertical-align:baseline;background:transparent}body{line-height:1}ol,ul{list-style:none}blockquote,q{quotes:none}blockquote:before,blockquote:after,q:before,q:after{content:'';content:none}:focus{outine:0}ins{text-decoration:none}del{text-decoration:line-through}table{border-collapse:collapse;border-spacing:0}

html { min-height:100%; margin-bottom:1px; }
html body { height:100%; margin:0px; font-family:Arial, Helvetica, sans-serif; font-size:10px; color:#000; line-height:140%; background:#fff none; overflow-y:scroll; }
html body td { vertical-align:top; text-align:left; }

h1 { padding:0px; margin:0px 0px 25px; font-family:Arial, Helvetica, sans-serif; font-size:1.5em; color:#d55000; line-height:100%; font-weight:normal; }
h2 { padding:0px; margin:0px 0px 8px; font-family:Arial, Helvetica, sans-serif; font-size:1.2em; color:#000; font-weight:bold; line-height:140%; border-bottom:1px solid #d6d4d4; display:block; }
h3 { padding:0px; margin:0px 0px 5px; font-family:Arial, Helvetica, sans-serif; font-size:1.1em; color:#000; font-weight:bold; line-height:140%; }

a { color:#005fce; text-decoration:none; }
a:hover { color:#005fce; text-decoration:underline; }
a:visited { color:#004aa0; text-decoration:none; }

p { padding:0px; margin:0px 0px 20px; }
img { padding:0px; margin:0px 0px 20px; border:none; }
p img, pre img, tt img, li img, h1 img, h2 img { margin-bottom:0px; } 

ul { padding:0px; margin:0px 0px 20px 23px; list-style:square; }
ul li { padding:0px; margin:0px 0px 7px 0px; }
ul li ul { padding:5px 0px 0px; margin:0px 0px 7px 23px; }
ul li ol li { list-style:decimal; }
ol { padding:0px; margin:0px 0px 20px 0px; list-style:decimal; }
ol li { padding:0px; margin:0px 0px 7px 23px; list-style-type:decimal; }
ol li ol { padding:5px 0px 0px; margin:0px 0px 7px 0px; }
ol li ol li { list-style-type:lower-alpha; }
ol li ul { padding-top:7px; }
ol li ul li { list-style:square; }

.content { font-size:1.2em; line-height:140%; padding: 20px; }

pre, code { font-size:12px; }
tt { font-size: 1.2em; }
pre { margin:0px 0px 20px; }
pre.codeinput { padding:10px; border:1px solid #d3d3d3; background:#f7f7f7; }
pre.codeoutput { padding:10px 11px; margin:0px 0px 20px; color:#4c4c4c; }
pre.error { color:red; }

@media print { pre.codeinput, pre.codeoutput { word-wrap:break-word; width:100%; } }

span.keyword { color:#0000FF }
span.comment { color:#228B22 }
span.string { color:#A020F0 }
span.untermstring { color:#B20000 }
span.syscmd { color:#B28C00 }

.footer { width:auto; padding:10px 0px; margin:25px 0px 0px; border-top:1px dotted #878787; font-size:0.8em; line-height:140%; font-style:italic; color:#878787; text-align:left; float:none; }
.footer p { margin:0px; }
.footer a { color:#878787; }
.footer a:hover { color:#878787; text-decoration:underline; }
.footer a:visited { color:#878787; }

table th { padding:7px 5px; text-align:left; vertical-align:middle; border: 1px solid #d6d4d4; font-weight:bold; }
table td { padding:7px 5px; text-align:left; vertical-align:top; border:1px solid #d6d4d4; }





  </style></head><body><div class="content"><h1></h1><!--introduction--><!--/introduction--><h2>Contents</h2><div><ul><li><a href="#1"><b>SCRIPT EN MATLAB DE RESOLUCION DE E.D EXACTA</b></a></li><li><a href="#2">Inizializacion de variables</a></li><li><a href="#3">Paso 1</a></li><li><a href="#4">PASO 2</a></li><li><a href="#5">PASO 3</a></li><li><a href="#6">SOLUCI&Oacute;N</a></li></ul></div><h2 id="1"><b>SCRIPT EN MATLAB DE RESOLUCION DE E.D EXACTA</b></h2><pre>*Autor:* Joel Cartuche
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
