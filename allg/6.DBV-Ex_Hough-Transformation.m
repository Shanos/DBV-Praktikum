%
% 6. Praktikum - Hough-Transformation
% -----------------------------------
% Legen Sie in Ihrem Arbeitsverzeichnis ein Unterverzeichnis an:
%    6.Hough-Transformation
%
% Kopieren Sie das Notebook aus ../allg dorthin und benennen Sie es um in
%    6.Hough-Transformation_Gruppe-XY.m
% Legen Sie dort ein Unterverzeichnis 'Ergebnisse/' an.
%
% F�hren Sie die Arbeitsschritte aus, an denen ??? als Platzhalter steht
% und speichern Sie das Notebook am Ende ab (zwischendurch auch
% Sicherungskopien).
% 
% Die Aufgabenstellung sowie Hinweise finden Sie im 
%    6.DBV-Ex_Hough-Transformation.pdf

% ------------------------------------------------------------------------
%% Initialisierung:
coder = 'Cinepak';    %'None', 'Cinepak', 'Indeo3'
root = 'Y:/';
addpath( [root, 'cls_praktika/Packages_Matlab'] );
% Wechseln Sie in Ihr Unterverzeichnis
cd( [root, 'cls_praktika/DBV_Praktikum/Gruppe???'] );
allg_path = [root, 'cls_praktika/DBV_Praktikum/allg/'];

%--------------------------------------------------------------------------
%% Bild einlesen:
g = im2single( imread('Geldst�cke-klein.pgm' ) );
fig1 = figure(1); imshow(g);

%--------------------------------------------------------------------------
%% Kantendetektion:
% Wenden Sie auf das Bild geeignete Operationen an, um Bereiche mit 
% Kanten zu detektieren.
% Speichern Sie das Ergebnis ab: 'Ergebnisse/Kantenbild.tif';
???

%--------------------------------------------------------------------------
%% Kantenmaske:
% Bilden Sie daraus ein Bin�rbild, welches als Maske f�r die Kantenbereiche 
% dient (f�r Kantenbildpunkte eine eins, sonst eine 0):
% Speichern Sie das Ergebnis ab: 'Ergebnisse/Kantenmaske.tif;
???

%--------------------------------------------------------------------------
%% Parameterraum:
% Bilden Sie ein geeignet dimensioniertes Array zur Aufnahme des
% Parameterraumes f�r die Hough-Transformation zum Auffinden von Kreisen.
%
% Folgende Vorkenntnissen sind vorhanden:
% - die Objekte sind mindestens 25 Pixel von den Bildr�ndern entfernt
% - die Kreisradien liegen im Intervall [10,20]
???

%--------------------------------------------------------------------------
%% Berechnung Hough-Transformation:
% Berechnen Sie die Hough-Transformation.
% Dabei sollen folgende Intervalleinteilungen gelten:
% - Kreismittelpunkte: delta_mx = 3, delta_my = 3
% - Kreisradien: delta_r = 1
% Es gen�gt, nur jeweils jeden zweiten Pixel in x/y-Richtung zu verwenden.
???

%--------------------------------------------------------------------------
%% Parameterraum auf erlaubten Bereich einschr�nken:
% Schr�nken Sie nun den Parameterraum ein unter Nutzung obiger Vorkenntnisse.
% (dieser Schritt kann zun�chst auch �bersprungen werden).
???

%--------------------------------------------------------------------------
%% Ermittlung geeigneter Kreiskandidaten:
% - suchen Sie nun in der Hough-Transformierten die ersten 9 Maxima,
% - merken sich die entsprechenden Parameterwerte
???

%--------------------------------------------------------------------------
%% Kreisdarstellungen:
% Zeichnen Sie die Mittelpunkte und Kreise der gefundenen Objekte gr�n in
% das Originalbild ein und speichern es ab: 'Ergebnisse/Hough-Kreise.tif';
???

%--------------------------------------------------------------------------
%% Fragen: 
% Angenommen, alle Punkte einer Kante werden in der Kantenmaske erfa�t.
% Werden gro�e Kreise gegen�ber kleinen bevorzugt gefunden (bzgl. der
% Reihenfolge gefundener Maxima in der Hough-Transformierten)?
% A: ???

% Warum ist das so bzw. warum nicht?
% A: ???

% Wie k�nnte man die Bevorzugung gro�er Kreise vermeiden bzw.
% wie k�nnte man gro�e Kreise bevorzugt erkennen (Vorschlag)?
% A: ???

% Ist sonst noch etwas aufgefallen?
% A: ???

% Nennen Sie Ma�nahmen zur Beschleunigung des Verfahrens:
% A: ???

%% 
'fertig'

