% Ecole des Mines d'Alès
% Nîmes, le 06/12/2016
% par Ilias YAHIA et Armel TAKOULO FONKOU

% 1 - Nettoyages
clear all   % Supprime toutes les variables de l'espace de travail
close all   % Ferme toutes les figures courantes
clc         % Nettoie l'historique des commandes

% 2 - Variables
Fe = 8000;
nb = 16;

% 3 - Data Loading
pathFile = 'D:\Etude et Formation\Ecoles\Ecole des Mines Ales\3A\EMACS\multimedia\Projets\Result_project\';
NameFlie = 'xtine.dat';

% 4 - Treatment
y = load([pathFile,NameFlie]);
lenghtY = size(y,1);
valDiff(1) = y(1);
for k = 2:lenghtY
    valDiff(k) = y(k)-y(k-1);
end
y=valDiff;
minY = min(y);
maxY = max(y);

for j = 2:2:4
    q = (maxY - minY)/(2^j);
    for i = 1:lenghtY
        amp = floor(y(i)/q+0.5)*2^(15-j)
        val(i)=amp;
        a=i;
    end
    file = strcat('xtime_Q6_',int2str(j),' bits.wav');
    wavwrite(val,Fe,nb,file);
end