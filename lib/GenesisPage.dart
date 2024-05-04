import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'MangakaPage.dart';
import 'GenesisPage.dart';
import 'EditionsPage.dart';
import 'DeclinaisonPage.dart';
import 'PremierJpage.dart';
import 'LesAnimes.dart';
import 'main.dart';

class GenesisPage extends StatefulWidget {
  final String akiraToriyamaText;
  final String eiichiroOdaText;

  GenesisPage({required this.akiraToriyamaText, required this.eiichiroOdaText});

  @override
  _GenesisPageState createState() => _GenesisPageState();
}

class _GenesisPageState extends State<GenesisPage> with SingleTickerProviderStateMixin {
  late TextStyle bodyStyle;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bodyStyle = DefaultTextStyle.of(context).style;
  }

  final List<Tab> _tabs = [
    const Tab(text: 'LA GENÈSE'),
    const Tab(text: 'MENU'),
  ];

  String akiraToriyamaText = "Akira TORIYAMA est un mangaka japonais.\n"
  "Dragon Ball, Dr. Slump\n\n" 
  "Akira Toriyama : Le Créateur de l'Univers de Dragon Ball\n\n" 
  "Akira Toriyama est un mangaka connu pour avoir créé l'univers de Dragon Ball, l'une des séries de manga et d'anime les plus populaires au monde. Toriyama a commencé à travailler sur Dragon Ball en 1984, en s'inspirant de plusieurs sources, notamment la légende chinoise du Roi Singe, le manga de science-fiction 'Tetsujin 28-go' et les films de kung-fu de Jackie Chan. Il a également puisé dans son imagination débordante pour créer des personnages et des lieux uniques et mémorables.\n\n" 
  "Toriyama a rencontré quelques difficultés au début de sa carrière de mangaka, et il a essuyé plusieurs refus de publication avant de connaître le succès avec Dragon Ball. Avant de créer Dragon Ball, Toriyama a travaillé sur plusieurs autres séries de manga, telles que 'Dr. Slump' et 'Dragon Boy'. 'Dr. Slump' a été publié dans le magazine Weekly Shonen Jump en 1980 et a été un succès, mais 'Dragon Boy' a été refusé par plusieurs éditeurs avant d'être finalement publié dans un magazine différent. Toriyama a également eu du mal à trouver un éditeur pour Dragon Ball au début, mais il a persévéré et a finalement réussi à convaincre le magazine Weekly Shonen Jump de publier sa série.\n\n" 
  "Akira Toriyama a travaillé dur pour créer l'univers de Dragon Ball en développant des personnages complexes et en imaginant des lieux et des technologies futuristes. Par exemple, il a créé le personnage de Son Goku, un garçon doté d'une queue de singe et de pouvoirs magiques, qui évolue au fil de la série pour devenir un guerrier puissant et respecté. Il a également imaginé des lieux tels que la planète Namek et la salle de l'esprit et du temps, qui sont devenus des éléments emblématiques de la série.\n\n" 
  "Toriyama a également introduit de nombreux éléments de la mythologie et de la culture japonaise dans sa série, ce qui a contribué à son succès auprès du public japonais. Par exemple, il a utilisé des noms de personnages et de lieux inspirés de la mythologie japonaise, tels que le roi Piccolo et le palais du roi Enma. Il a également incorporé des éléments de la culture japonaise, tels que les arts martiaux et les croyances religieuses, dans l'univers de Dragon Ball.\n\n" 
  "Au fil des ans, Toriyama a continué à développer et à enrichir l'univers de Dragon Ball en créant de nouveaux personnages et en explorant de nouvelles idées et thèmes. Par exemple, il a introduit des personnages tels que Vegeta et Trunks, qui sont devenus des favoris des fans, et a exploré des thèmes tels que la rédemption et la protection de la planète. Il a également créé des suites et des spin-offs de la série originale, ainsi que des films et des jeux vidéo, qui ont permis de développer encore plus l'univers de Dragon Ball.\n\n" 
  "En résumé, Akira Toriyama a travaillé dur pour créer l'univers de Dragon Ball en développant des personnages complexes et en imaginant des lieux et des technologies futuristes. Il a également introduit de nombreux éléments de la mythologie et de la culture japonaise dans sa série, ce qui a contribué à son succès auprès du public japonais. Au fil des ans, Toriyama a continué à développer et à enrichir l'univers de Dragon Ball en créant de nouveaux personnages et en explorant de nouvelles idées et thèmes.\n" 
  "Le 1er mars 2024, le monde a perdu un génie, mais ses créations continueront à vivre et à inspirer pour toujours.";


  String eiichiroOdaText = "Eiichiro ODA est un mangaka japonais.\n" 
  "One Piece\n\n" 
  "Eiichiro Oda a construit l'univers de One Piece en s'inspirant de nombreuses sources, notamment de la culture populaire, de l'histoire, de la mythologie et de ses propres expériences.\n\n" 
  "Il a commencé à développer l'idée de One Piece alors qu'il était encore adolescent, en créant des personnages et des concepts pour son propre plaisir.\n\n" 
  "Lorsqu'il a commencé à travailler sur One Piece de manière professionnelle, Oda a soumis son travail à plusieurs éditeurs, mais il a essuyé de nombreux refus. Cependant, il a persévéré et a continué à développer son univers et ses personnages, en incorporant les commentaires et les suggestions des éditeurs qu'il a rencontrés.\n\n" 
  "Oda a finalement réussi à publier son premier one-shot, Wanted!, dans le magazine Weekly Shonen Jump en 1992. Bien que ce one-shot n'ait pas été directement lié à One Piece, il a permis à Oda de se faire remarquer par les éditeurs et de commencer à travailler sur des projets plus importants.\n\n" 
  "En 1997, Oda a publié le premier chapitre de One Piece dans le Weekly Shonen Jump. L'histoire suit les aventures de Monkey D. Luffy, un jeune pirate à la recherche du trésor légendaire 'One Piece', et de son équipage, la Straw Hat Crew. Oda a créé un univers riche et complexe pour One Piece, avec des îles et des cultures uniques, des personnages mémorables et des intrigues captivantes.\n\n" 
  "Oda a également incorporé de nombreux éléments de la culture populaire et de l'histoire dans son univers. Par exemple, il a utilisé des références à des pirates célèbres, tels que Barbe Noire et Barbe Blanche, pour créer des personnages et des intrigues. Il a également utilisé des éléments de la mythologie et de la légende, tels que les fruits du démon et les géants, pour enrichir son univers.\n\n" 
  "Au fil des ans, Oda a continué à développer et à enrichir l'univers de One Piece, en introduisant de nouveaux personnages et de nouvelles intrigues. Il a également exploré de nouveaux thèmes et idées, tels que la rédemption, la justice et la liberté. One Piece est devenu un phénomène mondial, avec des millions de fans à travers le monde, et Oda continue de travailler sur la série aujourd'hui.\n\n" 
  "En résumé, Eiichiro Oda a construit l'univers de One Piece en s'inspirant de nombreuses sources et en persévérant malgré les refus initiaux des éditeurs. Il a créé un univers riche et complexe, avec des personnages mémorables et des intrigues captivantes, en incorporant des éléments de la culture populaire, de l'histoire et de la mythologie. One Piece est devenu un phénomène mondial, avec des millions de fans à travers le monde, et Oda continue de travailler sur la série aujourd'hui.";

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
                    "Akira TORIYAMA est un mangaka japonais.",
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
                    "Dragon Ball, Dr. Slump",
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
                    "• Contexte : Akira Toriyama est un mangaka connu pour avoir créé l'univers de Dragon Ball, l'une des séries de manga et d'anime les plus populaires au monde.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "• Apports supplémentaires : Toriyama a puisé dans plusieurs sources d'inspiration, notamment la légende chinoise du Roi Singe et les films de kung-fu de Jackie Chan.",
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
                    "Eiichiro ODA est un mangaka japonais.",
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
                    "One Piece",
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
                    "Eiichiro Oda a construit l'univers de One Piece en s'inspirant de nombreuses sources, notamment de la culture populaire, de l'histoire, de la mythologie et de ses propres expériences.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Il a commencé à développer l'idée de One Piece alors qu'il était encore adolescent, en créant des personnages et des concepts pour son propre plaisir. Oda a soumis son travail à plusieurs éditeurs, mais il a essuyé de nombreux refus avant de réussir à publier Wanted! dans le magazine Weekly Shonen Jump en 1992.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Oda a publié le premier chapitre de One Piece dans le Weekly Shonen Jump en 1997. L'histoire suit les aventures de Monkey D. Luffy, un jeune pirate à la recherche du trésor légendaire 'One Piece', et de son équipage, la Straw Hat Crew. Oda a créé un univers riche et complexe pour One Piece, avec des îles et des cultures uniques, des personnages mémorables et des intrigues captivantes.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Oda a également incorporé de nombreux éléments de la culture populaire et de l'histoire dans son univers. Par exemple, il a utilisé des références à des pirates célèbres et des éléments de la mythologie et de la légende, tels que les fruits du démon et les géants.",
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
                      "LA GENÈSE",
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
                                                        FlutterTts().speak(akiraToriyamaText);
                                                      },
                                                      child: Icon(Icons.volume_up, color: primaryColor),
                                                    ),
                                                  ),
                                                  Offstage(
                                                    offstage: true,
                                                    child: TextToSpeechWidget(text: akiraToriyamaText)),                                                 
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
                                                        FlutterTts().speak(eiichiroOdaText);
                                                      },
                                                      child: Icon(Icons.volume_up, color: primaryColor),
                                                    ),
                                                  ),
                                                  Offstage(
                                                    offstage: true,
                                                    child: TextToSpeechWidget(text: eiichiroOdaText),
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
