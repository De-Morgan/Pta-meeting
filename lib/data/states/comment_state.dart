import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ptameeting/data/model/comment.dart';

class CommentState extends ChangeNotifier {
  final List<Comment> _comment = [];

  List<Comment> get comments => _comment;
  int get getCount => _comment.length;
  void addComment(String commentText) {
    final randBool = Random().nextBool();

    if (randBool) {
      _comment.add(Comment(
        "$commentText",
      ));
    } else {
      _comment.add(Comment("$commentText",
          fromSelf: randBool, senderName: "Vintage Heights"));
    }
    notifyListeners();
  }
}
