% Andre Atanasio Alves 113962
% Francisco Jose Gomes Pinto 113763

[x,t,num,den]= exame2(2023,1);

%% 1
a=diff(t);
% O a e Array de tempo entre instancias de amostragem ,ou seja, é o tempo
% de amostragem
Ta=a(1);
% escolhemos um indice qualquer, pois os valores sao todos iguais
Fa=1/Ta;
% Assim a frequencia de amostragem vai ser 1/Ta
%% Grafico inicial
[X,f] = espetro(x,1/Fa);
subplot(3,1,1), stem(f,abs(X))
%% 2
y = filter(num, den, x);
[Y,f2]=espetro(y,1/Fa);
subplot(3,1,3), plot(f2,abs(Y))


%% 3
[H,f1]=respfreq(num,den,Fa);
subplot(3,1,2), plot(f1,abs(H))
% A resposta em frequência do filtro diz nos como o filtro afeta as diferentes 
% frequências de um sinal que passa por ele.
% Assim podemos ver que a frequencia entre -100 e 100 vai ser atenuado
% sendo entre -10 e 10 completamente anulada

%% 4
% Aqui decidimos eliminar a frequencia 10hz
R=0.9; teta=2*pi*(10/Fa);
num=[1 -2*cos(teta) 1];
den=[1 -2*R*cos(teta) R^2];
[H,f1]=respfreq(num,den,Fa);
%subplot(2,1,1)
% plot da resposta em frequencia do filtro
%plot(f1,abs(H))
y = filter(num, den, x);
[Y,f2]=espetro(y,1/Fa);
%subplot(2,1,2)
% plot do sinal filtrado
%plot(f2,abs(Y))

%% subplot com es tres graficos
%sinal inicial
%subplot(3,1,1), stem(f,abs(X))
%resposta em frequencia do filtro
%subplot(3,1,2), plot(f1,abs(H))
%sinal filtrado
%subplot(3,1,3), plot(f2,abs(Y))
