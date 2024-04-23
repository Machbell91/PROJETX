import 'package:flutter/material.dart';

class MangakaPage extends StatefulWidget {
  @override
  _MangakaPageState createState() => _MangakaPageState();
}
class _MangakaPageState extends State<MangakaPage> {
  final List<Tab> _tabs = [
    const Tab(text: 'MANGAKA'),
    const Tab(text: 'Menu'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:_tabs.length,
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
                    title: const Text("Mangaka",
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
                                            "Akira TORIYAMA : Un Maître de l'Imagination\n\n\n"
                                            "Akira TORIYAMA, nom qui résonne comme une légende dans le monde du manga et de l'animation japonaise, s'est éteint le 1er mars 2024, laissant derrière lui un héritage inestimable. Maître incontesté de la narration et du design, il a insufflé vie à des univers extraordinaires qui ont marqué des générations entières. \n"
                                            "Né en 1955 à Nagoya, TORIYAMA développe dès son plus jeune âge une passion dévorante pour le dessin. Son style, unique et reconnaissable entre mille, se caractérise par des traits vifs, des expressions expressives et une énergie débordante. Son imagination fertile donne naissance à des personnages emblématiques, devenus des icônes de la culture populaire mondiale. \n"
                                            "Son œuvre la plus célèbre, **Dragon Ball**, est une épopée fantastique qui a conquis le cœur de millions de lecteurs à travers le globe. L'histoire de Son Goku, un jeune Saiyan en quête de la force ultime, a su captiver par ses combats épiques, ses personnages attachants et son humour omniprésent. Dragon Ball n'est pas seulement un manga, c'est un phénomène culturel qui a transcendé les frontières et les générations. \n"
                                            "Mais le génie de TORIYAMA ne s'arrête pas là. Il est également le créateur de **Dr Slump**, une comédie loufoque mettant en scène Arale, une androïde au caractère bien trempé. Ce manga, empreint d'un humour déjanté et d'une tendresse infinie, a valu à Toriyama son premier prix Shogakukan en 1981. \n"
                                            "Au-delà de ses propres créations, TORIYAMA a également marqué de son empreinte l'univers du jeu vidéo en collaborant avec Enix (devenu Square Enix) sur la série culte **Dragon Quest**. Son talent pour le character design a donné vie à des créatures inoubliables et contribué au succès immense de cette saga vidéoludique. \n"
                                            "Akira TORIYAMA était un artiste discret et humble, fuyant les mondanités et préférant se consacrer à son art. Sa passion pour le dessin et son imagination débordante lui ont permis de créer des univers extraordinaires qui ont touché des millions de personnes à travers le monde. Son héritage restera gravé à jamais dans l'histoire du manga et de l'animation japonaise. \n\n\n"
                                            "Le 1er mars 2024, le monde a perdu un génie, mais ses créations continueront à vivre et à inspirer pour toujours.",
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
                                          'Eiichiro ODA : Le Pirate à l\'Imagination Débordante\n\n\n'
                                            'Eiichiro ODA, né le 1er janvier 1975 à Kumamoto au Japon, est un mangaka dont le nom est synonyme d\'aventure, d\'amitié et de rêves. Son œuvre la plus célèbre, One Piece, est un manga d\'anthologie qui a conquis le cœur de millions de lecteurs à travers le monde, devenant l\'une des bandes dessinées les plus vendues de tous les temps.\n'
                                            'Dès son plus jeune âge, Oda nourrit une passion dévorante pour le dessin et les histoires. Inspiré par les œuvres d\'Akira Toriyama et d\'autres mangakas légendaires, il rêve de créer son propre univers et de partager ses aventures avec le monde. Son talent et sa détermination le mènent à la publication de son premier one-shot, Wanted!, en 1992, alors qu\'il n\'est encore qu\'un adolescent.\n'
                                            'Mais c\'est en 1997 que sa vie bascule avec la publication du premier chapitre de One Piece dans le Weekly Shonen Jump. L\'histoire de Monkey D. Luffy, un jeune pirate à la recherche du trésor légendaire \"One Piece\", et de son équipage, la Straw Hat Crew, navigue rapidement vers le succès. Le manga captive par son intrigue captivante, ses personnages attachants, son humour débordant et ses valeurs d\'amitié, de persévérance et de liberté.\n'
                                            'One Piece devient un phénomène mondial, se traduisant en plus de 40 langues et se vendant à plus de 500 millions d\'exemplaires à travers le monde. L\'univers d\'ODA s\'étend au-delà du manga, avec des adaptations en anime, en films, en jeux vidéo et en produits dérivés. Le manga inspire également des communautés de fans passionnés qui partagent leur amour pour l\'œuvre et ses personnages.\n'
                                            'Oda est reconnu comme un maître du storytelling et du character design. Son style artistique, reconnaissable entre mille, se caractérise par des traits vifs, des expressions expressives et une énergie débordante. Il crée des personnages complexes et attachants, dotés de personnalités uniques et d\'histoires poignantes.\n'
                                            'Mais ODA est bien plus qu\'un simple dessinateur. C\'est un véritable conteur, un bâtisseur de mondes, un tisseur de rêves. Il insuffle vie à ses personnages et à ses univers avec une passion contagieuse, transportant ses lecteurs dans des aventures extraordinaires pleines d\'humour, d\'action et d\'émotions.\n\n\n'
                                            'Eiichiro ODA est un trésor national japonais et une icône mondiale de la bande dessinée. Son œuvre a marqué des générations entières et continue d\'inspirer des millions de personnes à travers le monde. Son héritage est celui d\'un artiste visionnaire qui a su créer un univers unique et inoubliable, où l\'imagination et l\'aventure règnent en maître.',
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

