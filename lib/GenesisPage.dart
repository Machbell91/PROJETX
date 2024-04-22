import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'TimerWidget.dart';

class GenesisPage extends StatefulWidget {
  @override
  _GenesisPageState createState() => _GenesisPageState();
}
class _GenesisPageState extends State<GenesisPage> {
  // Uncomment this section to use tabs with icons
  // final List<Tab> _tabs = [
  //   const Tab(icon: Icon(Icons.list), text: "Mangakas"),
  //   const Tab(icon: Icon(Icons.shopping_bag_rounded), text: "Cart"),
  //   const Tab(icon: Icon(Icons.person), text: "Profile"),
  // ];
  final List<Tab> _tabs = [
    const Tab(text: 'GENÈSE'),
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
                    title: const Text("LA GENÈSE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    background: Image.network(
                      "assets/Uuuuuu.png",
                      fit: BoxFit.cover,
                    )),
                actions: [
                  Row(
                    children: [
                      TimerWidget(),
                      IconButton(
                        icon: Icon(Icons.logout),
                        onPressed: () {
                          FirebaseAuth.instance.signOut();
                        },
                      ),
                    ],
                  ),
                ],
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
                                            "Akira Toriyama : Le Créateur de l'Univers de Dragon Ball\n\nAkira Toriyama est un mangaka connu pour avoir créé l'univers de Dragon Ball, l'une des séries de manga et d'anime les plus populaires au monde. Toriyama a commencé à travailler sur Dragon Ball en 1984, en s'inspirant de plusieurs sources, notamment la légende chinoise du Roi Singe, le manga de science-fiction 'Tetsujin 28-go' et les films de kung-fu de Jackie Chan. Il a également puisé dans son imagination débordante pour créer des personnages et des lieux uniques et mémorables.\n\nToriyama a rencontré quelques difficultés au début de sa carrière de mangaka, et il a essuyé plusieurs refus de publication avant de connaître le succès avec Dragon Ball. Avant de créer Dragon Ball, Toriyama a travaillé sur plusieurs autres séries de manga, telles que 'Dr. Slump' et 'Dragon Boy'. 'Dr. Slump' a été publié dans le magazine Weekly Shonen Jump en 1980 et a été un succès, mais 'Dragon Boy' a été refusé par plusieurs éditeurs avant d'être finalement publié dans un magazine différent. Toriyama a également eu du mal à trouver un éditeur pour Dragon Ball au début, mais il a persévéré et a finalement réussi à convaincre le magazine Weekly Shonen Jump de publier sa série.\n\nAkira Toriyama a travaillé dur pour créer l'univers de Dragon Ball en développant des personnages complexes et en imaginant des lieux et des technologies futuristes. Par exemple, il a créé le personnage de Son Goku, un garçon doté d'une queue de singe et de pouvoirs magiques, qui évolue au fil de la série pour devenir un guerrier puissant et respecté. Il a également imaginé des lieux tels que la planète Namek et la salle de l'esprit et du temps, qui sont devenus des éléments emblématiques de la série.\n\nToriyama a également introduit de nombreux éléments de la mythologie et de la culture japonaise dans sa série, ce qui a contribué à son succès auprès du public japonais. Par exemple, il a utilisé des noms de personnages et de lieux inspirés de la mythologie japonaise, tels que le roi Piccolo et le palais du roi Enma. Il a également incorporé des éléments de la culture japonaise, tels que les arts martiaux et les croyances religieuses, dans l'univers de Dragon Ball.\n\nAu fil des ans, Toriyama a continué à développer et à enrichir l'univers de Dragon Ball en créant de nouveaux personnages et en explorant de nouvelles idées et thèmes. Par exemple, il a introduit des personnages tels que Vegeta et Trunks, qui sont devenus des favoris des fans, et a exploré des thèmes tels que la rédemption et la protection de la planète. Il a également créé des suites et des spin-offs de la série originale, ainsi que des films et des jeux vidéo, qui ont permis de développer encore plus l'univers de Dragon Ball.\n\nEn résumé, Akira Toriyama a travaillé dur pour créer l'univers de Dragon Ball en développant des personnages complexes et en imaginant des lieux et des technologies futuristes. Il a également introduit de nombreux éléments de la mythologie et de la culture japonaise dans sa série, ce qui a contribué à son succès auprès du public japonais. Au fil des ans, Toriyama a continué à développer et à enrichir l'univers de Dragon Ball en créant de nouveaux personnages et en explorant de nouvelles idées et thèmes."
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
                                          " Eiichiro Oda a construit l'univers de One Piece en s'inspirant de nombreuses sources, notamment de la culture populaire, de l'histoire, de la mythologie et de ses propres expériences.\n\nIl a commencé à développer l'idée de One Piece alors qu'il était encore adolescent, en créant des personnages et des concepts pour son propre plaisir.\n\nLorsqu'il a commencé à travailler sur One Piece de manière professionnelle, Oda a soumis son travail à plusieurs éditeurs, mais il a essuyé de nombreux refus. Cependant, il a persévéré et a continué à développer son univers et ses personnages, en incorporant les commentaires et les suggestions des éditeurs qu'il a rencontrés.\n\nOda a finalement réussi à publier son premier one-shot, Wanted!, dans le magazine Weekly Shonen Jump en 1992. Bien que ce one-shot n'ait pas été directement lié à One Piece, il a permis à Oda de se faire remarquer par les éditeurs et de commencer à travailler sur des projets plus importants.\n\nEn 1997, Oda a publié le premier chapitre de One Piece dans le Weekly Shonen Jump. L'histoire suit les aventures de Monkey D. Luffy, un jeune pirate à la recherche du trésor légendaire 'One Piece', et de son équipage, la Straw Hat Crew. Oda a créé un univers riche et complexe pour One Piece, avec des îles et des cultures uniques, des personnages mémorables et des intrigues captivantes.\n\nOda a également incorporé de nombreux éléments de la culture populaire et de l'histoire dans son univers. Par exemple, il a utilisé des références à des pirates célèbres, tels que Barbe Noire et Barbe Blanche, pour créer des personnages et des intrigues. Il a également utilisé des éléments de la mythologie et de la légende, tels que les fruits du démon et les géants, pour enrichir son univers.\n\nAu fil des ans, Oda a continué à développer et à enrichir l'univers de One Piece, en introduisant de nouveaux personnages et de nouvelles intrigues. Il a également exploré de nouveaux thèmes et idées, tels que la rédemption, la justice et la liberté. One Piece est devenu un phénomène mondial, avec des millions de fans à travers le monde, et Oda continue de travailler sur la série aujourd'hui.\n\nEn résumé, Eiichiro Oda a construit l'univers de One Piece en s'inspirant de nombreuses sources et en persévérant malgré les refus initiaux des éditeurs. Il a créé un univers riche et complexe, avec des personnages mémorables et des intrigues captivantes, en incorporant des éléments de la culture populaire, de l'histoire et de la mythologie. One Piece est devenu un phénomène mondial, avec des millions de fans à travers le monde, et Oda continue de travailler sur la série aujourd'hui. ",
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

