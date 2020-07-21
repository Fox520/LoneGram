class Post {
  final String userUrl;
  final String postUrl;
  final String userName;
  final String caption;
  final String likes, comments;
  final bool hasPost;
  Post(this.userName, this.userUrl, this.postUrl, this.caption, this.likes,
      this.comments, this.hasPost);
}
