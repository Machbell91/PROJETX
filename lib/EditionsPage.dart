import 'package:flutter/material.dart';

class EditionsPage extends StatefulWidget {
  @override
  _EditionsPageState createState() => _EditionsPageState();
}
class _EditionsPageState extends State<EditionsPage> {
  // Uncomment this section to use tabs with icons
  // final List<Tab> _tabs = [
  //   const Tab(icon: Icon(Icons.list), text: "Mangakas"),
  //   const Tab(icon: Icon(Icons.shopping_bag_rounded), text: "Cart"),
  //   const Tab(icon: Icon(Icons.person), text: "Profile"),
  // ];
  final List<Tab> _tabs = [
    const Tab(text: 'ÉDITIONS'),
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
                    title: const Text("Éditions",
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
                            children: <Widget>[
                              ExpansionTile(
                                title: Text('Akira Toriyama'),
                                onExpansionChanged: (isExpanded) => print(isExpanded),
                                children: [
                                          ListTile(
                                      leading: Image.asset('assets/akira.jpg'),
                                      title: Text('LES ÉDITIONS'),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "",
                                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                                                ),
                                                TextSpan(
                                                  text: "\"Dragon Ball édition originale (Glénat)\"\n\n",
                                                  style: TextStyle(fontWeight: FontWeight.bold),
                                                ),
                                                WidgetSpan(
                                                  child: Image.asset(
                                                    'assets/original.jpg',
                                                    height: 400,
                                                    width: double.infinity,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "\n\n• Contexte : Cette édition originale de Dragon Ball a été publiée par Glénat dans les années 1990. Elle est fidèle à la version japonaise originale et comprend les 42 volumes originaux de la série.\n\n",
                                                ),
                                                TextSpan(
                                                  text: "• Apports supplémentaires : Cette édition est appréciée pour sa fidélité au manga original et sa traduction de qualité.\n\n\n",
                                                ),
                                                TextSpan(
                                                  text: "\"Dragon Ball Perfect Edition (Glénat)\"\n\n",
                                                  style: TextStyle(fontWeight: FontWeight.bold),
                                                ),
                                                WidgetSpan(
                                                  child: Image.asset(
                                                    'assets/dbprft.jpeg',
                                                    height: 400,
                                                    width: double.infinity,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "\n\n• Contexte : La Perfect Edition a été lancée en 2008 par Glénat. Elle vise à offrir une édition remasterisée et améliorée de Dragon Ball, avec des illustrations retravaillées et une qualité d'impression supérieure.\n\n",
                                                ),
                                                TextSpan(
                                                  text: "• Apports supplémentaires : En plus des améliorations visuelles, cette édition comprend également des pages couleur originales, des interviews de l'auteur et d'autres contenus bonus.\n\n\n",
                                                ),
                                                TextSpan(
                                                  text: "\"Dragon Ball Full Color (Glénat)\"\n\n",
                                                  style: TextStyle(fontWeight: FontWeight.bold),
                                                ),
                                                WidgetSpan(
                                                  child: Image.asset(
                                                    'assets/fullcolor.jpeg',
                                                    height: 400,
                                                    width: double.infinity,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "\n\n• Contexte : Cette édition a été lancée en 2013 par Glénat. Elle présente une version entièrement colorisée de Dragon Ball, ajoutant une nouvelle dimension visuelle à l'œuvre bien-aimée.\n\n",
                                                ),
                                                TextSpan(
                                                  text: "• Apports supplémentaires : Les volumes Full Color offrent une expérience de lecture plus immersive avec des illustrations colorées éclatantes qui mettent en valeur le travail artistique d'Akira Toriyama.\n\n\n",
                                                ),
                                                TextSpan(
                                                  text: "\"Dragon Ball Édition Collector (Glénat)\"\n\n",
                                                  style: TextStyle(fontWeight: FontWeight.bold),
                                                ),
                                                WidgetSpan(
                                                  child: Image.asset(
                                                    'assets/collector.webp',
                                                    height: 400,
                                                    width: double.infinity,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "\n\n• Contexte : Cette édition a été introduite en 2019 par Glénat pour célébrer le 35e anniversaire de Dragon Ball en France. Elle vise à offrir une édition de luxe avec des bonus exclusifs pour les fans dévoués.\n\n",
                                                ),
                                                TextSpan(
                                                  text: "• Apports supplémentaires : En plus du contenu remasterisé, cette édition comprend des goodies tels que des couvertures alternatives, des illustrations exclusives, des cartes à collectionner et d'autres surprises pour les fans de Dragon Ball.\n\n\n",
                                                ),
                                                TextSpan(
                                                  text: "\"Dragon Ball Super (Glénat)\"\n\n",
                                                  style: TextStyle(fontWeight: FontWeight.bold),
                                                ),
                                                WidgetSpan(
                                                  child: Image.asset(
                                                    'assets/super.jpeg',
                                                    height: 400,
                                                    width: double.infinity,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "• Contexte : Dragon Ball Super est une nouvelle série faisant suite aux événements de Dragon Ball Z. Elle a été publiée au format manga par Glénat en France à partir de 2017, suivant la diffusion de l'anime entre 2015 et 2018.\n\n",
                                                ),
                                                TextSpan(
                                                  text: "• Apports supplémentaires : Cette série poursuit les aventures de Goku, Vegeta et leurs amis, introduisant de nouveaux personnages, transformations et enjeux de niveau divin. Elle reste fidèle à l'esprit original de Dragon Ball tout en apportant des éléments narratifs rafraîchissants pour les fans.\n\n\n\n\n\n",
                                                ),
                                              ],
                                              style: TextStyle(fontSize: 16.0, color: Colors.black),
                                            ),
                                            softWrap: true,
                                          ),
                                        ],
                                      )
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
                                              text: "Les éditions One Piece en France\n\n",
                                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                                            ),
                                            TextSpan(
                                              text: "\"One Piece Edition Originale (Glénat)\"\n\n",
                                              style: TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                            WidgetSpan(
                                              child: Image.asset(
                                                'assets/onepieceOriginal.jpeg',
                                                height: 400,
                                                width: double.infinity,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            TextSpan(
                                              text: "\n\n• Contexte : Cette édition originale de One Piece a été publiée par Glénat à partir de 1997. Elle est fidèle à la version japonaise originale et comprend les volumes publiés au fur et à mesure.\n\n",
                                            ),
                                            TextSpan(
                                              text: "• Apports supplémentaires : Cette édition est appréciée pour sa fidélité au manga original et sa traduction de qualité.\n\n\n",
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

