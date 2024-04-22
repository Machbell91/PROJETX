import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class PremierJpage extends StatefulWidget {
  @override
  _PremierJpageState createState() => _PremierJpageState();
}

class _PremierJpageState extends State<PremierJpage> {
  final List<Tab> _tabs = [
    const Tab(text: 'JEUX-VIDÉOS'),
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
                  title: const Text("Jeux-Vidéos",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.asset(
                    "assets/Uuuuuu.png",
                    fit: BoxFit.cover,
                  ),
                ),
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
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: kToolbarHeight + 50),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              // Replace ExpansionTile with ListView
                              ListView(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                children: [
                                  _buildExpansionTile(
                                    title: 'TOP 3 Jeux Dragon Ball',
                                    children: [
                                      _buildGameDetail(
                                        gameTitle: 'Dragon Ball Z: Budokai Tenkaichi 3 (Spike)',
                                        videoId: '4cdsRs9Ih8g',
                                        description: "Sorti en 2007, ce jeu de combat développé par Spike est considéré comme l'un des meilleurs jeux Dragon Ball. Il propose un large éventail de personnages jouables, avec plus de 160 personnages issus de la série, et des arènes de combat en 3D.\n",
                                        additionalInfo:
                                        "Le jeu offre une expérience de combat fluide et dynamique, avec des graphismes de qualité pour l'époque et une bande-son épique.\n"
                                        "Avec plus de 3 millions d'exemplaires vendus dans le monde, le jeu a été utilisé dans de nombreux tournois d'eSports, tels que l'EVO et le TORYUKEN. Il a également reçu des critiques positives de la part des critiques et des fans, et a été nommé meilleur jeu de combat de l'année aux Spike Video Game Awards en 2007.\n\n\n\n",
                                        imageUrl: 'assets/dragonball.jpg'
                                      ),
                                      _buildGameDetail(
                                        gameTitle: 'Dragon Ball FighterZ (Arc System Works)',
                                        videoId: 'F544y7a5pZQ',
                                        description: "Développé par Arc System Works et sorti en 2018, ce jeu de combat en 2.5D est apprécié pour ses graphismes fidèles à l'anime et son gameplay compétitif.\n",
                                        additionalInfo: 
                                        "Le jeu propose une histoire originale avec des personnages inédits, des mécaniques de combat accessibles mais profondes, et un mode multijoueur en ligne. Il propose également un mode arcade, un mode entraînement et un mode histoire.\n"
                                        "Avec plus de 6 millions d'exemplaires vendus dans le monde, le jeu a été utilisé dans de nombreux tournois d'eSports, tels que l'EVO, le CEO et le TWT. Il a également reçu des critiques élogieuses de la part des critiques et des fans, et a remporté de nombreux prix, notamment celui du meilleur jeu de combat aux Game Awards en 2018.\n\n\n",
                                        imageUrl: 'assets/dragonballfighterz.jpg'
                                      ),
                                      _buildGameDetail(
                                        gameTitle: 'Dragon Ball Xenoverse 2 (Dimps)',
                                        videoId: '2DwkdaHX7Vs',
                                        description: "Suite du premier Xenoverse, ce jeu d'action-RPG développé par Dimps est sorti en 2016. Il permet aux joueurs de créer leur propre personnage et de voyager dans le temps pour revivre les moments clés de la série.\n",
                                        additionalInfo: 
                                        "Le jeu offre un vaste monde ouvert, des quêtes annexes, des transformations personnalisables, et un mode multijoueur en ligne pour affronter d'autres joueurs. Il propose également un mode histoire, un mode entraînement et un mode coopératif.\n"
                                        "Avec plus de 7 millions d'exemplaires vendus dans le monde, le jeu a été utilisé dans de nombreux tournois d'eSports, tels que le Tenkaichi Budokai et le Dragon Ball FighterZ World Tour. Il a également reçu des critiques positives de la part des critiques et des fans, et a été nommé meilleur jeu de rôle aux Game Awards en 2016.\n\n\n\n",
                                        imageUrl: 'assets/xenoverse2.jpg'
                                      ),
                                    ],
                                  ),
                                  _buildExpansionTile(
                                    title: 'TOP 3 Jeux One Piece',
                                    children: [
                                      _buildGameDetail(
                                        gameTitle: 'One Piece: Pirate Warriors 4 (Omega Force)',
                                        videoId: 'PI7rGGGlCN',
                                        description: "Sorti en 2020, ce jeu d'action développé par Omega Force est le quatrième opus de la série Pirate Warriors. Il couvre les arcs narratifs de l'île des Hommes-Poissons à l'arc Pays de Wano.\n",
                                        additionalInfo: 
                                        "Le jeu propose un gameplay dynamique et nerveux, avec des graphismes améliorés et un grand nombre de personnages jouables issus de la série. Il propose également un mode histoire, un mode libre et un mode en ligne.\n"
                                        "Avec plus de 1,5 million d'exemplaires vendus dans le monde, le jeu a été utilisé dans de nombreux tournois d'eSports, tels que le One Piece World Challenge. Il a également reçu des critiques positives de la part des critiques et des fans, et a été nommé meilleur jeu d'action aux Japan Game Awards en 2020.\n\n\n\n",
                                        imageUrl: 'assets/onepiece.jpg'
                                      ),
                                      _buildGameDetail(
                                        gameTitle: 'One Piece: World Seeker (Ganbarion)',
                                        videoId: 'hZCc7UiIzdg',
                                        description: "Développé par Ganbarion et sorti en 2019, ce jeu d'action-aventure en monde ouvert permet aux joueurs d'incarner Luffy dans une histoire originale se déroulant sur l'île mystérieuse de Prison Island.\n",
                                        additionalInfo: 
                                        "Le jeu offre des mécaniques de gameplay variées, comme l'infiltration, l'exploration et des combats dynamiques, ainsi que des quêtes annexes et des personnages secondaires issus de la série. Il propose également un mode histoire, un mode libre et un mode en ligne.\n"
                                        "Avec plus de 1 million d'exemplaires vendus dans le monde, le jeu a reçu des critiques mitigées de la part des critiques et des fans, mais a été salué pour son gameplay amusant et son histoire originale.\n\n\n\n",
                                        imageUrl: 'assets/onepiece_world_seeker.jpg'
                                      ),
                                      _buildGameDetail(
                                        gameTitle: 'One Piece: Unlimited World Red (Ganbarion)',
                                        videoId: 'ahDkZnugjWg',
                                        description: "Sorti en 2013, ce jeu d'action-aventure développé par Ganbarion propose une histoire originale dans laquelle l'équipage du Chapeau de Paille doit affronter le Pirate Rouge, un personnage créé spécialement pour le jeu.\n",
                                        additionalInfo: 
                                        "Le jeu offre des graphismes colorés et fidèles au manga, des combats en temps réel, des phases d'exploration et de plateforme, ainsi que des mécaniques de coopération entre les personnages. Il propose également un mode histoire, un mode libre et un mode en ligne.\n"
                                        "Avec plus de 1,2 million d'exemplaires vendus dans le monde, le jeu a reçu des critiques positives de la part des critiques et des fans, et a été nommé meilleur jeu d'action aux Japan Game Awards en 2013.\n\n\n\n",
                                        imageUrl: 'assets/onepiece_unlimited_world_red.jpg'
                                      ),
                                    ],
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

  Widget _buildExpansionTile({
    required String title,
    required List<Widget> children,
  }) {
    return ExpansionTile(
      title: Text(title),
      children: children,
    );
  }

  Widget _buildGameDetail({
    required String gameTitle,
    required String videoId,
    required String description,
    required String additionalInfo,
    required String imageUrl,
  }) {
    final String htmlVideo = '<iframe width="100%" height="100%" src="https://www.youtube.com/embed/$videoId" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>';

    return ListTile(
      title: Text(gameTitle),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width / 3, // Définit la largeur du conteneur à un tiers de la largeur de l'écran
            height: (MediaQuery.of(context).size.width / 3) * (9/16), // Définit la hauteur du conteneur à un tiers de la largeur de l'écran, en utilisant un aspect ratio de 16:9
            child: HtmlWidget(htmlVideo),
          ),
          SizedBox(height: 30),
          Text(
            description,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            additionalInfo,
          ),
        ],
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
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(child: _tabBar);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
