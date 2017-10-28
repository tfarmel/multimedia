% Ecole des Mines d'Al�s
% N�mes, le 06/12/2016
% par Ilias YAHIA et Armel TAKOULO FONKOU

% 1 - Nettoyages
clear all   % Supprime toutes les variables de l'espace de travail
close all   % Ferme toutes les figures courantes
clc         % Nettoie l'historique des commandes

% 2 - D�claration et Initialisation des donn�es
Nb = 8;
Fe = 8000;

% 3 - Data Loading : path to matlab file
pathFile = 'D:\Etude et Formation\Ecoles\Ecole des Mines Ales\3A\EMACS\multimedia\Projets\Result_project\';
NameFlie = 'xtine.dat';

% 4 - Data treatment
y = load([pathFile,NameFlie]);

% 5 - R�sultats et Affichage des donn�es
wavwrite(y,Fe,Nb,'xtime_8bits.wav');
wavplay(y,Fe,'sync');

