import 'package:flutter/material.dart';

import '../../../ui/comments/widgets/comment_counter.dart';
import 'pta_meeting_header.dart';

class SliverPtaMeetingHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      expandedHeight: 400,
      elevation: 0,
      pinned: true,
      floating: false,
      flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: PtaMeetingHeaderWidget()),
      bottom: PreferredSize(
          child: CommentCounter(), preferredSize: Size.fromHeight(0)),
    );
  }
}
