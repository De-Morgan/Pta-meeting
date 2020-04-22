import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/states/comment_state.dart';
import 'ui/pta_meeting_screen/pta_meeting.dart';
import 'ui/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CommentState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PTA Meeting',
        theme: appTheme,
        home: PTAMeetingPage(),
      ),
    );
  }
}
