import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'MangakaPage.dart';
import 'GenesisPage.dart';
import 'EditionsPage.dart';
import 'DeclinaisonPage.dart';
import 'PremierJpage.dart';
import 'LesAnimes.dart';
import 'main.dart';

class LesAnimes extends StatefulWidget {
  final String dragonBallSeries;
  final String onePieceSeries;

  LesAnimes({required this.dragonBallSeries, required this.onePieceSeries});

  @override
  _LesAnimesState createState() => _LesAnimesState();
}

class _LesAnimesState extends State<LesAnimes> with SingleTickerProviderStateMixin {
  late TextStyle bodyStyle;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bodyStyle = DefaultTextStyle.of(context).style;
  }

  final List<Tab> _tabs = [
    const Tab(text: 'LES ANIMÉS'),
    const Tab(text: 'MENU'),
  ];

String dragonBallSeries = "LES SÉRIES DRAGON BALL\n\n\n" 
"'Dragon Ball (1986-1989)' :\n\n" 
"- Année de diffusion : 1986 au Japon.\n" 
"- Pays de diffusion : Diffusé dans de nombreux pays à travers le monde.\n" 
"- Nombre d'épisodes : 153 épisodes dans la série originale de Dragon Ball.\n" 
"- Résumé : Dragon Ball suit les aventures de Goku, un jeune garçon avec une queue de singe, alors qu'il part à la recherche des Dragon Balls, des artefacts magiques qui accordent un vœu lorsqu'ils sont réunis. Le voyage de Goku le conduit à rencontrer de nombreux amis et ennemis, à participer à des tournois de combat et à affronter des adversaires puissants.\n\n\n" 
"'Dragon Ball Z (1989-1996)' :\n\n" 
"- Année de diffusion : 1989 au Japon.\n" 
"- Pays de diffusion : Diffusé dans de nombreux pays à travers le monde.\n" 
"- Nombre d'épisodes : 291 épisodes dans la série originale de Dragon Ball Z.\n" 
"- Résumé : Dragon Ball Z se déroule plusieurs années après les événements de Dragon Ball et suit les aventures de Goku adulte alors qu'il défend la Terre contre de puissants ennemis, y compris des extraterrestres et des dieux de la destruction. La série met l'accent sur les combats épiques et les transformations surhumaines des personnages principaux.\n\n\n" 
"'Dragon Ball GT (1996-1997)':\n\n" 
"- Année de diffusion : 1996 au Japon.\n" 
"- Pays de diffusion : Diffusé dans de nombreux pays à travers le monde.\n" 
"- Nombre d'épisodes : 64 épisodes dans la série de Dragon Ball GT.\n" 
"- Résumé : Dragon Ball GT suit les aventures de Goku, Trunks et Pan alors qu'ils voyagent à travers l'univers pour retrouver les Dragon Balls dispersés dans l'espace. La série explore de nouveaux mondes et introduit de nouveaux personnages, tout en ramenant des adversaires familiers des séries précédentes.\n\n\n" 
"'Dragon Ball Super (2015-2018)' :\n\n" 
"- Année de diffusion : 2015 au Japon.\n" 
"- Pays de diffusion : Diffusé dans de nombreux pays à travers le monde.\n" 
"- Nombre d'épisodes : 131 épisodes dans la série de Dragon Ball Super.\n" 
"- Résumé : Dragon Ball Super reprend après les événements de Dragon Ball Z et suit les aventures de Goku et ses amis alors qu'ils affrontent de nouveaux ennemis et participent à des tournois intergalactiques. La série introduit de nouveaux personnages et de nouveaux univers, tout en explorant les thèmes de la famille, de l'amitié et du dépassement de soi.\n\n\n";

String onePieceSeries = "Les Séries One Piece\n\n\n" 
"'One Piece' :\n\n" 
"- Année de diffusion : 1999 au Japon.\n" 
"- Pays de diffusion : Diffusé dans de nombreux pays à travers le monde.\n" 
"- Nombre d'épisodes : Plus de 1000 épisodes et en cours.\n" 
"- Résumé : One Piece suit les aventures de Monkey D. Luffy, un jeune homme qui rêve de devenir le roi des pirates. Avec son équipage de pirates, les Chapeaux de Paille, Luffy explore les mers à la recherche du légendaire trésor One Piece, laissé par l'ancien Roi des Pirates, Gol D. Roger. La série explore des mondes fantastiques, des combats épiques, l'amitié et la poursuite de ses rêves.\n\n\n";

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
                    "LES SÉRIES DRAGON BALL",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "'Dragon Ball (1986-1989)'",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "- Année de diffusion : 1986 au Japon.\n" 
                    "- Pays de diffusion : Diffusé dans de nombreux pays à travers le monde.\n"
                    "- Nombre d'épisodes : 153 épisodes dans la série originale de Dragon Ball.\n"
                    "- Résumé : Dragon Ball suit les aventures de Goku, un jeune garçon avec une queue de singe, alors qu'il part à la recherche des Dragon Balls, des artefacts magiques qui accordent un vœu lorsqu'ils sont réunis. Le voyage de Goku le conduit à rencontrer de nombreux amis et ennemis, à participer à des tournois de combat et à affronter des adversaires puissants.\n",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "'Dragon Ball Z (1989-1996)'",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "- Année de diffusion : 1989 au Japon.\n"
                    "- Pays de diffusion : Diffusé dans de nombreux pays à travers le monde.\n"
                    "- Nombre d'épisodes : 291 épisodes dans la série originale de Dragon Ball Z.\n"
                    "- Résumé : Dragon Ball Z se déroule plusieurs années après les événements de Dragon Ball et suit les aventures de Goku adulte alors qu'il défend la Terre contre de puissants ennemis, y compris des extraterrestres et des dieux de la destruction. La série met l'accent sur les combats épiques et les transformations surhumaines des personnages principaux.\n",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "'Dragon Ball GT (1996-1997)'",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "- Année de diffusion : 1996 au Japon.\n"
                    "- Pays de diffusion : Diffusé dans de nombreux pays à travers le monde.\n"
                    "- Nombre d'épisodes : 64 épisodes dans la série de Dragon Ball GT.\n"
                    "- Résumé : Dragon Ball GT suit les aventures de Goku, Trunks et Pan alors qu'ils voyagent à travers l'univers pour retrouver les Dragon Balls dispersés dans l'espace. La série explore de nouveaux mondes et introduit de nouveaux personnages, tout en ramenant des adversaires familiers des séries précédentes.\n",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "'Dragon Ball Super (2015-2018)'",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "- Année de diffusion : 2015 au Japon.\n"
                    "- Pays de diffusion : Diffusé dans de nombreux pays à travers le monde.\n"
                    "- Nombre d'épisodes : 131 épisodes dans la série de Dragon Ball Super.\n"
                    "- Résumé : Dragon Ball Super reprend après les événements de Dragon Ball Z et suit les aventures de Goku et ses amis alors qu'ils affrontent de nouveaux ennemis et participent à des tournois intergalactiques. La série introduit de nouveaux personnages et de nouveaux univers, tout en explorant les thèmes de la famille, de l'amitié et du dépassement de soi.\n",
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
                    "Les Séries One Piece",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "'One Piece'",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "- Année de diffusion : 1999 au Japon.\n"
                    "- Pays de diffusion : Diffusé dans de nombreux pays à travers le monde.\n"
                    "- Nombre d'épisodes : Plus de 1000 épisodes et en cours.\n"
                    "- Résumé : One Piece suit les aventures de Monkey D. Luffy, un jeune homme qui rêve de devenir le roi des pirates. Avec son équipage de pirates, les Chapeaux de Paille, Luffy explore les mers à la recherche du légendaire trésor One Piece, laissé par l'ancien Roi des Pirates, Gol D. Roger. La série explore des mondes fantastiques, des combats épiques, l'amitié et la poursuite de ses rêves.\n",
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
                      "LES ANIMÉS",
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
                                      'DRAGONBALL',
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
                                                        FlutterTts().speak(dragonBallSeries);
                                                      },
                                                      child: Icon(Icons.volume_up, color: primaryColor),
                                                    ),
                                                  ),
                                                  Offstage(
                                                    offstage: true,
                                                    child: TextToSpeechWidget(text: dragonBallSeries)),                                                 
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
                                      'ONE PIECE',
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
                                                        FlutterTts().speak(onePieceSeries);
                                                      },
                                                      child: Icon(Icons.volume_up, color: primaryColor),
                                                    ),
                                                  ),
                                                  Offstage(
                                                    offstage: true,
                                                    child: TextToSpeechWidget(text: onePieceSeries),
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
                              MaterialPageRoute(builder: (context) => LesAnimes(dragonBallSeries: '', onePieceSeries: '',)),
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
