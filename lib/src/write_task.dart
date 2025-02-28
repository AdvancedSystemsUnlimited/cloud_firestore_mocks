import 'package:cloud_firestore/cloud_firestore.dart';

// Firestore has the 3 types of batch writes
// https://firebase.google.com/docs/firestore/manage-data/transactions#batched-writes
enum WriteCommand {
  setData,
  updateData,
  delete,
}

class WriteTask {
  late WriteCommand command;
  late DocumentReference document;
  // Is null if command is delete.
  Map<String, dynamic>? data;
  // Is defined only for setData.
  bool? merge;
}
