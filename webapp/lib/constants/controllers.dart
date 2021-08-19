import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:webapp/controllers/menu_controller.dart';
import 'package:webapp/controllers/navigation_controller.dart';

MenuController menuController = MenuController.instance;
NavigationController navigationController = NavigationController.instance;

final Future<FirebaseApp> initialization = Firebase.initializeApp();
FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
FirebaseAuth auth = FirebaseAuth.instance;
