import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/states/comment_state.dart';
import '../../../ui/constant.dart';

class SendCommentBuilder extends StatelessWidget {
  final TextEditingController _controller = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    final _commentState = Provider.of<CommentState>(context);
    void _submitComment() {
      if (_controller.text.isNotEmpty) {
        _commentState.addComment(_controller.text);
        _controller.text = "";
      }
    }

    return Container(
      color: Theme.of(context).canvasColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: SizedBox(
              height: 40,
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: "Leave a comment",
                ),
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.newline,
              ),
            )),
            SizedBox(
              width: 20,
            ),
            CircleAvatar(
              child:
                  IconButton(icon: Icon(Icons.send), onPressed: _submitComment),
            )
          ],
        ),
      ),
    );
  }
}
