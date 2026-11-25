class PostModel {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final bool hasImage;
  final String? imagePath;
  final String? profileImagePath;

  const PostModel({
    required this.userName,
    required this.postContent,
    required this.date,
    required this.numOfLikes,
    this.hasImage = false,
    this.imagePath,
    this.profileImagePath,
  });
}
