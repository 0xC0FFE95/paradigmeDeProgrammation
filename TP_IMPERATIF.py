#Partie 1 : Saisie des données

nombre_etudiants = int(input("Combien d'étudiants souhaitez-vous saisir ? "))#demande à l'user de saisir le nombre d'élève
noms = [] #liste des étudiants
notes = []#liste des notes

for i in range(nombre_etudiants): #informations pour chaque étudiant
    nom = input(f"Entrez le nom de l'étudiant {i + 1} : ")
    note = float(input(f"Entrez la note de {nom} : "))
    noms.append(nom)  #ajoute dans les listes le nom et la note
    notes.append(note)

#Partie 2 : Calcul de la moyenne
def calculer_moyenne(notes): #fonction pour calculer la moyenne
   moyenne = sum(notes) / len(notes)
   print("La moyenne de la classe est de", moyenne)

calculer_moyenne(notes)

#Partie 3
def afficher_repartition(noms, notes): #fonction pour afficher les etudiants selon leurs notes
    reussite = [noms[i] for i in range(len(notes)) if notes[i] >= 10]
    echec = [noms[i] for i in range(len(notes)) if notes[i] < 10]
    print("\nÉtudiants ayant réussi :", ", ".join(reussite))
    print("Étudiants en échec :", ", ".join(echec))

afficher_repartition(noms, notes)

#Partie 4
def meilleure_note(noms, notes): #fonction pour afficher l'élève qui a la meilleur note

    max_note = max(notes)  # Trouver la meilleure note
    nom_notemax = notes.index(max_note)  # Trouver l'indice de la meilleure note
    print("L’étudiant ayant la meilleure note est", noms[nom_notemax], "avec", max_note)

meilleure_note(noms, notes)