import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'MangakaPage.dart';
import 'GenesisPage.dart';
import 'EditionsPage.dart';
import 'DeclinaisonPage.dart';
import 'PremierJpage.dart';
import 'LesAnimes.dart';
import 'main.dart';

class EditionsPage extends StatefulWidget {
  final String dragonBallText;
  final String onePieceText;

  EditionsPage({required this.dragonBallText, required this.onePieceText});

  @override
  _EditionsPageState createState() => _EditionsPageState();
}

class _EditionsPageState extends State<EditionsPage> with SingleTickerProviderStateMixin {
  late TextStyle bodyStyle;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bodyStyle = DefaultTextStyle.of(context).style;
  }

  final List<Tab> _tabs = [
    const Tab(text: 'LES ÉDITIONS'),
    const Tab(text: 'MENU'),
  ];

  String dragonBallText = "LES ÉDITIONS\n\n" 
"\"Dragon Ball édition originale (Glénat)\"\n\n" 
"• Contexte : Cette édition originale de Dragon Ball a été publiée par Glénat dans les années 1990. Elle est fidèle à la version japonaise originale et comprend les 42 volumes originaux de la série.\n\n" 
"• Apports supplémentaires : Cette édition est appréciée pour sa fidélité au manga original et sa traduction de qualité.\n\n\n" 
"\"Dragon Ball Perfect Edition (Glénat)\"\n\n" 
"• Contexte : La Perfect Edition a été lancée en 2008 par Glénat. Elle vise à offrir une édition remasterisée et améliorée de Dragon Ball, avec des illustrations retravaillées et une qualité d'impression supérieure.\n\n" 
"• Apports supplémentaires : En plus des améliorations visuelles, cette édition comprend également des pages couleur originales, des interviews de l'auteur et d'autres contenus bonus.\n\n\n" 
"\"Dragon Ball Full Color (Glénat)\"\n\n" 
"• Contexte : Cette édition a été lancée en 2013 par Glénat. Elle présente une version entièrement colorisée de Dragon Ball, ajoutant une nouvelle dimension visuelle à l'œuvre bien-aimée.\n\n" 
"• Apports supplémentaires : Les volumes Full Color offrent une expérience de lecture plus immersive avec des illustrations colorées éclatantes qui mettent en valeur le travail artistique d'Akira Toriyama.\n\n\n" 
"\"Dragon Ball Édition Collector (Glénat)\"\n\n" 
"• Contexte : Cette édition a été introduite en 2019 par Glénat pour célébrer le 35e anniversaire de Dragon Ball en France. Elle vise à offrir une édition de luxe avec des bonus exclusifs pour les fans dévoués.\n\n" 
"• Apports supplémentaires : En plus du contenu remasterisé, cette édition comprend des goodies tels que des couvertures alternatives, des illustrations exclusives, des cartes à collectionner et d'autres surprises pour les fans de Dragon Ball.\n\n\n" 
"\"Dragon Ball Super (Glénat)\"\n\n" 
"• Contexte : Dragon Ball Super est une nouvelle série faisant suite aux événements de Dragon Ball Z. Elle a été publiée au format manga par Glénat en France à partir de 2017, suivant la diffusion de l'anime entre 2015 et 2018.\n\n" 
"• Apports supplémentaires : Cette série poursuit les aventures de Goku, Vegeta et leurs amis, introduisant de nouveaux personnages, transformations et enjeux de niveau divin. Elle reste fidèle à l'esprit original de Dragon Ball tout en apportant des éléments narratifs rafraîchissants pour les fans.\n\n\n\n\n\n";


  String onePieceText = "Les éditions One Piece en France\n\n" +
  "\"One Piece Edition Originale (Glénat)\"\n\n" +
  "\n\n• Contexte : Cette édition originale de One Piece a été publiée par Glénat à partir de 1997. Elle est fidèle à la version japonaise originale et comprend les volumes publiés au fur et à mesure.\n\n" +
  "• Apports supplémentaires : Cette édition est appréciée pour sa fidélité au manga original et sa traduction de qualité.\n\n\n";

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
                    "\"Dragon Ball édition originale (Glénat)\"",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  Image.asset(
                    'assets/original.jpg',
                    height: 400,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "• Contexte : Cette édition originale de Dragon Ball a été publiée par Glénat dans les années 1990. Elle est fidèle à la version japonaise originale et comprend les 42 volumes originaux de la série.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "• Apports supplémentaires : Cette édition est appréciée pour sa fidélité au manga original et sa traduction de qualité.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "\"Dragon Ball Perfect Edition (Glénat)\"",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  Image.asset(
                    'assets/dbprft.jpeg',
                    height: 400,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "• Contexte : La Perfect Edition a été lancée en 2008 par Glénat. Elle vise à offrir une édition remasterisée et améliorée de Dragon Ball, avec des illustrations retravaillées et une qualité d'impression supérieure.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "• Apports supplémentaires : En plus des améliorations visuelles, cette édition comprend également des pages couleur originales, des interviews de l'auteur et d'autres contenus bonus.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "\"Dragon Ball Full Color (Glénat)\"",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  Image.asset(
                    'assets/fullcolor.jpeg',
                    height: 400,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "• Contexte : Cette édition a été lancée en 2013 par Glénat. Elle présente une version entièrement colorisée de Dragon Ball, ajoutant une nouvelle dimension visuelle à l'œuvre bien-aimée.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "• Apports supplémentaires : Les volumes Full Color offrent une expérience de lecture plus immersive avec des illustrations colorées éclatantes qui mettent en valeur le travail artistique d'Akira Toriyama.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "\"Dragon Ball Édition Collector (Glénat)\"",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  Image.asset(
                    'assets/collector.webp',
                    height: 400,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "• Contexte : Cette édition a été introduite en 2019 par Glénat pour célébrer le 35e anniversaire de Dragon Ball en France. Elle vise à offrir une édition de luxe avec des bonus exclusifs pour les fans dévoués.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "• Apports supplémentaires : En plus du contenu remasterisé, cette édition comprend des goodies tels que des couvertures alternatives, des illustrations exclusives, des cartes à collectionner et d'autres surprises pour les fans de Dragon Ball.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "\"Dragon Ball Super (Glénat)\"",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  Image.asset(
                    'assets/super.jpeg',
                    height: 400,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "• Contexte : Dragon Ball Super est une nouvelle série faisant suite aux événements de Dragon Ball Z. Elle a été publiée au format manga par Glénat en France à partir de 2017, suivant la diffusion de l'anime entre 2015 et 2018.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "• Apports supplémentaires : Cette série poursuit les aventures de Goku, Vegeta et leurs amis, introduisant de nouveaux personnages, transformations et enjeux de niveau divin. Elle reste fidèle à l'esprit original de Dragon Ball tout en apportant des éléments narratifs rafraîchissants pour les fans.",
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
                    "Les éditions One Piece en France",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  Text(
                    "\"One Piece Edition Originale (Glénat)\"",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  Image.asset(
                    'assets/onepieceOriginal.jpeg',
                    height: 400,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "• Contexte : Cette édition originale de One Piece a été publiée par Glénat à partir de 1997. Elle est fidèle à la version japonaise originale et comprend les volumes publiés au fur et à mesure.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "• Apports supplémentaires : Cette édition est appréciée pour sa fidélité au manga original et sa traduction de qualité.",
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
                      "LES ÉDITIONS",
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
