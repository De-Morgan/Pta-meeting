class Comment {
  final String text;
  final bool fromSelf;
  final String senderName;
  final String formattedDate;
  Comment(this.text,
      {this.fromSelf = true,
      this.senderName = "You",
      this.formattedDate = "5 January, 2020"});
}
