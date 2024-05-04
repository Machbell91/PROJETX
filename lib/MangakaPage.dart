import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'MangakaPage.dart';
import 'GenesisPage.dart';
import 'EditionsPage.dart';
import 'DeclinaisonPage.dart';
import 'PremierJpage.dart';
import 'LesAnimes.dart';
import 'main.dart';

class MangakaPage extends StatefulWidget {
  final String akiraToriyamaBio;
  final String eiichiroOdaBio;

  MangakaPage({required this.akiraToriyamaBio, required this.eiichiroOdaBio});

  @override
  _MangakaPageState createState() => _MangakaPageState();
}

class _MangakaPageState extends State<MangakaPage> with SingleTickerProviderStateMixin {
  late TextStyle bodyStyle;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bodyStyle = DefaultTextStyle.of(context).style;
  }

  final List<Tab> _tabs = [
    const Tab(text: 'LES MANGAKAS'),
    const Tab(text: 'MENU'),
  ];

String akiraToriyamaBio = "AKIRA TORIYAMA : Un Maître de l'Imagination\n\n"
"- Nom complet : Akira TORIYAMA\n" 
"- Date de naissance : 1955\n" 
"- Lieu de naissance : Nagoya, Japon\n"
"- Décès : 1er mars 2024\n\n" 
"Akira TORIYAMA, un mangaka japonais, est devenu une légende dans le monde du manga et de l'animation japonaise. Il laisse derrière lui un héritage inestimable, ayant insufflé vie à des univers extraordinaires qui ont marqué des générations entières.\n\n" 
"Son style se caractérise par des traits vifs, des expressions expressives et une énergie débordante. Son imagination fertile a donné naissance à des personnages emblématiques, devenus des icônes de la culture populaire mondiale.\n\n" 
"Son œuvre la plus célèbre, **Dragon Ball**, est une épopée fantastique qui a conquis le cœur de millions de lecteurs à travers le globe. L'histoire de Son Goku, un jeune Saiyan en quête de la force ultime, a captivé par ses combats épiques, ses personnages attachants et son humour omniprésent. **Dragon Ball** est devenu un phénomène culturel qui a transcendé les frontières et les générations.\n\n" 
"TORIYAMA est également le créateur de **Dr Slump**, une comédie loufoque mettant en scène Arale, une androïde au caractère bien trempé. Ce manga, empreint d'humour et de tendresse, a valu à TORIYAMA son premier prix Shogakukan en 1981.\n\n" 
"Au-delà de ses propres créations, TORIYAMA a marqué de son empreinte l'univers du jeu vidéo en collaborant avec Enix (devenu Square Enix) sur la série culte **Dragon Quest**. Son talent pour le character design a donné vie à des créatures inoubliables et contribué au succès immense de cette saga vidéoludique.\n\n" 
"Akira TORIYAMA était un artiste discret et humble, préférant se consacrer à son art. Sa passion pour le dessin et son imagination débordante lui ont permis de créer des univers extraordinaires qui ont touché des millions de personnes à travers le monde. Son héritage restera gravé à jamais dans l'histoire du manga et de l'animation japonaise.\n\n" 
"Le 1er mars 2024, le monde a perdu un génie, mais ses créations continueront à vivre et à inspirer pour toujours.";

String eiichiroOdaBio = "EIICHIRO ODA : Le Pirate à l'Imagination Débordante\n\n" 
"- Nom complet : Eiichiro ODA\n" 
"- Date de naissance : 1er janvier 1975\n" 
"- Lieu de naissance : Kumamoto, Japon\n\n" 
"Eiichiro ODA est un mangaka japonais dont le nom est synonyme d'aventure, d'amitié et de rêves. Son œuvre la plus célèbre, **One Piece**, est un manga d'anthologie qui a conquis le cœur de millions de lecteurs à travers le monde, devenant l'une des bandes dessinées les plus vendues de tous les temps.\n\n" 
"Dès son plus jeune âge, ODA nourrit une passion pour le dessin et les histoires. Inspiré par les œuvres d'Akira Toriyama et d'autres mangakas légendaires, il aspire à créer son propre univers et à partager ses aventures avec le monde.\n\n" 
"Sa carrière prend son envol en 1997 avec la publication du premier chapitre de **One Piece** dans le Weekly Shonen Jump. L'histoire de Monkey D. Luffy, un jeune pirate à la recherche du trésor légendaire 'One Piece', et de son équipage, la Straw Hat Crew, rencontre un succès fulgurant. Le manga est apprécié pour son intrigue captivante, ses personnages attachants et son humour débordant.\n\n" 
"**One Piece** devient un phénomène mondial, se traduisant en plus de 40 langues et se vendant à plus de 500 millions d'exemplaires à travers le monde. L'univers d'ODA s'étend au-delà du manga, avec des adaptations en anime, en films, en jeux vidéo et en produits dérivés. ODA est reconnu pour son talent en storytelling et en character design, créant des personnages complexes et attachants.\n\n" 
"Eiichiro ODA est un véritable conteur et bâtisseur de mondes, infusant vie à ses personnages et ses univers avec une passion contagieuse. Son héritage reste gravé dans le monde de la bande dessinée, inspirant des générations de lecteurs et d'artistes.";

  // Constantes pour les chaînes de caractères de Dragon Ball
  String dragonBallTitle = "Dragon Ball : Une Saga Légendaire";
  String dragonBallIntroduction = "Créé par Akira Toriyama, Dragon Ball est un manga emblématique publié pour la première fois en 1984. Depuis sa publication, il a conquis le cœur de millions de lecteurs à travers le monde.";

  // Constantes pour les chaînes de caractères de One Piece
  String onePieceTitle = "One Piece : Une Épopée Épique";
  String onePieceIntroduction = "One Piece est un manga épique écrit et illustré par Eiichiro Oda. Publié pour la première fois en 1997, il raconte l'histoire de Monkey D. Luffy, un pirate rêveur à la quête du légendaire trésor One Piece.";

  RichText buildDragonBallRichText() {
    return RichText(
      text: TextSpan(
        style: bodyStyle.copyWith(fontSize: 18, height: 1.5),
        children: [
          // Titre
          TextSpan(
            text: '${dragonBallTitle.toUpperCase()}\n\n',
            style: TextStyle(
              color: Color.fromARGB(255, 3, 178, 241),
              decoration: TextDecoration.underline,
              decorationColor: Color.fromARGB(0, 255, 255, 255),
              fontSize: 23,
              letterSpacing: 1.2,
              shadows: [
                Shadow(blurRadius: 0.0, color: Colors.black, offset: Offset(1.0, 1.0)),
                Shadow(blurRadius: 0.0, color: Colors.black, offset: Offset(-1.0, -1.0)),
                Shadow(blurRadius: 0.0, color: Colors.black, offset: Offset(1.0, -1.0)),
                Shadow(blurRadius: 0.0, color: Colors.black, offset: Offset(-1.0, 1.0)),
              ],
            ),
          ),
          // Introduction
          TextSpan(
            text: '   $dragonBallIntroduction\n\n',
            style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.underline,
              decorationColor: Color.fromARGB(0, 255, 255, 255),
              fontSize: 20,
            ),
          ),
          // Histoire
          WidgetSpan(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 11, 49, 145),
                    offset: Offset(0, 2),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Akira TORIYAMA : Un Maître de l'Imagination",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  SizedBox(height: 10), // Ajout d'un espace entre les éléments
                  Text(
                    "Akira TORIYAMA, nom qui résonne comme une légende dans le monde du manga et de l'animation japonaise, s'est éteint le 1er mars 2024, laissant derrière lui un héritage inestimable. Maître incontesté de la narration et du design, il a insufflé vie à des univers extraordinaires qui ont marqué des générations entières.\n\n"
                    "Né en 1955 à Nagoya, TORIYAMA développe dès son plus jeune âge une passion dévorante pour le dessin. Son style, unique et reconnaissable entre mille, se caractérise par des traits vifs, des expressions expressives et une énergie débordante. Son imagination fertile donne naissance à des personnages emblématiques, devenus des icônes de la culture populaire mondiale.\n\n"
                    "Son œuvre la plus célèbre, **Dragon Ball**, est une épopée fantastique qui a conquis le cœur de millions de lecteurs à travers le globe. L'histoire de Son Goku, un jeune Saiyan en quête de la force ultime, a su captiver par ses combats épiques, ses personnages attachants et son humour omniprésent. Dragon Ball n'est pas seulement un manga, c'est un phénomène culturel qui a transcendé les frontières et les générations.\n\n"
                    "Mais le génie de TORIYAMA ne s'arrête pas là. Il est également le créateur de **Dr Slump**, une comédie loufoque mettant en scène Arale, une androïde au caractère bien trempé. Ce manga, empreint d'un humour déjanté et d'une tendresse infinie, a valu à Toriyama son premier prix Shogakukan en 1981.\n\n"
                    "Au-delà de ses propres créations, TORIYAMA a également marqué de son empreinte l'univers du jeu vidéo en collaborant avec Enix (devenu Square Enix) sur la série culte **Dragon Quest**. Son talent pour le character design a donné vie à des créatures inoubliables et contribué au succès immense de cette saga vidéoludique.\n\n"
                    "Akira TORIYAMA était un artiste discret et humble, fuyant les mondanités et préférant se consacrer à son art. Sa passion pour le dessin et son imagination débordante lui ont permis de créer des univers extraordinaires qui ont touché des millions de personnes à travers le monde. Son héritage restera gravé à jamais dans l'histoire du manga et de l'animation japonaise.\n\n"
                    "Le 1er mars 2024, le monde a perdu un génie, mais ses créations continueront à vivre et à inspirer pour toujours.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          )
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
          TextSpan(
            text: '${onePieceTitle.toUpperCase()}\n\n',
            style: TextStyle(
              color: Color.fromARGB(255, 3, 178, 241),
              decoration: TextDecoration.underline,
              decorationColor: Color.fromARGB(0, 255, 255, 255),
              fontSize: 23,
              letterSpacing: 1.2,
              shadows: [
                Shadow(blurRadius: 0.0, color: Colors.black, offset: Offset(1.0, 1.0)),
                Shadow(blurRadius: 0.0, color: Colors.black, offset: Offset(-1.0, -1.0)),
                Shadow(blurRadius: 0.0, color: Colors.black, offset: Offset(1.0, -1.0)),
                Shadow(blurRadius: 0.0, color: Colors.black, offset: Offset(-1.0, 1.0)),
              ],
            ),
          ),
          // Introduction
          TextSpan(
            text: '   $onePieceIntroduction\n\n',
            style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.underline,
              decorationColor: Color.fromARGB(0, 255, 255, 255),
              fontSize: 20,
            ),
          ),
          // Histoire
          WidgetSpan(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 11, 49, 145),
                    offset: Offset(0, 2),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Eiichiro ODA : Le Pirate à l'Imagination Débordante",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  SizedBox(height: 10), // Ajout d'un espace entre les éléments
                  Text(
                    'Eiichiro ODA, né le 1er janvier 1975 à Kumamoto au Japon, est un mangaka dont le nom est synonyme d\'aventure, d\'amitié et de rêves. Son œuvre la plus célèbre, One Piece, est un manga d\'anthologie qui a conquis le cœur de millions de lecteurs à travers le monde, devenant l\'une des bandes dessinées les plus vendues de tous les temps.\n\n'
                    'Dès son plus jeune âge, Oda nourrit une passion dévorante pour le dessin et les histoires. Inspiré par les œuvres d\'Akira Toriyama et d\'autres mangakas légendaires, il rêve de créer son propre univers et de partager ses aventures avec le monde. Son talent et sa détermination le mènent à la publication de son premier one-shot, Wanted!, en 1992, alors qu\'il n\'est encore qu\'un adolescent.\n\n'
                    'Mais c\'est en 1997 que sa vie bascule avec la publication du premier chapitre de One Piece dans le Weekly Shonen Jump. L\'histoire de Monkey D. Luffy, un jeune pirate à la recherche du trésor légendaire "One Piece", et de son équipage, la Straw Hat Crew, navigue rapidement vers le succès. Le manga captive par son intrigue captivante, ses personnages attachants, son humour débordant et ses valeurs d\'amitié, de persévérance et de liberté.\n\n'
                    'One Piece devient un phénomène mondial, se traduisant en plus de 40 langues et se vendant à plus de 500 millions d\'exemplaires à travers le monde. L\'univers d\'ODA s\'étend au-delà du manga, avec des adaptations en anime, en films, en jeux vidéo et en produits dérivés. Le manga inspire également des communautés de fans passionnés qui partagent leur amour pour l\'œuvre et ses personnages.\n\n'
                    'Oda est reconnu comme un maître du storytelling et du character design. Son style artistique, reconnaissable entre mille, se caractérise par des traits vifs, des expressions expressives et une énergie débordante. Il crée des personnages complexes et attachants, dotés de personnalités uniques et d\'histoires poignantes.\n\n'
                    'Mais ODA est bien plus qu\'un simple dessinateur. C\'est un véritable conteur, un bâtisseur de mondes, un tisseur de rêves. Il insuffle vie à ses personnages et à ses univers avec une passion contagieuse, transportant ses lecteurs dans des aventures extraordinaires pleines d\'humour, d\'action et d\'émotions.\n\n\n'
                    'Eiichiro ODA est un trésor national japonais et une icône mondiale de la bande dessinée. Son œuvre a marqué des générations entières et continue d\'inspirer des millions de personnes à travers le monde. Son héritage est celui d\'un artiste visionnaire qui a su créer un univers unique et inoubliable, où l\'imagination et l\'aventure règnent en maître.',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          )
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

    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return DefaultTabController(
          length: _tabs.length,
          child: Scaffold(
            backgroundColor: Colors.white,
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
                      title: Text(
                      "LES MANGAKAS",
                      style: headlineStyle?.copyWith(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                      background: Image.asset(
                        "assets/banner.png",
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
                                    title: Text(
                                      'Akira TORIYAMA',
                                      style: headlineStyle?.copyWith(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        foreground: Paint()
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 0.5
                                          ..color = Color.fromARGB(255, 3, 75, 21),
                                      ),
                                    ),
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
                                                        FlutterTts().speak(akiraToriyamaBio);
                                                      },
                                                      child: Icon(Icons.volume_up, color: primaryColor),
                                                    ),
                                                  ),
                                                  Offstage(
                                                    offstage: true,
                                                    child: TextToSpeechWidget(text: akiraToriyamaBio)),                                                 
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
                                    title: Text(
                                      'Eiichirō ODA',
                                      style: headlineStyle?.copyWith(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        foreground: Paint()
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 0.5
                                          ..color = Color.fromARGB(255, 135, 3, 3),
                                      ),
                                    ),
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
                                                        FlutterTts().speak(eiichiroOdaBio);
                                                      },
                                                      child: Icon(Icons.volume_up, color: primaryColor),
                                                    ),
                                                  ),
                                                  Offstage(
                                                    offstage: true,
                                                    child: TextToSpeechWidget(text: eiichiroOdaBio),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomePage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 249, 249, 249),
                            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                            shape: const StadiumBorder(),
                          ),
                          child: Text("ACCUEIL", style: TextStyle(color:  Color.fromARGB(158, 0, 0, 0))),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MangakaPage(akiraToriyamaBio: '', eiichiroOdaBio: '',)),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 249, 249, 249),
                            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                            shape: const StadiumBorder(),
                          ),
                          child: Text("MANGAKA", style: TextStyle(color:  Color.fromARGB(158, 0, 0, 0))),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => GenesisPage(akiraToriyamaText: '', eiichiroOdaText: '',)),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 249, 249, 249),
                            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                            shape: const StadiumBorder(),
                          ),
                          child: Text("LA GENÈSE", style: TextStyle(color:  Color.fromARGB(158, 0, 0, 0))),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => EditionsPage(dragonBallText: '', onePieceText: '',)),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 249, 249, 249),
                            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                            shape: const StadiumBorder(),
                          ),
                          child: Text("ÉDITIONS", style: TextStyle(color:  Color.fromARGB(158, 0, 0, 0))),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DeclinaisonPage(dragonBallText: '', onePieceText: '',)),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 249, 249, 249),
                            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                            shape: const StadiumBorder(),
                          ),
                          child: Text("LES PRODUITS DÉRIVÉS", style: TextStyle(color:  Color.fromARGB(158, 0, 0, 0))),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PremierJpage(top3JeuxDragonBall: '', top3JeuxOnePiece: '',)),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 249, 249, 249),
                            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                            shape: const StadiumBorder(),
                          ),
                          child: Text("JEUX-VIDÉOS PHARES", style: TextStyle(color:  Color.fromARGB(158, 0, 0, 0))),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LesAnimes(dragonBallSeries: '', onePieceSeries: '',)),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 249, 249, 249),
                            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                            shape: const StadiumBorder(),
                          ),
                          child: Text("ANIMÉS", style: TextStyle(color:  Color.fromARGB(158, 0, 0, 0))),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DeclinaisonPage(onePieceText: '', dragonBallText: '')),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 249, 249, 249),
                            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                            shape: const StadiumBorder(),
                          ),
                          child: Text("LES PRODUITS DÉRIVÉES", style: TextStyle(color:  Color.fromARGB(158, 0, 0, 0))),
                        ),
                      ]
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
