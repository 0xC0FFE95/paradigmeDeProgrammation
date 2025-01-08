homme(pierre).
homme(marc).
homme(paul).
femme(marie).
femme(sophie).

parent(pierre, paul).
parent(marie, paul).
parent(marc, sophie).


pere(X, Y) :- homme(X), parent(X, Y).
mere(X, Y) :- femme(X), parent(X, Y).

% Exo 1
homme(jacques).
parent(jacques, marc).

% Exo 2
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
% Exo 3
frere_soeur(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

% Exo 5
L = [pierre, marie, paul, sophie].
[Tete | Queue] = [pierre, marie, paul, sophie].

% Exo 6
longueur([], 0).
longueur([_ | Queue], N) :- longueur(Queue, M), N is M + 1.


% Exo8
oncle_ou_tante(X, Y) :- parent(Z, Y), frere_soeur(X, Z), X \= Z.  

% Exo 9
parent(julie, sophie).
femme(julie).

cousin(X,Y) :- parent(Z, X), frere_soeur(Z, W), parent(W, Y).


/*
 Exercice 1 : Ajouter de nouveaux faits et requêtes

⦁	Qui est le père de Marc ?
pere(X, marc).
X = jacques.

⦁	Marc a-t-il des enfants ?
parent(marc, Y).
Y = sophie.



Exercice 2 : Règle pour les Grands-parents

⦁	Qui est le grand-parent de Paul ?
grandparent(X, paul).
false.
Il n'y en a pas.

	Jacques est-il grand-parent de Sophie ?
grandparent(jacques, sophie).
true.
Exercice 3 : Règle pour les Frères et Sœurs
Ajoutez une règle pour définir les frères et sœurs :

Ensuite, posez les questions suivantes :
⦁	Paul a-t-il des frères ou des sœurs ?
frere_soeur(Paul, Y).
false.
Paul n'a pas de frères ou soeurs.


Exercice 4 : Requêtes avec Variables

⦁	Trouvez tous les hommes dans la base de données :
 homme(X).
X = pierre ;
X = marc ;
X = paul ;
X = jacques.

⦁	Recherchez tous les parents de Sophie :
parent(X, sophie).
X = marc.


Exercice 8 : Règle pour les Oncles et Tantes

⦁	Marc est-il l'oncle de Paul ?
oncle_ou_tante(marc, paul).
false.

⦁	Quels sont les oncles de Sophie ?
oncle_ou_tante(X, sophie).
false.

Exercice 9 : Arbre Généalogique Étendu
 
Interrogez la base de connaissances pour trouver les cousins de Paul :
cousin(X, paul).
false.
*/
