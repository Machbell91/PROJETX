// Importez la bibliothèque Firebase et le fournisseur d'authentification Google
import firebase from 'firebase/app';
import 'firebase/auth';

// Ajoutez votre configuration Firebase
const firebaseConfig = {
  apiKey: "AIzaSyAlv-PuhmV69Es_8pUqswLCX6cwDn4eKDs",
  authDomain: "myprojo-408ab.firebaseapp.com",
  databaseURL: "https://myprojo-408ab-default-rtdb.europe-west1.firebasedatabase.app",
  projectId: "myprojo-408ab",
  storageBucket: "myprojo-408ab.appspot.com",
  messagingSenderId: "883337053771",
  appId: "1:883337053771:web:0152dbf79d2f83dc362fce"
};

// Initialisez Firebase avec votre configuration
firebase.initializeApp(firebaseConfig);

// Créez un nouveau fournisseur d'authentification Google
const provider = new firebase.auth.GoogleAuthProvider();

// Connectez-vous avec le fournisseur d'authentification Google
function signInWithGoogle() {
  firebase.auth().signInWithPopup(provider)
    .then((result) => {
      // L'utilisateur est connecté
      console.log('Utilisateur connecté : ' + result.user.displayName);
    })
    .catch((error) => {
      // Une erreur s'est produite
      console.error('Erreur lors de la connexion avec Google : ' + error.message);
    });
}

// Déconnectez l'utilisateur
function signOut() {
  firebase.auth().signOut()
    .then(() => {
      // L'utilisateur est déconnecté
      console.log('Utilisateur déconnecté');
    })
    .catch((error) => {
      // Une erreur s'est produite
      console.error('Erreur lors de la déconnexion : ' + error.message);
    });
}

// Vérifiez si l'utilisateur est connecté
firebase.auth().onAuthStateChanged((user) => {
  if (user) {
    // L'utilisateur est connecté
    console.log('Utilisateur connecté : ' + user.displayName);
  } else {
    // L'utilisateur est déconnecté
    console.log('Utilisateur déconnecté');
  }
});
