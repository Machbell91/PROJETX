import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class MoralePage extends StatefulWidget {
  @override
  _MoralePageState createState() => _MoralePageState();
}

class _MoralePageState extends State<MoralePage> with SingleTickerProviderStateMixin {
  late TextStyle bodyStyle;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bodyStyle = DefaultTextStyle.of(context).style;
  }
  final List<Tab> _tabs = [
    const Tab(text: 'MORALES'),
    const Tab(text: 'Menu'),
  ];

  String dragonBallText = "Dragon Ball : Une Saga Légendaire\n\n"
      "Créé par Akira Toriyama, Dragon Ball est un manga emblématique publié pour la première fois en 1984. Depuis sa publication, il a conquis le cœur de millions de lecteurs à travers le monde.\n"
      "Histoire\n"
      "L'histoire suit les aventures de Son Goku, un jeune guerrier en quête de puissance et de sagesse. Ses péripéties, ses combats épiques et ses rencontres inoubliables ont créé une saga légendaire.\n"
      "Thèmes\n"
      "Le manga explore des thèmes comme la persévérance, l'amitié et la quête de l'excellence. Goku incarne ces valeurs en s'entraînant sans relâche pour devenir le plus fort. Les relations avec ses amis, notamment Krillin et Bulma, soulignent l'importance du travail d'équipe et de l'entraide.\n"
      "Impact culturel\n"
      "Dragon Ball est aussi connu pour ses combats intenses et sa quête des boules de cristal, objets magiques capables d'exaucer des vœux. Les aventures de Goku l'emmènent dans des contrées exotiques, rencontrant des ennemis redoutables et des alliés improbables.\n"
      "L'impact culturel de Dragon Ball est indéniable, inspirant de nombreux autres mangas et animés. Son influence s'étend bien au-delà du Japon, touchant les cœurs des fans du monde entier. Dragon Ball est plus qu'un manga : c'est une référence incontournable de la culture populaire mondiale.\n"
      "Akira Toriyama a réussi à créer un univers fascinant, rempli de personnages mémorables et de moments inoubliables. Son génie créatif a marqué l'histoire du manga et continue d'inspirer de nouvelles générations.\n\n\n";

  String onePieceText = "One Piece : Une Épopée Épique\n\n"
      "One Piece est un manga épique écrit et illustré par Eiichiro Oda. Publié pour la première fois en 1997, il raconte l'histoire de Monkey D. Luffy, un pirate rêveur à la quête du légendaire trésor One Piece.\n"
      "Histoire\n"
      "Luffy est entouré d'un équipage diversifié, chacun ayant ses propres compétences et motivations. Ensemble, ils affrontent des défis formidables et découvrent les secrets cachés de l'océan. L'amitié et la loyauté sont au cœur de leur voyage, renforçant les liens entre les membres de l'équipage.\n"
      "Thèmes\n"
      "One Piece explore également des thèmes tels que la liberté, la justice et la recherche de soi. Les aventures de Luffy l'amènent à s'opposer à des ennemis puissants et à défier les lois injustes. Sa détermination à poursuivre ses rêves inspire les lecteurs à ne jamais abandonner leurs propres aspirations.\n"
      "Impact culturel\n"
      "Le manga est reconnu pour son monde vaste et détaillé, rempli de mystères et de lieux exotiques. La créativité d'Oda se manifeste à travers les nombreuses îles, cultures et créatures qu'il a imaginées. Cela crée une expérience immersive pour les lecteurs.\n"
      "One Piece a laissé une empreinte indélébile sur la culture pop mondiale. Son influence s'étend au-delà des pages, avec des adaptations animées, des jeux vidéo et des films. C'est une œuvre qui continue de captiver les fans et de les emmener dans un voyage inoubliable.\n\n\n";

  // Constantes pour les chaînes de caractères de Dragon Ball
  String dragonBallTitle = "Dragon Ball : Une Saga Légendaire";
  String dragonBallIntroduction = "Créé par Akira Toriyama, Dragon Ball est un manga emblématique publié pour la première fois en 1984. Depuis sa publication, il a conquis le cœur de millions de lecteurs à travers le monde.";

// Constantes pour les chaînes de caractères de One Piece
  String onePieceTitle = "One Piece : Une Épopée Épique";
  String onePieceIntroduction = "One Piece est un manga épique écrit et illustré par Eiichiro Oda. Publié pour la première fois en 1997, il raconte l'histoire de Monkey D. Luffy, un pirate rêveur à la quête du légendaire trésor One Piece.";

  RichText buildDragonBallRichText() {
  return RichText(
    text: TextSpan(
      style: bodyStyle.copyWith(fontSize: 16, height: 1.5),
      children: [
        // Titre
        TextSpan(text: '$dragonBallTitle\n\n',style: TextStyle(
          color: Colors.black,
          decoration: TextDecoration.underline,
          decorationColor: Color.fromARGB(0, 255, 255, 255),
        ),),

        // Introduction
        TextSpan(text: '   $dragonBallIntroduction\n\n',style: TextStyle(
          color: Colors.black,
          decoration: TextDecoration.underline,
          decorationColor: Color.fromARGB(0, 255, 255, 255),
        ),),
        // Histoire
        TextSpan(text: "Histoire\n\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue,decoration: TextDecoration.underline,decorationColor: Color.fromARGB(0, 255, 255, 255),decorationStyle: TextDecorationStyle.wavy,)),
        TextSpan(text: "   L'histoire suit les aventures de Son Goku, un jeune guerrier en quête de puissance et de sagesse. Ses péripéties, ses combats épiques et ses rencontres inoubliables ont créé une saga légendaire.\n\n\n",style: TextStyle(
          color: Colors.black,
          decoration: TextDecoration.underline,
          decorationColor: Color.fromARGB(0, 255, 255, 255),
        ),),

        // Thèmes
        TextSpan(text: "Thèmes\n\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue,decoration: TextDecoration.underline,decorationColor: Color.fromARGB(0, 255, 255, 255),decorationStyle: TextDecorationStyle.wavy,)),
        TextSpan(text: "   Le manga explore des thèmes comme la persévérance, l'amitié et la quête de l'excellence. Goku incarne ces valeurs en s'entraînant sans relâche pour devenir le plus fort. Les relations avec ses amis, notamment Krillin et Bulma, soulignent l'importance du travail d'équipe et de l'entraide.\n\n\n",style: TextStyle(
          color: Colors.black,
          decoration: TextDecoration.underline,
          decorationColor: Color.fromARGB(0, 255, 255, 255),
        ),),

        // Impact culturel
        TextSpan(text: "Impact culturel\n\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue,decoration: TextDecoration.underline,decorationColor: Color.fromARGB(0, 255, 255, 255),decorationStyle: TextDecorationStyle.wavy,)),
        TextSpan(text: "   Dragon Ball est aussi connu pour ses combats intenses et sa quête des boules de cristal, objets magiques capables d'exaucer des vœux. Les aventures de Goku l'emmènent dans des contrées exotiques, rencontrant des ennemis redoutables et des alliés improbables.\n\n",style: TextStyle(
          color: Colors.black,
          decoration: TextDecoration.underline,
          decorationColor: Color.fromARGB(0, 255, 255, 255),
        ),),
        TextSpan(text: "   L'impact culturel de Dragon Ball est indéniable, inspirant de nombreux autres mangas et animés. Son influence s'étend bien au-delà du Japon, touchant les cœurs des fans du monde entier. Dragon Ball est plus qu'un manga : c'est une référence incontournable de la culture populaire mondiale.\n\n",style: TextStyle(
          color: Colors.black,
          decoration: TextDecoration.underline,
          decorationColor: Color.fromARGB(0, 255, 255, 255),
        ),),
        TextSpan(text: "   Akira Toriyama a réussi à créer un univers fascinant, rempli de personnages mémorables et de moments inoubliables. Son génie créatif a marqué l'histoire du manga et continue d'inspirer de nouvelles générations.\n\n\n",style: TextStyle(
          color: Colors.black,
          decoration: TextDecoration.underline,
          decorationColor: Color.fromARGB(0, 255, 255, 255),
        ),),
      ],
    ),
  );
}

RichText buildOnePieceRichText() {
  return RichText(
    text: TextSpan(
      style: bodyStyle.copyWith(fontSize: 16, height: 1.5),
      children: [
        // Titre
        TextSpan(text: '$onePieceTitle\n\n',style: TextStyle(
          color: Colors.black,
          decoration: TextDecoration.underline,
          decorationColor: Color.fromARGB(0, 255, 255, 255),
        ),),

        // Introduction
        TextSpan(text: '   $onePieceIntroduction\n\n',style: TextStyle(color: Colors.black),),

        // Histoire
        TextSpan(text: "Histoire\n\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue,decoration: TextDecoration.underline,decorationColor: Color.fromARGB(0, 255, 255, 255),decorationStyle: TextDecorationStyle.wavy,)),
        TextSpan(text: "   Luffy est entouré d'un équipage diversifié, chacun ayant ses propres compétences et motivations. Ensemble, ils affrontent des défis formidables et découvrent les secrets cachés de l'océan. L'amitié et la loyauté sont au cœur de leur voyage, renforçant les liens entre les membres de l'équipage.\n\n\n",style: TextStyle(
          color: Colors.black,
          decoration: TextDecoration.underline,
          decorationColor: Color.fromARGB(0, 255, 255, 255),
        ),),

        // Thèmes
        TextSpan(text: "Thèmes\n\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue,decoration: TextDecoration.underline,decorationColor: Color.fromARGB(0, 255, 255, 255),decorationStyle: TextDecorationStyle.wavy,)),
        TextSpan(text: "   One Piece explore également des thèmes tels que la liberté, la justice et la recherche de soi. Les aventures de Luffy l'amènent à s'opposer à des ennemis puissants et à défier les lois injustes. Sa détermination à poursuivre ses rêves inspire les lecteurs à ne jamais abandonner leurs propres aspirations.\n\n\n",style: TextStyle(
          color: Colors.black,
          decoration: TextDecoration.underline,
          decorationColor: Color.fromARGB(0, 255, 255, 255),
        ),),

        // Impact culturel
        TextSpan(text: "Impact culturel\n\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue,decoration: TextDecoration.underline,decorationColor: Color.fromARGB(0, 255, 255, 255),decorationStyle: TextDecorationStyle.wavy,)),
        TextSpan(text: "   Le manga est reconnu pour son monde vaste et détaillé, rempli de mystères et de lieux exotiques. La créativité d'Oda se manifeste à travers les nombreuses îles, cultures et créatures qu'il a imaginées. Cela crée une expérience immersive pour les lecteurs.\n\n",style: TextStyle(
          color: Colors.black,
          decoration: TextDecoration.underline,
          decorationColor: Color.fromARGB(0, 255, 255, 255),
        ),),
        TextSpan(text: "   One Piece a laissé une empreinte indélébile sur la culture pop mondiale. Son influence s'étend au-delà des pages, avec des adaptations animées, des jeux vidéo et des films. C'est une œuvre qui continue de captiver les fans et de les emmener dans un voyage inoubliable.\n\n\n",style: TextStyle(
          color: Colors.black,
          decoration: TextDecoration.underline,
          decorationColor: Color.fromARGB(0, 255, 255, 255),
        ),),
      ],
    ),
  );
}


  late AnimationController _controller;
  late Animation<Color?> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat(reverse: true);
    _animation = ColorTween(
      begin: Colors.purple.withOpacity(0.1),
      end: Colors.purple.withOpacity(0.3),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Définir une palette de couleurs
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color primaryColor = colorScheme.primary;
    final Color secondaryColor = colorScheme.secondary;
    final Color surfaceColor = colorScheme.surface;
    final Color onSurfaceColor = colorScheme.onSurface;

    // Définir une échelle de police
    final TextTheme textTheme = Theme.of(context).textTheme;
    final TextStyle? headlineStyle = textTheme.titleLarge;
    final TextStyle? subtitleStyle = textTheme.titleMedium;
    final TextStyle? bodyStyle = textTheme.bodyLarge;

    // Vérifier la taille de l'écran pour une mise en page adaptative
    final bool isMobile = MediaQuery.of(context).size.width < 600;

    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return DefaultTabController(
          length: _tabs.length,
          child: Scaffold(
            backgroundColor: _animation.value,
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
                      title: Text("Morales",
                          style: headlineStyle?.copyWith(color: onSurfaceColor)),
                      background: Image.network(
                        "assets/Uuuuuu.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SliverPersistentHeader(
                    delegate: _SliverAppBarDelegate(
                      TabBar(
                        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: primaryColor,
                        unselectedLabelColor: secondaryColor,
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
                    color: surfaceColor,
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
                                    title: Text('DRAGONBALL', style: headlineStyle),
                                    onExpansionChanged: (isExpanded) => print(isExpanded),
                                    children: [
                                      Card(
                                        clipBehavior: Clip.antiAlias,
                                        child: Column(
                                          children: [
                                            AspectRatio(
                                              aspectRatio: 16 / 9,
                                              child: Image.asset(
                                                'assets/dragonball.jpg',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            ListTile(
                                              title: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Semantics(
                                                    button: true,
                                                    label: 'Lire la description de Dragon Ball',
                                                    child: InkWell(
                                                      onTap: () {
                                                        FlutterTts().speak(dragonBallText);
                                                      },
                                                      child: Icon(Icons.volume_up, color: primaryColor),
                                                    ),
                                                  ),
                                                  Offstage(
                                                    offstage: true,
                                                    child: TextToSpeechWidget(text: dragonBallText),
                                                  ),
                                                  buildDragonBallRichText(),
                                                ],
                                              ),
                                              subtitle: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 10.0),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  ExpansionTile(
                                    title: Text('ONE PIECE', style: headlineStyle),
                                    onExpansionChanged: (isExpanded) => print(isExpanded),
                                    children: [
                                      Card(
                                        clipBehavior: Clip.antiAlias,
                                        child: Column(
                                          children: [
                                            AspectRatio(
                                              aspectRatio: 16 / 9,
                                              child: Image.asset(
                                                'assets/onepiece.jpg',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            ListTile(
                                              title: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Semantics(
                                                    button: true,
                                                    label: 'Lire la description de One Piece',
                                                    child: InkWell(
                                                      onTap: () {
                                                        FlutterTts().speak(onePieceText);
                                                      },
                                                      child: Icon(Icons.volume_up, color: primaryColor),
                                                    ),
                                                  ),
                                                  Offstage(
                                                    offstage: true,
                                                    child: TextToSpeechWidget(text: onePieceText),
                                                  ),
                                                  buildOnePieceRichText(),
                                                ],
                                              ),
                                              subtitle: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 10.0),
                                                ],
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
                            primary: primaryColor,
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
                            primary: primaryColor,
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
                            primary: primaryColor,
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
                            primary: primaryColor,
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
                            primary: primaryColor,
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
                            primary: primaryColor,
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
                            primary: primaryColor,
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
      },
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

class TextToSpeechWidget extends StatefulWidget {
  final String text;

  TextToSpeechWidget({required this.text});

  @override
  _TextToSpeechWidgetState createState() => _TextToSpeechWidgetState();
}

class _TextToSpeechWidgetState extends State<TextToSpeechWidget> {
  FlutterTts flutterTts = FlutterTts();

  @override
  void initState() {
    super.initState();
    initTts();
  }

  initTts() {
    flutterTts = FlutterTts();
    flutterTts.setLanguage("fr-FR");
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        flutterTts.speak(widget.text);
      },
      child: RichText(
        text: TextSpan(
          text: widget.text,
          style: TextStyle(fontSize: 16.0, color: Theme.of(context).colorScheme.onSurface),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    flutterTts.stop();
  }
}
