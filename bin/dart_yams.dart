import 'ihm.dart';
import 'joueur.dart';
import 'yams.dart';

void main(List<String> arguments) {
  Yams yams = Yams.vide();
  IHM.titre();
  yams = IHM.menu();
  //Yams yams = Yams(2);
  while (!yams.partieFinie()) {
    IHM.afficheManche(yams.getLesGagnantsManches().length + 1);
    for (Joueur j in yams.getLesJoueurs()) {
      IHM.afficheJoueur(j);
      IHM.tourDeJoueur(j);
      IHM.recapResultatsManche(yams.getLesJoueurs());
    }
    yams.ajouterGagnant(yams.meilleurJoueur());
    IHM.afficheGagnantDeLaManche(yams);
    IHM.recapResultatsPartie(yams);
  }
  IHM.afficheGagnantDeLaPartie(yams);
  IHM.restart();
}
