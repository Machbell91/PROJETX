import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:video_player/video_player.dart';
import 'MangakaPage.dart';
import 'GenesisPage.dart';
import 'EditionsPage.dart';
import 'DeclinaisonPage.dart';
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
  late TabController _tabController;
  late FlutterTts flutterTts;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    flutterTts = FlutterTts();
    _setLanguage();
  }

  @override
  void dispose() {
    _tabController.dispose();
    flutterTts.stop();
    super.dispose();
  }

  Future<void> _setLanguage() async {
    await flutterTts.setLanguage("fr-FR");
  }

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
 // ... (le reste du texte)

  Widget _buildGameDetail(
      String title, String description, String videoUrl, String imageUrl) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: bodyStyle.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        HtmlWidget(description),
        SizedBox(height: 8),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => VideoPlayerPage(videoUrl: videoUrl)),
            );
          },
          child: Image.asset(
            imageUrl,
            width: 300,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildTextToSpeechWidget(String text) {
    return InkWell(
      onTap: () {
        flutterTts.speak(text);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text, style: bodyStyle.copyWith(fontSize: 18)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bodyStyle = DefaultTextStyle.of(context).style;

    return Scaffold(
      appBar: AppBar(
        title: Text('LES TOP 3 DES JEUX-VIDÉOS'),
        bottom: TabBar(
          controller: _tabController,
          tabs: _tabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ExpansionTile(
                  title: _buildTextToSpeechWidget(top3JeuxDragonBall),
                  children: _buildDragonBallGames(),
                ),
                ExpansionTile(
                  title: _buildTextToSpeechWidget(top3JeuxOnePiece),
                  children: _buildOnePieceGames(),
                ),
              ],
            ),
          ),
          Center(
            child: Wrap(
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
                  child: Text("ACCUEIL"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MangakaPage(akiraToriyamaBio: '', eiichiroOdaBio: '',)),
                    );
                  },
                  child: Text("MANGAKA"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GenesisPage(akiraToriyamaText: '', eiichiroOdaText: '',)),
                    );
                  },
                  child: Text("LA GENÈSE"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditionsPage(dragonBallText: '', onePieceText: '',)),
                    );
                  },
                  child: Text("ÉDITIONS"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DeclinaisonPage(dragonBallText: '', onePieceText: '',)),
                    );
                  },
                  child: Text("LES PRODUITS DÉRIVÉS"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LesAnimes(dragonBallSeries: '', onePieceSeries: '',)),
                    );
                  },
                  child: Text("ANIMÉS"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildDragonBallGames() {
    return [
      _buildGameDetail(
        'Dragon Ball Z: Budokai Tenkaichi 3',
        widget.top3JeuxDragonBall,
        'https://www.youtube.com/watch?v=4cdsRs9Ih8g',
        'assets/dragonball.jpg',
      ),
      _buildGameDetail(
        'Dragon Ball FighterZ',
        widget.top3JeuxDragonBall,
        'https://www.youtube.com/watch?v=F544y7a5pZQ',
        'assets/dragonball_fighterz.jpg',
      ),
      _buildGameDetail(
        'Dragon Ball Xenoverse 2',
        widget.top3JeuxDragonBall,
        'https://www.youtube.com/watch?v=2DwkdaHX7Vs',
        'assets/dragonball_xenoverse2.jpg',
      ),
    ];
  }

  List<Widget> _buildOnePieceGames() {
    return [
      _buildGameDetail(
        'One Piece: Pirate Warriors 4',
        widget.top3JeuxOnePiece,
        'https://www.youtube.com/watch?v=PI7rGGGlCN',
        'assets/onepiece_pirate_warriors4.jpg',
      ),
      _buildGameDetail(
        'One Piece: World Seeker',
        widget.top3JeuxOnePiece,
        'https://www.youtube.com/watch?v=hZCc7UiIzdg',
        'assets/onepiece_world_seeker.jpg',
      ),
      _buildGameDetail(
        'One Piece: Unlimited World Red',
        widget.top3JeuxOnePiece,
        'https://www.youtube.com/watch?v=ahDkZnugjWg',
        'assets/onepiece_unlimited_world_red.jpg',
      ),
    ];
  }
}

class VideoPlayerPage extends StatefulWidget {
  final String videoUrl;

  VideoPlayerPage({required this.videoUrl});

  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lecteur vidéo'),
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
