// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:ptameeting/data/states/comment_state.dart';

import 'package:ptameeting/main.dart';
import 'package:ptameeting/ui/comments/comment_screen.dart';
import 'package:ptameeting/ui/comments/widgets/comment_widget.dart';
import 'package:ptameeting/ui/pta_meeting_screen/pta_meeting.dart';
import 'package:ptameeting/ui/pta_meeting_screen/widgets/pta_meeting_header.dart';

void main() {
  Widget _loadPTAMeetingPage() => ChangeNotifierProvider(
        create: (BuildContext context) => CommentState(),
        child: MaterialApp(
          home: Scaffold(
            body: PTAMeetingPage(),
          ),
        ),
      );

  testWidgets('Comment appears on the screen when the send button is pressed.',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(_loadPTAMeetingPage());

    final comment = find.byType(CommentWidget);
    final inputField = find.widgetWithText(TextField, "Leave a comment");
    final sendButton = find.byIcon(Icons.send);

    // Expect that no comment is on the screen at this stage
    expect(comment, findsNothing);

    // Expect to find one inputField with the text "Leave a comment"
    expect(inputField, findsOneWidget);

    // Expect to find one Widget with the send icon
    expect(sendButton, findsOneWidget);

    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");

    //tap the send button
    await tester.tap(sendButton);

    // Rebuild the widget after the state has changed.
    await tester.pump();

    // Expect that one comment is on the screen at this stage
    expect(comment, findsOneWidget);
  });

  testWidgets('"PTA meeting" section disappears on sufficient scroll',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(_loadPTAMeetingPage());

    final ptaMeetingHeader = find.byType(PtaMeetingHeaderWidget);
    final commentScreen = find.byType(SliverCommentScreen);
    final ptaMeetingPage = find.byType(PTAMeetingPage);

    final inputField = find.widgetWithText(TextField, "Leave a comment");
    final sendButton = find.byIcon(Icons.send);

    // Expect that there is one pta meeting header on the screen at this stage
    expect(ptaMeetingHeader, findsOneWidget);

    // Expect that there is no SliverCommentScreen the screen at this stage
    expect(commentScreen, findsNothing);

    expect(ptaMeetingPage, findsOneWidget);

    // Expect to find one inputField with the text "Leave a comment"
    expect(inputField, findsOneWidget);

    // Expect to find one Widget with the send icon
    expect(sendButton, findsOneWidget);

    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);

    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);

    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);

    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);

    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);

    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);

    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);

    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);

    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);

    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);

    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);

    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);

    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);

    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);

    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);

    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);

    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);
    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);

    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);
    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);
    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);
    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);
    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);
    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);
    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);
    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);
    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);
    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);
    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);
    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);
    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);
    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);
    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);
    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);
    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);
    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);
    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);
    //Enter Morgan into input field
    await tester.enterText(inputField, "Morgan");
    //tap the send button
    await tester.tap(sendButton);

    // Rebuild the widget after the state has changed.
    await tester.pump();

    // Expect that there is one SliverCommentScreen the screen at this stage
    expect(commentScreen, findsOneWidget);

    ///This part of the test doesn't work as expected therefore causing the test to fail

    final gesture = await tester.startGesture(Offset(0, 300));
    await gesture.moveBy(Offset(0, -1000)); //How much to scroll by
    await tester.pump();

    // Expect that there is no pta meeting header on the screen at this stage
    expect(ptaMeetingHeader, findsNothing);
  });
}
