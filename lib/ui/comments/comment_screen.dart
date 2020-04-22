import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:ptameeting/data/states/comment_state.dart';
import '../../ui/comments/widgets/comment_widget.dart';
import '../../data/model/comment.dart';

class SliverCommentScreen extends StatelessWidget {
  const SliverCommentScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CommentState>(
      builder: (BuildContext context, CommentState value, Widget child) {
        final comments = value.comments;
        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final comment = comments[index];
              return CommentWidget(
                comment: comment,
              );
            },
            childCount: comments.length,
          ),
        );
      },

      // child:
    );
  }
}
