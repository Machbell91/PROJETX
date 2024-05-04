import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'MangakaPage.dart';
import 'GenesisPage.dart';
import 'EditionsPage.dart';
import 'DeclinaisonPage.dart';
import 'PremierJpage.dart';
import 'LesAnimes.dart';
import 'main.dart';

class DeclinaisonPage extends StatefulWidget {
  final String dragonBallText;
  final String onePieceText;

  DeclinaisonPage({required this.dragonBallText, required this.onePieceText});

  @override
  _DeclinaisonPageState createState() => _DeclinaisonPageState();
}

class _DeclinaisonPageState extends State<DeclinaisonPage> with SingleTickerProviderStateMixin {
  late TextStyle bodyStyle;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bodyStyle = DefaultTextStyle.of(context).style;
  }

  final List<Tab> _tabs = [
    const Tab(text: 'PRODUITS DÉRIVÉES'),
    const Tab(text: 'MENU'),
  ];

  String dragonBallText = "La franchise Dragon Ball\n\n"
"Dragon Ball est une franchise médiatique japonaise créée par Akira Toriyama qui a été déclinée en de nombreuses œuvres, notamment des films, des jeux vidéo et des produits dérivés.\n\n" 
"Les films :\n\n" 
"La franchise Dragon Ball a été adaptée en de nombreux films. Le premier film, Dragon Ball : La Légende de Shenron, est sorti en 1986 et a été suivi de nombreux autres films, tels que Dragon Ball Z : La Menace de Namek, Dragon Ball Z : La Résurrection de 'F' et Dragon Ball Super : Broly. Ces films ont été projetés dans les cinémas japonais et ont connu un grand succès auprès des fans de la franchise. Certains des films ont également été doublés et diffusés dans d'autres pays, ce qui a permis à la franchise de toucher un public encore plus large.\n\n" 
"Les jeux vidéo :\n\n" 
"La franchise Dragon Ball a également été adaptée en de nombreux jeux vidéo. Les premiers jeux vidéo Dragon Ball ont été développés pour les consoles de salon et les bornes d'arcade dans les années 1980 et 1990. Depuis lors, de nombreux jeux vidéo Dragon Ball ont été développés pour différentes plates-formes, notamment les consoles de salon, les consoles portables et les ordinateurs. Certains des jeux vidéo les plus populaires de la franchise incluent Dragon Ball Z : Budokai, Dragon Ball Xenoverse et Dragon Ball FighterZ. Ces jeux vidéo permettent aux fans de la franchise de vivre des aventures inédites et de contrôler leurs personnages préférés dans des combats épiques.\n\n" 
"Les produits dérivés :\n\n" 
"En plus des films et des jeux vidéo, la franchise Dragon Ball a également été adaptée en de nombreux produits dérivés, tels que des jouets, des vêtements, des cartes à collectionner et des figurines. Ces produits dérivés sont très populaires auprès des fans de la franchise et sont vendus dans le monde entier. Ils permettent aux fans de collectionner des objets à l'effigie de leurs personnages préférés et de montrer leur attachement à la franchise.\n\n" 
"Les jouets :\n" 
"Les jouets Dragon Ball sont très populaires auprès des enfants et des collectionneurs. Ils comprennent des figurines d'action, des véhicules, des peluches et des jeux de société à l'effigie des personnages de la franchise. Ces jouets permettent aux fans de revivre les aventures de leurs personnages préférés et de créer leurs propres histoires.\n\n" 
"Les vêtements :\n" 
"Les vêtements Dragon Ball sont également très populaires auprès des fans de la franchise. Ils comprennent des t-shirts, des sweats à capuche, des casquettes et des chaussures à l'effigie des personnages et des logos de la franchise. Ces vêtements permettent aux fans de montrer leur attachement à la franchise et de se sentir proches de leurs personnages préférés.\n\n" 
"Les cartes à collectionner :\n" 
"Les cartes à collectionner Dragon Ball sont un autre produit dérivé populaire de la franchise. Elles comprennent des cartes à jouer et à collectionner à l'effigie des personnages et des scènes de la franchise. Ces cartes permettent aux fans de collectionner des objets rares et de jouer à des jeux de cartes avec leurs amis.\n\n" 
"Les figurines :\n" 
"Enfin, les figurines Dragon Ball sont très appréciées des collectionneurs. Elles comprennent des figurines en PVC, en résine et en métal à l'effigie des personnages de la franchise. Ces figurines sont souvent très détaillées et réalistes, ce qui en fait des objets de collection précieux pour les fans.\n\n" 
"En résumé, la franchise Dragon Ball a été déclinée en de nombreuses œuvres, notamment des films, des jeux vidéo et des produits dérivés. Ces adaptations ont connu un grand succès auprès des fans de la franchise et ont permis à Dragon Ball de toucher un public encore plus large.";


 String onePieceText = "La franchise One Piece\n\n" 
"One Piece est une franchise médiatique japonaise créée par Eiichiro Oda qui a été déclinée en de nombreuses œuvres, notamment des films, des jeux vidéo et des produits dérivés.\n\n" 
"Les films :\n\n" 
"La franchise One Piece a été adaptée en de nombreux films d'animation. Le premier film, One Piece : Le Film, est sorti en 2000 et a été suivi de nombreux autres films, tels que One Piece : L'Aventure sans Issue, One Piece : Z et One Piece : Stampede. Ces films ont été projetés dans les cinémas japonais et ont connu un grand succès auprès des fans de la franchise. Certains des films ont également été doublés et diffusés dans d'autres pays, ce qui a permis à la franchise de toucher un public encore plus large.\n\n" 
"Les jeux vidéo :\n\n" 
"La franchise One Piece a également été adaptée en de nombreux jeux vidéo. Les premiers jeux vidéo One Piece ont été développés pour les consoles de salon et les bornes d'arcade dans les années 2000. Depuis lors, de nombreux jeux vidéo One Piece ont été développés pour différentes plates-formes, notamment les consoles de salon, les consoles portables et les ordinateurs. Certains des jeux vidéo les plus populaires de la franchise incluent One Piece: Unlimited Cruise, One Piece: Pirate Warriors et One Piece: World Seeker. Ces jeux vidéo permettent aux fans de la franchise de vivre des aventures inédites et de contrôler leurs personnages préférés dans des combats épiques.\n\n" 
"Les produits dérivés :\n\n" 
"En plus des films et des jeux vidéo, la franchise One Piece a également été adaptée en de nombreux produits dérivés, tels que des jouets, des vêtements, des cartes à collectionner et des figurines. Ces produits dérivés sont très populaires auprès des fans de la franchise et sont vendus dans le monde entier. Ils permettent aux fans de collectionner des objets à l'effigie de leurs personnages préférés et de montrer leur attachement à la franchise.\n\n" 
"Les jouets :\n" 
"Les jouets One Piece sont très populaires auprès des enfants et des collectionneurs. Ils comprennent des figurines d'action, des véhicules, des peluches et des jeux de société à l'effigie des personnages de la franchise. Ces jouets permettent aux fans de revivre les aventures de leurs personnages préférés et de créer leurs propres histoires.\n\n" 
"Les vêtements :\n" 
"Les vêtements One Piece sont également très populaires auprès des fans de la franchise. Ils comprennent des t-shirts, des sweats à capuche, des casquettes et des chaussures à l'effigie des personnages et des logos de la franchise. Ces vêtements permettent aux fans de montrer leur attachement à la franchise et de se sentir proches de leurs personnages préférés.\n\n" 
"Les cartes à collectionner :\n" 
"Les cartes à collectionner One Piece sont un autre produit dérivé populaire de la franchise. Elles comprennent des cartes à jouer et à collectionner à l'effigie des personnages et des scènes de la franchise. Ces cartes permettent aux fans de collectionner des objets rares et de jouer à des jeux de cartes avec leurs amis.\n\n" 
"Les figurines :\n" 
"Enfin, les figurines One Piece sont très appréciées des collectionneurs. Elles comprennent des figurines en PVC, en résine et en métal à l'effigie des personnages de la franchise. Ces figurines sont souvent très détaillées et réalistes, ce qui en fait des objets de collection précieux pour les fans.\n\n" 
"En résumé, la franchise One Piece a été déclinée en de nombreuses œuvres, notamment des films, des jeux vidéo et des produits dérivés. Ces adaptations ont connu un grand succès auprès des fans de la franchise et ont permis à One Piece de toucher un public encore plus large.";

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
                    "Les films :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "La franchise Dragon Ball a été adaptée en de nombreux films. Le premier film, Dragon Ball : La Légende de Shenron, est sorti en 1986 et a été suivi de nombreux autres films, tels que Dragon Ball Z : La Menace de Namek, Dragon Ball Z : La Résurrection de 'F' et Dragon Ball Super : Broly. Ces films ont été projetés dans les cinémas japonais et ont connu un grand succès auprès des fans de la franchise. Certains des films ont également été doublés et diffusés dans d'autres pays, ce qui a permis à la franchise de toucher un public encore plus large.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Les jeux vidéo :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "La franchise Dragon Ball a également été adaptée en de nombreux jeux vidéo. Les premiers jeux vidéo Dragon Ball ont été développés pour les consoles de salon et les bornes d'arcade dans les années 1980 et 1990. Depuis lors, de nombreux jeux vidéo Dragon Ball ont été développés pour différentes plates-formes, notamment les consoles de salon, les consoles portables et les ordinateurs. Certains des jeux vidéo les plus populaires de la franchise incluent Dragon Ball Z : Budokai, Dragon Ball Xenoverse et Dragon Ball FighterZ. Ces jeux vidéo permettent aux fans de la franchise de vivre des aventures inédites et de contrôler leurs personnages préférés dans des combats épiques.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Les produits dérivés :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "En plus des films et des jeux vidéo, la franchise Dragon Ball a également été adaptée en de nombreux produits dérivés, tels que des jouets, des vêtements, des cartes à collectionner et des figurines. Ces produits dérivés sont très populaires auprès des fans de la franchise et sont vendus dans le monde entier. Ils permettent aux fans de collectionner des objets à l'effigie de leurs personnages préférés et de montrer leur attachement à la franchise.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Les jouets :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Les jouets Dragon Ball sont très populaires auprès des enfants et des collectionneurs. Ils comprennent des figurines d'action, des véhicules, des peluches et des jeux de société à l'effigie des personnages de la franchise. Ces jouets permettent aux fans de revivre les aventures de leurs personnages préférés et de créer leurs propres histoires.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Les vêtements :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Les vêtements Dragon Ball sont également très populaires auprès des fans de la franchise. Ils comprennent des t-shirts, des sweats à capuche, des casquettes et des chaussures à l'effigie des personnages et des logos de la franchise. Ces vêtements permettent aux fans de montrer leur attachement à la franchise et de se sentir proches de leurs personnages préférés.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Les cartes à collectionner :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Les cartes à collectionner Dragon Ball sont un autre produit dérivé populaire de la franchise. Elles comprennent des cartes à jouer et à collectionner à l'effigie des personnages et des scènes de la franchise. Ces cartes permettent aux fans de collectionner des objets rares et de jouer à des jeux de cartes avec leurs amis.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Les figurines :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Les figurines Dragon Ball sont très appréciées des collectionneurs. Elles comprennent des figurines en PVC, en résine et en métal à l'effigie des personnages de la franchise. Ces figurines sont souvent très détaillées et réalistes, ce qui en fait des objets de collection précieux pour les fans.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "En résumé, la franchise Dragon Ball a été déclinée en de nombreuses œuvres, notamment des films, des jeux vidéo et des produits dérivés. Ces adaptations ont connu un grand succès auprès des fans de la franchise et ont permis à Dragon Ball de toucher un public encore plus large.",
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
                    "Histoire",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.blue, decoration: TextDecoration.underline, decorationColor: Color.fromARGB(0, 255, 255, 255), decorationStyle: TextDecorationStyle.wavy),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "   Luffy est entouré d'un équipage diversifié, chacun ayant ses propres compétences et motivations. Ensemble, ils affrontent des défis formidables et découvrent les secrets cachés de l'océan. L'amitié et la loyauté sont au cœur de leur voyage, renforçant les liens entre les membres de l'équipage.\n\n",
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
          ),
          // Thèmes
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
                    "Les films :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "La franchise One Piece a été adaptée en de nombreux films d'animation. Le premier film, One Piece : Le Film, est sorti en 2000 et a été suivi de nombreux autres films, tels que One Piece : L'Aventure sans Issue, One Piece : Z et One Piece : Stampede. Ces films ont été projetés dans les cinémas japonais et ont connu un grand succès auprès des fans de la franchise. Certains des films ont également été doublés et diffusés dans d'autres pays, ce qui a permis à la franchise de toucher un public encore plus large.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Les jeux vidéo :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "La franchise One Piece a également été adaptée en de nombreux jeux vidéo. Les premiers jeux vidéo One Piece ont été développés pour les consoles de salon et les bornes d'arcade dans les années 2000. Depuis lors, de nombreux jeux vidéo One Piece ont été développés pour différentes plates-formes, notamment les consoles de salon, les consoles portables et les ordinateurs. Certains des jeux vidéo les plus populaires de la franchise incluent One Piece: Unlimited Cruise, One Piece: Pirate Warriors et One Piece: World Seeker. Ces jeux vidéo permettent aux fans de la franchise de vivre des aventures inédites et de contrôler leurs personnages préférés dans des combats épiques.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Les produits dérivés :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "En plus des films et des jeux vidéo, la franchise One Piece a également été adaptée en de nombreux produits dérivés, tels que des jouets, des vêtements, des cartes à collectionner et des figurines. Ces produits dérivés sont très populaires auprès des fans de la franchise et sont vendus dans le monde entier. Ils permettent aux fans de collectionner des objets à l'effigie de leurs personnages préférés et de montrer leur attachement à la franchise.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Les jouets :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Les jouets One Piece sont très populaires auprès des enfants et des collectionneurs. Ils comprennent des figurines d'action, des véhicules, des peluches et des jeux de société à l'effigie des personnages de la franchise. Ces jouets permettent aux fans de revivre les aventures de leurs personnages préférés et de créer leurs propres histoires.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Les vêtements :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Les vêtements One Piece sont également très populaires auprès des fans de la franchise. Ils comprennent des t-shirts, des sweats à capuche, des casquettes et des chaussures à l'effigie des personnages et des logos de la franchise. Ces vêtements permettent aux fans de montrer leur attachement à la franchise et de se sentir proches de leurs personnages préférés.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Les cartes à collectionner :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Les cartes à collectionner One Piece sont un autre produit dérivé populaire de la franchise. Elles comprennent des cartes à jouer et à collectionner à l'effigie des personnages et des scènes de la franchise. Ces cartes permettent aux fans de collectionner des objets rares et de jouer à des jeux de cartes avec leurs amis.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Les figurines :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Les figurines One Piece sont très appréciées des collectionneurs. Elles comprennent des figurines en PVC, en résine et en métal à l'effigie des personnages de la franchise. Ces figurines sont souvent très détaillées et réalistes, ce qui en fait des objets de collection précieux pour les fans.",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      decorationColor: Color.fromARGB(0, 255, 255, 255),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "En résumé, la franchise One Piece a été déclinée en de nombreuses œuvres, notamment des films, des jeux vidéo et des produits dérivés. Ces adaptations ont connu un grand succès auprès des fans de la franchise et ont permis à One Piece de toucher un public encore plus large.",
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
                      "LES PRODUITS DÉRIVÉES",
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
