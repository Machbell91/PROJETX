import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:universal_html/js.dart';
import 'MangakaPage.dart';
import 'GenesisPage.dart';
import 'EditionsPage.dart';
import 'DeclinaisonPage.dart';
import 'PremierJpage.dart';
import 'LesAnimes.dart';
import 'main.dart';

class PremierJpage extends StatefulWidget {
  final String top3JeuxDragonBall;
  final String top3JeuxOnePiece;

  PremierJpage({required this.top3JeuxDragonBall, required this.top3JeuxOnePiece});

  @override
  _PremierJpageState createState() => _PremierJpageState();
}

class _PremierJpageState extends State<PremierJpage> with SingleTickerProviderStateMixin {
  late TextStyle bodyStyle;
@override
void didChangeDependencies() {
  super.didChangeDependencies();
}


  final List<Tab> _tabs = [
    const Tab(text: 'LES TOP 3 DES JEUX-VIDÉOS'),
    const Tab(text: 'MENU'),
  ];
String top3JeuxDragonBall = "TOP 3 Jeux Dragon Ball\n\n" 
"1. **Dragon Ball Z: Budokai Tenkaichi 3** (Spike)\n" 
"   - Sorti en 2007, ce jeu de combat développé par Spike est considéré comme l'un des meilleurs jeux Dragon Ball.\n" 
"   - Propose un large éventail de personnages jouables, avec plus de 160 personnages issus de la série.\n" 
"   - Offre une expérience de combat fluide et dynamique, avec des graphismes de qualité et une bande-son épique.\n" 
"   - Vendu à plus de 3 millions d'exemplaires dans le monde.\n" 
"   - Utilisé dans de nombreux tournois d'eSports tels que l'EVO et le TORYUKEN.\n" 
"   - A reçu des critiques positives de la part des critiques et des fans, et a été nommé meilleur jeu de combat de l'année aux Spike Video Game Awards en 2007.\n\n" 
"2. **Dragon Ball FighterZ** (Arc System Works)\n" 
"   - Développé par Arc System Works et sorti en 2018, ce jeu de combat en 2.5D est apprécié pour ses graphismes fidèles à l'anime.\n" 
"   - Propose une histoire originale, des mécaniques de combat accessibles mais profondes, et un mode multijoueur en ligne.\n" 
"   - Vendu à plus de 6 millions d'exemplaires dans le monde.\n" 
"   - Utilisé dans de nombreux tournois d'eSports tels que l'EVO, le CEO et le TWT.\n" 
"   - A reçu des critiques élogieuses et a remporté de nombreux prix, notamment celui du meilleur jeu de combat aux Game Awards en 2018.\n\n" 
"3. **Dragon Ball Xenoverse 2** (Dimps)\n" 
"   - Suite du premier Xenoverse, ce jeu d'action-RPG développé par Dimps est sorti en 2016.\n" 
"   - Permet de créer son propre personnage et de voyager dans le temps pour revivre les moments clés de la série.\n" 
"   - Offre un vaste monde ouvert, des quêtes annexes, des transformations personnalisables, et un mode multijoueur en ligne.\n" 
"   - Vendu à plus de 7 millions d'exemplaires dans le monde.\n" 
"   - Utilisé dans de nombreux tournois d'eSports tels que le Tenkaichi Budokai et le Dragon Ball FighterZ World Tour.\n" 
"   - A reçu des critiques positives et a été nommé meilleur jeu de rôle aux Game Awards en 2016.\n";

String top3JeuxOnePiece = "TOP 3 Jeux One Piece\n\n" 
"1. **One Piece: Pirate Warriors 4** (Omega Force)\n" 
"   - Sorti en 2020, ce jeu d'action développé par Omega Force est le quatrième opus de la série Pirate Warriors.\n" 
"   - Couvre les arcs narratifs de l'île des Hommes-Poissons à l'arc Pays de Wano.\n" 
"   - Propose un gameplay dynamique et nerveux, avec des graphismes améliorés et un grand nombre de personnages jouables issus de la série.\n"
"   - Offre également un mode histoire, un mode libre et un mode en ligne.\n" 
"   - Vendu à plus de 1,5 million d'exemplaires dans le monde.\n" 
"   - Utilisé dans de nombreux tournois d'eSports, tels que le One Piece World Challenge.\n" 
"   - A reçu des critiques positives et a été nommé meilleur jeu d'action aux Japan Game Awards en 2020.\n\n" 
"2. **One Piece: World Seeker** (Ganbarion)\n" 
"   - Développé par Ganbarion et sorti en 2019, ce jeu d'action-aventure en monde ouvert permet d'incarner Luffy dans une histoire originale.\n"
"   - Se déroule sur l'île mystérieuse de Prison Island.\n" 
"   - Offre des mécaniques de gameplay variées, comme l'infiltration, l'exploration et des combats dynamiques.\n" 
"   - Propose également un mode histoire, un mode libre et un mode en ligne.\n" 
"   - Vendu à plus de 1 million d'exemplaires dans le monde.\n" 
"   - A reçu des critiques mitigées, mais a été salué pour son gameplay amusant et son histoire originale.\n\n" 
"3. **One Piece: Unlimited World Red** (Ganbarion)\n" 
"   - Sorti en 2013, ce jeu d'action-aventure propose une histoire originale avec l'équipage du Chapeau de Paille.\n" 
"   - L'équipage doit affronter le Pirate Rouge, un personnage créé spécialement pour le jeu.\n" 
"   - Offre des graphismes colorés et fidèles au manga, des combats en temps réel, et des phases d'exploration et de plateforme.\n" 
"   - Propose également un mode histoire, un mode libre et un mode en ligne.\n" 
"   - Vendu à plus de 1,2 million d'exemplaires dans le monde.\n" 
"   - A reçu des critiques positives et a été nommé meilleur jeu d'action aux Japan Game Awards en 2013.\n";


  // Constantes pour les chaînes de caractères de Dragon Ball
  String dragonBallTitle = "Dragon Ball : Une Saga Légendaire";
  String dragonBallIntroduction = "Créé par Akira Toriyama, Dragon Ball est un manga emblématique publié pour la première fois en 1984. Depuis sa publication, il a conquis le cœur de millions de lecteurs à travers le monde.";

  // Constantes pour les chaînes de caractères de One Piece
  String onePieceTitle = "One Piece : Une Épopée Épique";
  String onePieceIntroduction = "One Piece est un manga épique écrit et illustré par Eiichiro Oda. Publié pour la première fois en 1997, il raconte l'histoire de Monkey D. Luffy, un pirate rêveur à la quête du légendaire trésor One Piece.";

  RichText buildDragonBallRichText(BuildContext context) {
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
            child: ListView(
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
                      imageUrl: 'assets/dragonball.jpg',
                      context: context,
                    ),
                    _buildGameDetail(
                      gameTitle: 'Dragon Ball FighterZ (Arc System Works)',
                      videoId: 'F544y7a5pZQ',
                      description: "Développé par Arc System Works et sorti en 2018, ce jeu de combat en 2.5D est apprécié pour ses graphismes fidèles à l'anime et son gameplay compétitif.\n",
                      additionalInfo:
                          "Le jeu propose une histoire originale avec des personnages inédits, des mécaniques de combat accessibles mais profondes, et un mode multijoueur en ligne. Il propose également un mode arcade, un mode entraînement et un mode histoire.\n"
                          "Avec plus de 6 millions d'exemplaires vendus dans le monde, le jeu a été utilisé dans de nombreux tournois d'eSports, tels que l'EVO, le CEO et le TWT. Il a également reçu des critiques élogieuses de la part des critiques et des fans, et a remporté de nombreux prix, notamment celui du meilleur jeu de combat aux Game Awards en 2018.\n\n\n",
                      imageUrl: 'assets/dragonballfighterz.jpg',
                      context: context,
                    ),
                    _buildGameDetail(
                      gameTitle: 'Dragon Ball Xenoverse 2 (Dimps)',
                      videoId: '2DwkdaHX7Vs',
                      description: "Suite du premier Xenoverse, ce jeu d'action-RPG développé par Dimps est sorti en 2016. Il permet aux joueurs de créer leur propre personnage et de voyager dans le temps pour revivre les moments clés de la série.\n",
                      additionalInfo:
                          "Le jeu offre un vaste monde ouvert, des quêtes annexes, des transformations personnalisables, et un mode multijoueur en ligne pour affronter d'autres joueurs. Il propose également un mode histoire, un mode entraînement et un mode coopératif.\n"
                          "Avec plus de 7 millions d'exemplaires vendus dans le monde, le jeu a été utilisé dans de nombreux tournois d'eSports, tels que le Tenkaichi Budokai et le Dragon Ball FighterZ World Tour. Il a également reçu des critiques positives de la part des critiques et des fans, et a été nommé meilleur jeu de rôle aux Game Awards en 2016.\n\n\n\n",
                      imageUrl: 'assets/xenoverse2.jpg',
                      context: context,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  RichText buildOnePieceRichText(BuildContext context) {
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
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            _buildExpansionTile(
                                title: 'TOP 3 Jeux One Piece',
                                children: [
                                    _buildGameDetail(
                                        gameTitle: 'One Piece: Pirate Warriors 4 (Omega Force)',
                                        videoId: 'PI7rGGGlCN',
                                        description: "Sorti en 2020, ce jeu d'action développé par Omega Force est le quatrième opus de la série Pirate Warriors. Il couvre les arcs narratifs de l'île des Hommes-Poissons à l'arc Pays de Wano.\n",
                                        additionalInfo: "Le jeu propose un gameplay dynamique et nerveux, avec des graphismes améliorés et un grand nombre de personnages jouables issus de la série. Il propose également un mode histoire, un mode libre et un mode en ligne.\nAvec plus de 1,5 million d'exemplaires vendus dans le monde, le jeu a été utilisé dans de nombreux tournois d'eSports, tels que le One Piece World Challenge. Il a également reçu des critiques positives de la part des critiques et des fans, et a été nommé meilleur jeu d'action aux Japan Game Awards en 2020.\n\n\n\n",
                                        imageUrl: 'assets/onepiece.jpg',
                                        context: context,
                                    ),
                                    _buildGameDetail(
                                        gameTitle: 'One Piece: World Seeker (Ganbarion)',
                                        videoId: 'hZCc7UiIzdg',
                                        description: "Développé par Ganbarion et sorti en 2019, ce jeu d'action-aventure en monde ouvert permet aux joueurs d'incarner Luffy dans une histoire originale se déroulant sur l'île mystérieuse de Prison Island.\n",
                                        additionalInfo: "Le jeu offre des mécaniques de gameplay variées, comme l'infiltration, l'exploration et des combats dynamiques, ainsi que des quêtes annexes et des personnages secondaires issus de la série. Il propose également un mode histoire, un mode libre et un mode en ligne.\nAvec plus de 1 million d'exemplaires vendus dans le monde, le jeu a reçu des critiques mitigées de la part des critiques et des fans, mais a été salué pour son gameplay amusant et son histoire originale.\n\n\n\n",
                                        imageUrl: 'assets/onepiece_world_seeker.jpg',
                                        context: context,
                                    ),
                                    _buildGameDetail(
                                        gameTitle: 'One Piece: Unlimited World Red (Ganbarion)',
                                        videoId: 'ahDkZnugjWg',
                                        description: "Sorti en 2013, ce jeu d'action-aventure développé par Ganbarion propose une histoire originale dans laquelle l'équipage du Chapeau de Paille doit affronter le Pirate Rouge, un personnage créé spécialement pour le jeu.\n",
                                        additionalInfo: "Le jeu offre des graphismes colorés et fidèles au manga, des combats en temps réel, des phases d'exploration et de plateforme, ainsi que des mécaniques de coopération entre les personnages. Il propose également un mode histoire, un mode libre et un mode en ligne.\nAvec plus de 1,2 million d'exemplaires vendus dans le monde, le jeu a reçu des critiques positives de la part des critiques et des fans, et a été nommé meilleur jeu d'action aux Japan Game Awards en 2013.\n\n\n\n",
                                        imageUrl: 'assets/onepiece_unlimited_world_red.jpg',
                                        context: context,
                                    ),
                                ],
                            ),
                        ],
                    ),
                ),
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
    bodyStyle = DefaultTextStyle.of(context).style;

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
                        "LES TOP 3 DES JEUX-VIDÉOS",
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
                                    children: [
                                      buildDragonBallExpansionTile(context),
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
                                    children: [
                                      buildOnePieceExpansionTile(context),
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

  Widget buildDragonBallExpansionTile(BuildContext context) {
    return Card(
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
                      FlutterTts().speak(top3JeuxDragonBall);
                    },
                    child: Icon(Icons.volume_up),
                  ),
                ),
                Offstage(
                  offstage: true,
                  child: TextToSpeechWidget(text: top3JeuxDragonBall),
                ),
                buildDragonBallRichText(context), // Passez le contexte en tant qu'argument
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
    );
  }

  Widget buildOnePieceExpansionTile(BuildContext context) {
    return Card(
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
                      FlutterTts().speak(top3JeuxOnePiece);
                    },
                    child: Icon(Icons.volume_up),
                  ),
                ),
                Offstage(
                  offstage: true,
                  child: TextToSpeechWidget(text: top3JeuxOnePiece),
                ),
                buildOnePieceRichText(context), // Passez le contexte en tant qu'argument
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
    );
  }
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
    required BuildContext context,
  }) {
    final String htmlVideo = '<iframe width="100%" height="100%" src="https://www.youtube.com/embed/$videoId" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>';

    return ListTile(
      title: Text(gameTitle),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width / 3, 
            height: (MediaQuery.of(context).size.width / 3) * (9/16), 
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
