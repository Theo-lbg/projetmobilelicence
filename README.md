<!-- ABOUT THE PROJECT -->
## About The Project

Ce projet est réalisé par Lebegue Theo et Kaddouri Yassine.
Ce projet est une application Cross Platform ! '
L'utilisateur peut donc avoir accès à une liste de film, ainsi que la possibilité pour lui d'effectuer une fonction de recherche, d'ailleurs il lui est également possible de rechercher autours de lui les cinémas disponible aux alentours.''''

/!\ Attention L'API GOOGLE MAP EST NON UTILISABLE SUR WEB, CELLE CI EST ADAPTEE UNIQUEMENT SUR MOBILE, VEILLEZ DONC A LANCER L'APPLICATION SUR MOBILE ET NON PC OU EMULATEUR /!\

### Built With

* 🖊️ Dart - Flutter (Framework)
* 🐙 Github / Discord
* 💻 Visual Studio Code / Android Studio / API GOOGLE MAP / API OmdbAPI 

<!-- Explication de notre Application -->
Notre application est une application de référencement de films.
Nous avons utilisé l'API donnée en cours et nous avons décidé de travailler sur un certain nombre de films limité et non pas toute l'API. 

Pourquoi ?
Tout simplement car l'API comporte des centaines voir des milliers de films, de ce fait le chargement des films sur notre Application est donc beaucoup trop long.
Nous avons donc décidé de travaillé sur 10 films portant sur le thème de Avengers.

Présentation des pages ?
L'AppBar ?
Nous avons développé une AppBar qui contient en fonction des pages soit une loupe soit un coeur.
La loupe va permettre d'effectuer la recherche d'un film et le coeur d'accéder à la page "Mes Favoris" afin de consulter, et supprimer ou non les favoris que nous avons choisis.

La BottomNavigationBar ?
Nous avons réalisés une BottomNavigationBar qui va afficher des boutons différents en fonction de la page sur laquelle on se trouve : 
-Si nous sommes sur la page Film_View : La bottom bar affiche les boutons Home pour revenir sur la page d'accueil de notre application et le bouton Favoris qui permet d'aller sur la page Favoris afin de mettre des films en favoris.
-Si nous sommes sur la page favorite_page : La bottom bar affiche le bouton Home et le bouton Film pour revenir sur la page Film_View qui concerne les films appelés en Appel d'API.

Le SplashScreen ?
Avant de vous présenter notre application, laissez nous vous parlez d'une idée mise en place et qui peut faire la différence sur une application : le SplashScreen 
Le Splashscreen est la page de chargement qui va permettre de faire attendre l'utilisateur le temps que l'application se charge.
Nous avons donc réalisé une splashScreen afin d'apporter un côté professionnel à notre Application.

La Page d'Accueil ?
Sur notre page d'accueil on retrouve donc un background avec un bouton en bas à droite de notre écran qui permet de se rendre sur notre page Cinéma qui regroupe les cinémas des environs. On en reparlera par la suite.
De plus nous avons un bouton centré qui permet d'accéder à la liste des films générées par notre API.

La Page Cinéma ?
La page cinéma est accessible directement via notre page d'acueil.
Lorsque nous sommes sur cette page, nous pouvons observer les différents cinémas des alentours de Valenciennes.
Cette carte google maps est une API.
Nous avons donc 2 APIS dans notre application : l'API Film et l'API GOOGLE MAPS
Nous avons implémenté un bouton switch qui va permettre d'avoir une vue différente de notre maps.
La vue hybride, elle apparait lorsque l'on change l'état du switch.
Nous avons également un bouton en bas-centre qui permet de recentrer notre point de localisation par défaut.
Attention l'API google maps est utilisable uniquement sur mobile et non pas sur pc ou encore émulateur, veillez donc à bien lancer l'application directement sur un mobile.

La Page Film_View ? 
La page Film_View va générer la liste de film de notre API, en l'occurence ici les 10 films ET séries avengers.
Nous avons décidé de ne pas forcément afficher de description pour chaque film mais plutôt d'afficher son année de sortie et son type donc Movie ou Serie.
On affiche également l'affiche du film en arrière-plan.
Tout cela dans des containers dans une List View.
Dans l'AppBar, il y a bien une loupe qui lorsque l'on clique dessus va nous diriger sur la page recherche afin d'effectuer une recherche d'un film.
De plus, concernant cette recherche nous avons préférés mettre du code brut plutôt que l'API tout simplement car au vu du nombre de film (10 films/séries), il n'ai pas nécessaire d'utiliser de la mémoire pour faire un appel d'API dans la barre de recherche.
La barre de recherche nous montre donc le résultat que l'on souhaite lorsqu'on écrit l'intitulé d'un film.
Nous avons en plus de cela l'API qui fonctionne sans soucis sur la page Film_View et une API Google Maps sur la page cinéma.
Le fait donc de mettre du code brut à la place de l'appel d'API n'est donc pas réellement dérangeant.

La Page favorite_list ?
Elle va nous permettre d'afficher nos 10 films et de choisir les films que l'on souhaite mettre en favoris.
Une fois qu'on clique sur l'icone/bouton coeur, le film est automatiquement ajouté à nos Favoris.
On peux choisir de l'enlever des favoris directement sur cette page.
Nous avons décidé d'afficher nos 10 films en code brut et non d'utiliser l'appel d'API car cela était plus adapté à notre page Favoris.
A noter : la page favoris est une page que nous avons décidé d'ajouter en plus des pages demandées dans le sujet.

La Page favoris_page ?
Cette page va donc référencer les films que l'utilisateur a mis en favoris.
On peux supprimer les films de la page Mes Favoris en cliquant sur l'icone Poubelle.
Le bouton film de la bottom bar va nous permettre de retourner sur notre page Film_View qui contient notre Appel d'API.

En espérant que notre va vous plaire ! 





<!-- CONTACT -->
Kaddouri Yassine - kaddouriyassine10@hotmail.com - N°Étudiant 22002107
Lebègue Théo	- theo.lebegue@icloud.com - N°Étudiant 22001641

