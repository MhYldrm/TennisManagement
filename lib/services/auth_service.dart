import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';


class AuthService {

  final firebaseAuth = FirebaseAuth.instance;
  final firebaseFireStore = FirebaseFirestore.instance;


  Future<String> signInwithGoogle () async {
    String res;
    // Oturum açma süreci başlatma
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    // Süreç içinde bilgileri alma
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    // kullanıcı nesnesi oluşturma
    final credential = GoogleAuthProvider.credential(accessToken: gAuth.accessToken, idToken: gAuth.idToken);

    //kullanıcı girişi sağla
    try {
      await firebaseAuth.signInWithCredential(credential);
      res = "success";
    } catch (e) {
      res = e.toString();
    }
    return res;
  }

  Future<String?> signIn(String email, String password) async {
    String? res;
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      res = "success";
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "user-not-found":
          return res = "User Not Found";
        case "invalid-email":
          return res = "The email address is badly formatted.";
        case "invalid-credential":
          return res = "Email or Password is incorrect";
        case "user-disabled":
          return res = "User Disabled";
        default:
          return res = "Login Failed. Please Try Again.";
      }
    }
    return res;
  }

  Future<String?> signUp (String name,String email,String password,) async {
    String? res;
    try {
      UserCredential credential = await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      try{
        await firebaseFireStore.collection("Users").doc(credential.user!.uid).set({
          'name' : name,
          'email' : email,
          'uid' : credential.user!.uid,
        });
      }catch(e){print("$e");}
      res = "success";
    }
    on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "email-already-in-use":
          return res = "The email address is already in use by another account.";
        case "weak-password":
          return res = "Weak Password.\nPassword should be at least 6 characters";
        case "invalid-email":
        case "ERROR_INVALID_EMAİL":
          return res = "The email address is badly formatted.";
        default:
          return res = "Sign Up Failed. Please Try Again.";
      }
    }
    return res;

  }

  Future<void> signOut() async {
    try{
      return await firebaseAuth.signOut();
    }
    catch(e){
      print(e.toString());
      return;
    }
  }

   Future<void> addMembers(Map<String, dynamic> memberInfo,String uid) async {
    await firebaseFireStore.collection("members").doc(uid).set(memberInfo);
  }


  Future<void> uptadeMembers(String id, Map<String, dynamic> uptadeInfo)async{

    return await firebaseFireStore.collection("members").doc(id).update(uptadeInfo);

  }

  Future<void> removeMembers (String id){
    var ref = firebaseFireStore.collection("members").doc(id).delete();
    return ref;
  }



  Future<DocumentReference> addNotifi(String title, String subtitle) async {
    var ref = firebaseFireStore.collection("notifici");

    var documentRef = await ref.add({
      'title': title,
      'subtitle' : subtitle,
    });

    return documentRef;
  }

  Future<DocumentReference> addRezRequest(String info,String day, String hour,String notes) async {
    var ref = firebaseFireStore.collection("rezRequest");

    var documentRef = await ref.add({
      'info' : info,
      'day': day,
      'hour' : hour,
      'notes' : notes,
    });

    return documentRef;
  }

  Future<DocumentReference> addPrograms(String day, String hour,bool isEmpty) async {
    var ref = firebaseFireStore.collection("programs");

    var documentRef = await ref.add({
      'day': day,
      'hour' : hour,
      'isEmpty' : isEmpty,
    });

    return documentRef;
  }


  Future<DocumentReference> addFeedback(String info, String subject,String details) async {
    var ref = firebaseFireStore.collection("feedbacks");

    var documentRef = await ref.add({
      'info': info,
      'subject' : subject,
      'details' : details,
    });

    return documentRef;
  }


  Future<DocumentReference> addSchedule(
      String h1,String h2,String h3,String h4,String h5,String h6,String h7,String h8,String h9,String h10,String h11,
      String h1p1,String h2p2,String h3p3,String h4p4,String h5p5,String h6p6,String h7p7,String h8p8,String h9p9,String h10p10,String h11p11,
      String h1s1,String h2s2,String h3s3,String h4s4,String h5s5,String h6s6,String h7s7,String h8s8,String h9s9,String h10s10,String h11s11,
      String h1w1,String h2w2,String h3w3,String h4w4,String h5w5,String h6w6,String h7w7,String h8w8,String h9w9,String h10w10,String h11w11,
      String h1t1,String h2t2,String h3t3,String h4t4,String h5t5,String h6t6,String h7t7,String h8t8,String h9t9,String h10t10,String h11t11,
      String h1f1,String h2f2,String h3f3,String h4f4,String h5f5,String h6f6,String h7f7,String h8f8,String h9f9,String h10f10,String h11f11,
      String h1sat1,String h2sat2,String h3sat3,String h4sat4,String h5sat5,String h6sat6,String h7sat7,String h8sat8,String h9sat9,String h10sat10,String h11sat11,
      String h1sun1,String h2sun2,String h3sun3,String h4sun4,String h5sun5,String h6sun6,String h7sun7,String h8sun8,String h9sun9,String h10sun10,String h11sun11) async {
    var ref = firebaseFireStore.collection("schdule");

    var documentRef = await ref.add({
      'h1': h1,'h2': h2,'h3': h3,'h4': h4,'h5': h5,'h6': h6,'h7': h7,'h8': h8,'h9': h9,'h10': h10,'h11': h11,
      'h1p1': h1p1,'h2p2': h2p2,'h3p3': h3p3,'h4p4': h4p4,'h5p5': h5p5,'h6p6': h6p6,'h7p7': h7p7,'h8p8': h8p8,'h9p9': h9p9,'h10p10': h10p10,'h11p11': h11p11,
      'h1s1': h1s1,'h2s2': h2s2,'h3s3': h3s3,'h4s4': h4s4,'h5s5': h5s5,'h6s6': h6s6,'h7s7': h7s7,'h8s8': h8s8,'h9s9': h9s9,'h10s10': h10s10,'h11s11': h11s11,
      'h1w1': h1w1,'h2w2': h2w2,'h3w3': h3w3,'h4w4': h4w4,'h5w5': h5w5,'h6w6': h6w6,'h7w7': h7w7,'h8w8': h8w8,'h9w9': h9w9,'h10w10': h10w10,'h11w11': h11w11,
      'h1t1': h1t1,'h2t2': h2t2,'h3t3': h3t3,'h4t4': h4t4,'h5t5': h5t5,'h6t6': h6t6,'h7t7': h7t7,'h8t8': h8t8,'h9t9': h9t9,'h10t10': h10t10,'h11t11': h11t11,
      'h1f1': h1f1,'h2f2': h2f2,'h3f3': h3f3,'h4f4': h4f4,'h5f5': h5f5,'h6f6': h6f6,'h7f7': h7f7,'h8f8': h8f8,'h9f9': h9f9,'h10f10': h10f10,'h11f11': h11f11,
      'h1sat1': h1sat1,'h2sat2': h2sat2,'h3sat3': h3sat3,'h4sat4': h4sat4,'h5sat5': h5sat5,'h6sat6': h6sat6,'h7sat7': h7sat7,'h8sat8': h8sat8,'h9sat9': h9sat9,'h1sat10': h10sat10,'h11sat11': h11sat11,
      'h1sun1': h1sun1,'h2sun2': h2sun2,'h3sun3': h3sun3,'h4sun4': h4sun4,'h5sun5': h5sun5,'h6sun6': h6sun6,'h7sun7': h7sun7,'h8sun8': h8sun8,'h9sun9': h9sun9,'h10sun10': h10sun10,'h11sun11': h11sun11,
    });

    return documentRef;
  }

  Future<void> uptadeSchedule(Map<String, dynamic> uptadeInfo)async{

    return await firebaseFireStore.collection("schdule").doc("1bkUv8Ds3R994DEDOlp4").update(uptadeInfo);

  }

}

