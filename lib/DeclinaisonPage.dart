import 'package:flutter/material.dart';

class DeclinaisonPage extends StatefulWidget {
  @override
  _DeclinaisonPageState createState() => _DeclinaisonPageState();
}
class _DeclinaisonPageState extends State<DeclinaisonPage> {
  // Uncomment this section to use tabs with icons
  // final List<Tab> _tabs = [
  //   const Tab(icon: Icon(Icons.list), text: "Mangakas"),
  //   const Tab(icon: Icon(Icons.shopping_bag_rounded), text: "Cart"),
  //   const Tab(icon: Icon(Icons.person), text: "Profile"),
  // ];
  final List<Tab> _tabs = [
    const Tab(text: 'DÉCLINAISONS'),
    const Tab(text: 'Menu'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 300.0,
                floating: false,
                pinned: true,
                stretch: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    collapseMode: CollapseMode.parallax,
                    title: const Text("Déclinations",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    background: Image.network(
                      "assets/Uuuuuu.png",
                      fit: BoxFit.cover,
                    )),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: Colors.purple,
                    unselectedLabelColor: Colors.grey,
                    tabs: _tabs,
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              // Première partie : barre d'outils et onglets
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    // Espace réservé pour la barre d'outils et les onglets
                    SizedBox(height: kToolbarHeight + 50),
                    // Liste des mangakas
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: <Widget>[
                              ExpansionTile(
                                title: Text('Akira Toriyama'),
                                onExpansionChanged: (isExpanded) => print(isExpanded),
                                children: [
                                          ListTile(
                                      leading: Image.asset('assets/akira.jpg'),
                                      title: Text(''),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "La franchise Dragon Ball\n\n",
                                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                                              ),
                                              TextSpan(
                                                text: "Dragon Ball est une franchise médiatique japonaise créée par Akira Toriyama qui a été déclinée en de nombreuses œuvres, notamment des films, des jeux vidéo et des produits dérivés.\n\n",
                                              ),
                                              TextSpan(
                                                text: "Les films :\n\n",
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: "La franchise Dragon Ball a été adaptée en de nombreux films. Le premier film, Dragon Ball : La Légende de Shenron, est sorti en 1986 et a été suivi de nombreux autres films, tels que Dragon Ball Z : La Menace de Namek, Dragon Ball Z : La Résurrection de 'F' et Dragon Ball Super : Broly. Ces films ont été projetés dans les cinémas japonais et ont connu un grand succès auprès des fans de la franchise. Certains des films ont également été doublés et diffusés dans d'autres pays, ce qui a permis à la franchise de toucher un public encore plus large.\n\n",
                                              ),
                                              TextSpan(
                                                text: "Les jeux vidéo :\n\n",
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: "La franchise Dragon Ball a également été adaptée en de nombreux jeux vidéo. Les premiers jeux vidéo Dragon Ball ont été développés pour les consoles de salon et les bornes d'arcade dans les années 1980 et 1990. Depuis lors, de nombreux jeux vidéo Dragon Ball ont été développés pour différentes plates-formes, notamment les consoles de salon, les consoles portables et les ordinateurs. Certains des jeux vidéo les plus populaires de la franchise incluent Dragon Ball Z : Budokai, Dragon Ball Xenoverse et Dragon Ball FighterZ. Ces jeux vidéo permettent aux fans de la franchise de vivre des aventures inédites et de contrôler leurs personnages préférés dans des combats épiques.\n\n",
                                              ),
                                              TextSpan(
                                                text: "Les produits dérivés :\n\n",
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: "En plus des films et des jeux vidéo, la franchise Dragon Ball a également été adaptée en de nombreux produits dérivés, tels que des jouets, des vêtements, des cartes à collectionner et des figurines. Ces produits dérivés sont très populaires auprès des fans de la franchise et sont vendus dans le monde entier. Ils permettent aux fans de collectionner des objets à l'effigie de leurs personnages préférés et de montrer leur attachement à la franchise.\n\n",
                                              ),
                                              TextSpan(
                                                text: "Les jouets :\n",
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: "Les jouets Dragon Ball sont très populaires auprès des enfants et des collectionneurs. Ils comprennent des figurines d'action, des véhicules, des peluches et des jeux de société à l'effigie des personnages de la franchise. Ces jouets permettent aux fans de revivre les aventures de leurs personnages préférés et de créer leurs propres histoires.\n\n",
                                              ),
                                              TextSpan(
                                                text: "Les vêtements :\n",
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: "Les vêtements Dragon Ball sont également très populaires auprès des fans de la franchise. Ils comprennent des t-shirts, des sweats à capuche, des casquettes et des chaussures à l'effigie des personnages et des logos de la franchise. Ces vêtements permettent aux fans de montrer leur attachement à la franchise et de se sentir proches de leurs personnages préférés.\n\n",
                                              ),
                                              TextSpan(
                                                text: "Les cartes à collectionner :\n",
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: "Les cartes à collectionner Dragon Ball sont un autre produit dérivé populaire de la franchise. Elles comprennent des cartes à jouer et à collectionner à l'effigie des personnages et des scènes de la franchise. Ces cartes permettent aux fans de collectionner des objets rares et de jouer à des jeux de cartes avec leurs amis.\n\n",
                                              ),
                                              TextSpan(
                                                text: "Les figurines :\n",
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: "Enfin, les figurines Dragon Ball sont très appréciées des collectionneurs. Elles comprennent des figurines en PVC, en résine et en métal à l'effigie des personnages de la franchise. Ces figurines sont souvent très détaillées et réalistes, ce qui en fait des objets de collection précieux pour les fans.\n\n",
                                              ),
                                              TextSpan(
                                                text: "En résumé, la franchise Dragon Ball a été déclinée en de nombreuses œuvres, notamment des films, des jeux vidéo et des produits dérivés. Ces adaptations ont connu un grand succès auprès des fans de la franchise et ont permis à Dragon Ball de toucher un public encore plus large.",
                                              ),
                                            ],
                                            style: TextStyle(fontSize: 16.0, color: Colors.black),
                                          ),
                                          softWrap: true,
                                        )
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                              ExpansionTile(
                                title: Text('Eiichiro ODA'),
                                onExpansionChanged: (isExpanded) => print(isExpanded),
                                children: [
                                  ListTile(
                                    leading: Image.asset('assets/oda.jpeg'),
                                    title: Text(''),
                                    subtitle: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "La franchise One Piece\n\n",
                                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                                              ),
                                              TextSpan(
                                                text: "One Piece est une franchise médiatique japonaise créée par Eiichiro Oda qui a été déclinée en de nombreuses œuvres, notamment des films, des jeux vidéo et des produits dérivés.\n\n",
                                              ),
                                              TextSpan(
                                                text: "Les films :\n\n",
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: "La franchise One Piece a été adaptée en de nombreux films d'animation. Le premier film, One Piece : Le Film, est sorti en 2000 et a été suivi de nombreux autres films, tels que One Piece : L'Aventure sans Issue, One Piece : Z et One Piece : Stampede. Ces films ont été projetés dans les cinémas japonais et ont connu un grand succès auprès des fans de la franchise. Certains des films ont également été doublés et diffusés dans d'autres pays, ce qui a permis à la franchise de toucher un public encore plus large.\n\n",
                                              ),
                                              TextSpan(
                                                text: "Les jeux vidéo :\n\n",
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: "La franchise One Piece a également été adaptée en de nombreux jeux vidéo. Les premiers jeux vidéo One Piece ont été développés pour les consoles de salon et les bornes d'arcade dans les années 2000. Depuis lors, de nombreux jeux vidéo One Piece ont été développés pour différentes plates-formes, notamment les consoles de salon, les consoles portables et les ordinateurs. Certains des jeux vidéo les plus populaires de la franchise incluent One Piece: Unlimited Cruise, One Piece: Pirate Warriors et One Piece: World Seeker. Ces jeux vidéo permettent aux fans de la franchise de vivre des aventures inédites et de contrôler leurs personnages préférés dans des combats épiques.\n\n",
                                              ),
                                              TextSpan(
                                                text: "Les produits dérivés :\n\n",
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: "En plus des films et des jeux vidéo, la franchise One Piece a également été adaptée en de nombreux produits dérivés, tels que des jouets, des vêtements, des cartes à collectionner et des figurines. Ces produits dérivés sont très populaires auprès des fans de la franchise et sont vendus dans le monde entier. Ils permettent aux fans de collectionner des objets à l'effigie de leurs personnages préférés et de montrer leur attachement à la franchise.\n\n",
                                              ),
                                              TextSpan(
                                                text: "Les jouets :\n",
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: "Les jouets One Piece sont très populaires auprès des enfants et des collectionneurs. Ils comprennent des figurines d'action, des véhicules, des peluches et des jeux de société à l'effigie des personnages de la franchise. Ces jouets permettent aux fans de revivre les aventures de leurs personnages préférés et de créer leurs propres histoires.\n\n",
                                              ),
                                              TextSpan(
                                                text: "Les vêtements :\n",
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: "Les vêtements One Piece sont également très populaires auprès des fans de la franchise. Ils comprennent des t-shirts, des sweats à capuche, des casquettes et des chaussures à l'effigie des personnages et des logos de la franchise. Ces vêtements permettent aux fans de montrer leur attachement à la franchise et de se sentir proches de leurs personnages préférés.\n\n",
                                              ),
                                              TextSpan(
                                                text: "Les cartes à collectionner :\n",
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: "Les cartes à collectionner One Piece sont un autre produit dérivé populaire de la franchise. Elles comprennent des cartes à jouer et à collectionner à l'effigie des personnages et des scènes de la franchise. Ces cartes permettent aux fans de collectionner des objets rares et de jouer à des jeux de cartes avec leurs amis.\n\n",
                                              ),
                                              TextSpan(
                                                text: "Les figurines :\n",
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: "Enfin, les figurines One Piece sont très appréciées des collectionneurs. Elles comprennent des figurines en PVC, en résine et en métal à l'effigie des personnages de la franchise. Ces figurines sont souvent très détaillées et réalistes, ce qui en fait des objets de collection précieux pour les fans.\n\n",
                                              ),
                                              TextSpan(
                                                text: "En résumé, la franchise One Piece a été déclinée en de nombreuses œuvres, notamment des films, des jeux vidéo et des produits dérivés. Ces adaptations ont connu un grand succès auprès des fans de la franchise et ont permis à One Piece de toucher un public encore plus large.",
                                              ),
                                            ],
                                            style: TextStyle(fontSize: 16.0, color: Colors.black),
                                          ),
                                          softWrap: true,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                      ),
                    ),
                  ],
                ),
              ),
              // Deuxième partie : contenu des autres onglets
                Center(
                  child: Wrap(
                    alignment: WrapAlignment.spaceEvenly,
                    spacing: 16.0,
                    runSpacing: 16.0,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Action du bouton 1
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                          shape: const StadiumBorder(),
                        ),
                        child: const Text("Accueil"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Action du bouton 2
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                          shape: const StadiumBorder(),
                        ),
                        child: const Text("Mangaka"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Action du bouton 3
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                          shape: const StadiumBorder(),
                        ),
                        child: const Text("La Genèse"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Action du bouton 4
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                          shape: const StadiumBorder(),
                        ),
                        child: const Text("Produits dérivés"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Action du bouton 5
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                          shape: const StadiumBorder(),
                        ),
                        child: const Text("Jeux-vidéos phares"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Action du bouton 6
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                          shape: const StadiumBorder(),
                        ),
                        child: const Text("Animes"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Action du bouton 7
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                          shape: const StadiumBorder(),
                        ),
                        child: const Text("La Morale"),
                      ),
                    ],
                  ),
                ),
              Center(child: Text(_tabs[2].text ?? "Tab 3")),
            ],
          ),
        ),
      ),
    );
  }
}
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;
  _SliverAppBarDelegate(this._tabBar);
  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return _tabBar;
  }
  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }

