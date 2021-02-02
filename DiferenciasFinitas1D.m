%Tarea Extraclase Transferencia de Calor
%Maria Fernanda Abarca Jimenez,B50013
%Karen Sandi Ramirez, B56745

clear variables
clc

%parámetros del enunciado
k= 0.89; %Conductividad Termica
p=2600; %Densidad rho
cp=800;%Calor Especifico
L=0.08; %Espesor de la placa de resina
h=35; %Coeficiente de Transferencia de Calor por Conv
M=3; %Numero de Nodos
tiempo=90; %tiempo de Analisis deseado (min)

%Temperaturas
Ti=20; %Temperatura Inicial
Too= 100; %Temperatura Fluido

%Calculos Basicos
alpha= k/(p*cp); %Difusividad Termica
tiempoTotal=tiempo*60; %Tiempo total en segundos
deltaX= L/(M-1); %Tamaño de DeltaX

%Para Cumplir Criterio de Estabilidad
deltaTMax=((deltaX)^2)/(2*alpha*((1)+(h*deltaX)/(k))); 
DeltaTMaxMin=deltaTMax*(1/60); %Para mostrar en minutos
%%%%El valor Maximo Admisible del intervalo de tiempo que cumple criterio de estabilidad

%Por conveniencia, intervalo de tiempo seleccionado.Solicitar
%NO deltaT= 270;
%NO nIteracionesMax= tiempoTotal/deltaT; %Numero de intervalos para llegar al tiempo de analisis.

nIteracionesMax=1000; %Solicitado
deltaT=tiempoTotal/nIteracionesMax; %Para solicitar numero de iteraciones y
%determinar deltaT de ahi. Verificar si cumple Criterio de Estabilidad
Tau= (alpha*deltaT)/((deltaX)^2); %Tau con intervalo escogido.

%Suposiciones
T0=Ti;
T1=Ti;
T2=Ti;

%Para iterar
nIteraciones = 0;


%Calculos de Temperaturas
      for i=1:nIteracionesMax 
           %temp(i) = (temp(i-1) + temp(i+1))/2; 
           %Calculo de T0i+1
           Tnodo0(i)= (1-(2*Tau)-(2*Tau*h*(deltaX/k)))*T0 + (2*Tau*T1) + (2*Tau*(h*deltaX/k)*Too);
           %Calculo de T1 i+1
           Tnodo1(i)= Tau*(T0+T2) + (1-(2*Tau))*T1;
           %Calculo de T2i, se tiene que T1i=T2i
           Tnodo2(i)= Tnodo1(i);
           
           %Se tiene entonces
           T0=Tnodo0(i);
           T1=Tnodo1(i);
           T2=Tnodo2(i);
      end
 
 
%Resultados
T0
T1
T2