import 'package:flutter/material.dart';

class MoralePage extends StatefulWidget {
  @override
  _MoralePageState createState() => _MoralePageState();
}
class _MoralePageState extends State<MoralePage> {
  // Uncomment this section to use tabs with icons
  // final List<Tab> _tabs = [
  //   const Tab(icon: Icon(Icons.list), text: "Mangakas"),
  //   const Tab(icon: Icon(Icons.shopping_bag_rounded), text: "Cart"),
  //   const Tab(icon: Icon(Icons.person), text: "Profile"),
  // ];
  final List<Tab> _tabs = [
    const Tab(text: 'MORALES'),
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
                    title: const Text("Morales",
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
                                      title: Text('Akira TORIYAMA est un mangaka japonais.'),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Dragon Ball, Dr. Slump'),
                                          SizedBox(height: 10.0), // Add spacing
                                          Text(
                                            "Dragon Ball : Une Saga Légendaire\n\n\n"
                                              "Dragon Ball est un manga emblématique créé par Akira Toriyama. Depuis sa publication en 1984, il a conquis le cœur de millions de lecteurs à travers le monde. L'histoire suit les aventures de Son Goku, un jeune guerrier en quête de puissance et de sagesse. Ses péripéties, ses combats épiques et ses rencontres inoubliables ont créé une saga légendaire.\n"
                                              "Le manga explore des thèmes comme la persévérance, l'amitié et la quête de l'excellence. Goku incarne ces valeurs en s'entraînant sans relâche pour devenir le plus fort. Les relations avec ses amis, notamment Krillin et Bulma, soulignent l'importance du travail d'équipe et de l'entraide.\n"
                                              "Dragon Ball est aussi connu pour ses combats intenses et sa quête des boules de cristal, objets magiques capables d'exaucer des vœux. Les aventures de Goku l'emmènent dans des contrées exotiques, rencontrant des ennemis redoutables et des alliés improbables.\n"
                                              "L'impact culturel de Dragon Ball est indéniable, inspirant de nombreux autres mangas et animés. Son influence s'étend bien au-delà du Japon, touchant les cœurs des fans du monde entier. Dragon Ball est plus qu'un manga : c'est une référence incontournable de la culture populaire mondiale.\n"
                                              "Akira Toriyama a réussi à créer un univers fascinant, rempli de personnages mémorables et de moments inoubliables. Son génie créatif a marqué l'histoire du manga et continue d'inspirer de nouvelles générations.\n\n\n",
                                            
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.black,
                                            ),
                                          ),
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
                                    title: Text('Eiichiro ODA est un mangaka japonais.'),
                                    subtitle: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('One Piece'),
                                        SizedBox(height: 10.0), // Add spacing
                                        Text(
                                            "One Piece : Une Épopée Épique\n\n\n"
                                            "One Piece est un manga épique écrit et illustré par Eiichiro Oda. Publié pour la première fois en 1997, il raconte l'histoire de Monkey D. Luffy, un pirate rêveur à la quête du légendaire trésor One Piece. Cette aventure l'emmène à travers les mers du monde, rencontrant des personnages uniques et vivant des aventures extraordinaires.\n"
                                            "Luffy est entouré d'un équipage diversifié, chacun ayant ses propres compétences et motivations. Ensemble, ils affrontent des défis formidables et découvrent les secrets cachés de l'océan. L'amitié et la loyauté sont au cœur de leur voyage, renforçant les liens entre les membres de l'équipage.\n"
                                            "One Piece explore également des thèmes tels que la liberté, la justice et la recherche de soi. Les aventures de Luffy l'amènent à s'opposer à des ennemis puissants et à défier les lois injustes. Sa détermination à poursuivre ses rêves inspire les lecteurs à ne jamais abandonner leurs propres aspirations.\n"
                                            "Le manga est reconnu pour son monde vaste et détaillé, rempli de mystères et de lieux exotiques. La créativité d'Oda se manifeste à travers les nombreuses îles, cultures et créatures qu'il a imaginées. Cela crée une expérience immersive pour les lecteurs.\n"
                                            "One Piece a laissé une empreinte indélébile sur la culture pop mondiale. Son influence s'étend au-delà des pages, avec des adaptations animées, des jeux vidéo et des films. C'est une œuvre qui continue de captiver les fans et de les emmener dans un voyage inoubliable.\n\n\n",
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.black,
                                          ),
                                        ),
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

