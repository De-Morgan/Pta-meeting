import 'package:flutter/material.dart';

import '../../constant.dart';

const double mainHorizontalMargin = 14;
const double mainVerticalMargin = 14;

class PtaMeetingHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(horizontalPadding),
      child: Column(
        children: <Widget>[
          _PtaMeetingHeader(),
          SizedBox(
            height: mainVerticalMargin,
          ),
          Divider(),
          SizedBox(
            height: mainVerticalMargin,
          ),
          _PtaMeetingBody()
        ],
      ),
    );
  }
}

class _PtaMeetingHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "PTA Meeting",
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          SizedBox(
            height: mainVerticalMargin,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 16,
              ),
              SizedBox(
                width: mainHorizontalMargin,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Vintage Heights"),
                      VerticalDivider(),
                      Text("5 January, 2020")
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: <Widget>[Text("To you (Tolulope Saba)")],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class _PtaMeetingBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Wrap(
            children: <Widget>[
              Text(
                  "1. We now charge for Bitcoin doposits. We deduct a small fee from each Bitcoin amount you send to our app")
            ],
          ),
          SizedBox(
            height: mainVerticalMargin,
          ),
          Wrap(
            children: <Widget>[
              Text(
                  "2. We posted this notice in our community groups a few days ago. But since many people missed it, we decided to write it in this email as well")
            ],
          ),
          SizedBox(
            height: mainVerticalMargin,
          ),
          Row(
            children: <Widget>[
              Icon(Icons.calendar_today),
              SizedBox(
                width: mainHorizontalMargin,
              ),
              Text(
                "Add to calender",
                style: Theme.of(context).primaryTextTheme.bodyText2,
              )
            ],
          )
        ],
      ),
    );
  }
}
