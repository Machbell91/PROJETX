import 'package:flutter/material.dart';

class LesAnimes extends StatefulWidget {
  @override
  _LesAnimesState createState() => _LesAnimesState();
}
class _LesAnimesState extends State<LesAnimes> {
  final List<Tab> _tabs = [
    const Tab(text: 'LES ANIMES'),
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
                    title: const Text("Les Animes",
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
                                        children: const [
                                          Text(''),
                                          SizedBox(height: 10.0), // Add spacing
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "LES SÉRIES DRAGON BALL\n\n\n",
                                                  style: TextStyle(fontWeight: FontWeight.bold),
                                                ),
                                                TextSpan(text: "'Dragon Ball (1986-1989)' :\n\n"),
                                                TextSpan(text: "- Année de diffusion : 1986 au Japon.\n"),
                                                TextSpan(text: "- Pays de diffusion : Diffusé dans de nombreux pays à travers le monde.\n"),
                                                TextSpan(text: "- Nombre d'épisodes : 153 épisodes dans la série originale de Dragon Ball.\n"),
                                                TextSpan(text: "- Résumé : Dragon Ball suit les aventures de Goku, un jeune garçon avec une queue de singe, alors qu'il part à la recherche des Dragon Balls, des artefacts magiques qui accordent un vœu lorsqu'ils sont réunis. Le voyage de Goku le conduit à rencontrer de nombreux amis et ennemis, à participer à des tournois de combat et à affronter des adversaires puissants.\n\n\n"),
                                                TextSpan(text: "'Dragon Ball Z (1989-1996)' :\n\n"),
                                                TextSpan(text: "- Année de diffusion : 1989 au Japon.\n"),
                                                TextSpan(text: "- Pays de diffusion : Diffusé dans de nombreux pays à travers le monde.\n"),
                                                TextSpan(text: "- Nombre d'épisodes : 291 épisodes dans la série originale de Dragon Ball Z.\n"),
                                                TextSpan(text: "- Résumé : Dragon Ball Z se déroule plusieurs années après les événements de Dragon Ball et suit les aventures de Goku adulte alors qu'il défend la Terre contre de puissants ennemis, y compris des extraterrestres et des dieux de la destruction. La série met l'accent sur les combats épiques et les transformations surhumaines des personnages principaux.\n\n\n"),
                                                TextSpan(text: "'Dragon Ball GT (1996-1997)':\n\n"),
                                                TextSpan(text: "- Année de diffusion : 1996 au Japon.\n"),
                                                TextSpan(text: "- Pays de diffusion : Diffusé dans de nombreux pays à travers le monde.\n"),
                                                TextSpan(text: "- Nombre d'épisodes : 64 épisodes dans la série de Dragon Ball GT.\n"),
                                                TextSpan(text: "- Résumé : Dragon Ball GT suit les aventures de Goku, Trunks et Pan alors qu'ils voyagent à travers l'univers pour retrouver les Dragon Balls dispersés dans l'espace. La série explore de nouveaux mondes et introduit de nouveaux personnages, tout en ramenant des adversaires familiers des séries précédentes.\n\n\n"),
                                                TextSpan(text: "'Dragon Ball Super (2015-2018)' :\n\n"),
                                                TextSpan(text: "- Année de diffusion : 2015 au Japon.\n"),
                                                TextSpan(text: "- Pays de diffusion : Diffusé dans de nombreux pays à travers le monde.\n"),
                                                TextSpan(text: "- Nombre d'épisodes : 131 épisodes dans la série de Dragon Ball Super.\n"),
                                                TextSpan(text: "- Résumé : Dragon Ball Super reprend après les événements de Dragon Ball Z et suit les aventures de Goku et ses amis alors qu'ils affrontent de nouveaux ennemis et participent à des tournois intergalactiques. La série introduit de nouveaux personnages et de nouveaux univers, tout en explorant les thèmes de la famille, de l'amitié et du dépassement de soi.\n\n\n"),
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
                                                  text: "Les Séries One Piece\n\n\n",
                                                  style: TextStyle(fontWeight: FontWeight.bold),
                                                ),
                                                TextSpan(text: "'One Piece' :\n\n"),
                                                TextSpan(text: "- Année de diffusion : 1999 au Japon.\n"),
                                                TextSpan(text: "- Pays de diffusion : Diffusé dans de nombreux pays à travers le monde.\n"),
                                                TextSpan(text: "- Nombre d'épisodes : Plus de 1000 épisodes et en cours.\n"),
                                                TextSpan(text: "- Résumé : One Piece suit les aventures de Monkey D. Luffy, un jeune homme qui rêve de devenir le roi des pirates. Avec son équipage de pirates, les Chapeaux de Paille, Luffy explore les mers à la recherche du légendaire trésor One Piece, laissé par l'ancien Roi des Pirates, Gol D. Roger. La série explore des mondes fantastiques, des combats épiques, l'amitié et la poursuite de ses rêves.\n\n\n"),
                                              ],
                                              style: TextStyle(fontSize: 16.0, color: Colors.black),
                                            ),
                                            softWrap: true,
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

