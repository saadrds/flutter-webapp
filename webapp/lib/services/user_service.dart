import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:webapp/constants/controllers.dart';
import 'package:webapp/models/user.dart';

class USerServices {
  String collection = "users";

  void createUser(
      {required String id, required String name, required String email}) {
    firebaseFirestore
        .collection(collection)
        .doc(id)
        .set({"name": name, "email": email, "id": id});
  }

  Future<UserModel> getUserById(String id) =>
      firebaseFirestore.collection(collection).doc(id).get().then((doc) {
        return UserModel.fromSnapshot(doc);
      });

  Future<bool> doesUserExist(String id) async => firebaseFirestore
      .collection(collection)
      .doc(id)
      .get()
      .then((value) => value.exists);

  Future<List<UserModel>> getAll(String id) async =>
      firebaseFirestore.collection(collection).get().then((result) {
        List<UserModel> users = [];
        for (DocumentSnapshot user in result.docs) {
          users.add(UserModel.fromSnapshot(user));
        }
        return users;
      });
}
