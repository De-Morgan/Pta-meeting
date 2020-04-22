import 'package:flutter/material.dart';

import '../../../data/model/comment.dart';

const borderRadius = const Radius.circular(12);
const double widthExtentFraction = 0.6;
const double commentPadding = 8;

class CommentWidget extends StatelessWidget {
  final Comment comment;
  const CommentWidget({Key key, @required this.comment})
      : assert(comment != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget widget;
    if (comment.fromSelf) {
      widget = Container(
        padding: const EdgeInsets.symmetric(vertical: commentPadding),
        child: Row(
          children: <Widget>[
            Spacer(),
            Card(
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.only(
                        topEnd: borderRadius,
                        topStart: borderRadius,
                        bottomStart: borderRadius)),
                child: _CommentWidgetContent(
                  comment: comment,
                )),
          ],
        ),
      );
    } else {
      widget = Container(
        padding: const EdgeInsets.symmetric(vertical: commentPadding),
        child: Row(
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.only(
                      topEnd: borderRadius,
                      topStart: borderRadius,
                      bottomEnd: borderRadius)),
              child: _CommentWidgetContent(
                comment: comment,
              ),
            ),
            Spacer(),
          ],
        ),
      );
    }
    return widget;
  }
}

class _CommentWidgetContent extends StatelessWidget {
  final Comment comment;
  const _CommentWidgetContent({Key key, @required this.comment})
      : assert(comment != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      width: MediaQuery.of(context).size.width * widthExtentFraction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '${comment.text}',
            style: comment.fromSelf
                ? appTheme.accentTextTheme.bodyText1
                : appTheme.textTheme.bodyText1,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: 12,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                "${comment.senderName}",
                style: comment.fromSelf
                    ? appTheme.accentTextTheme.caption
                    : appTheme.textTheme.caption,
              ),
              Spacer(),
              Text(
                "${comment.formattedDate}",
                style: comment.fromSelf
                    ? appTheme.accentTextTheme.caption
                    : appTheme.textTheme.caption,
              )
            ],
          )
        ],
      ),
    );
  }
}
