import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/states/comment_state.dart';
import '../../constant.dart';

class CommentCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Consumer<CommentState>(
            builder: (BuildContext context, CommentState value, Widget child) {
              return Text(
                "Comment (${value.getCount})",
                style: Theme.of(context).textTheme.subtitle2,
              );
            },
          ),
        ),
      ],
    );
  }
}
