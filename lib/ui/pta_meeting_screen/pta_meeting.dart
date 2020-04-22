import 'package:flutter/material.dart';
import 'package:ptameeting/ui/comments/widgets/comment_counter.dart';

import '../../ui/comments/comment_screen.dart';
import 'widgets/send_comment.dart';
import 'widgets/sliver_pta_meeting_header.dart';

class PTAMeetingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Flexible(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverPtaMeetingHeader(),
              SliverCommentScreen(),
            ],
          ),
        ),
        SendCommentBuilder()
      ],
    ));
  }
}
