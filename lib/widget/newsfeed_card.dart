import 'package:zoleta_mobprog/constant.dart';
import 'package:zoleta_mobprog/widget/custom_text.dart';
import 'package:zoleta_mobprog/widget/wireframe_image_placeholder.dart';
import 'package:material_ui/material_ui.dart';

class NewsfeedCard extends StatelessWidget {
  const NewsfeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    required this.numOfLikes,
    this.hasImage = false,
    this.imagePath,
    this.profileImagePath,
  });

  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final bool hasImage;
  final String? imagePath;
  final String? profileImagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User info row
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: fbLightPrimary,
                  backgroundImage: profileImagePath != null
                      ? AssetImage(profileImagePath!) as ImageProvider
                      : null,
                  child: profileImagePath == null
                      ? const Icon(Icons.person, color: fbDarkPrimary)
                      : null,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: userName,
                      fontSize: 16,
                      color: Colors.black87,
                      fontFamily: 'FredokaBold',
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      text: date,
                      fontSize: 12,
                      color: Colors.grey,
                      fontFamily: 'FredokaSemiCondensed',
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Post content
            CustomText(
              text: postContent,
              fontSize: 14,
              color: Colors.black,
              fontFamily: 'FredokaSemiCondensed',
            ),
            if (hasImage) ...[
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: imagePath != null
                    ? Image.asset(
                        imagePath!,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      )
                    : const WireframeImagePlaceholder(),
              ),
            ],
            const SizedBox(height: 12),
            const Divider(height: 1),
            const SizedBox(height: 8),
            // Actions row (Like, Comment, Share)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NewsfeedActionButton(
                  icon: Icons.thumb_up,
                  label: '$numOfLikes',
                  iconColor: fbPrimary,
                ),
                const NewsfeedActionButton(
                  icon: Icons.chat_bubble_outline,
                  label: 'Comment',
                  iconColor: fbDarkPrimary,
                ),
                const NewsfeedActionButton(
                  icon: Icons.reply,
                  label: 'Share',
                  iconColor: fbDarkPrimary,
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Write a comment row
            Row(
              children: [
                const CircleAvatar(
                  radius: 14,
                  backgroundColor: fbLightPrimary,
                  child: Icon(Icons.person, size: 16, color: fbDarkPrimary),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const CustomText(
                      text: 'Write a comment...',
                      fontSize: 13,
                      color: Colors.grey,
                      fontFamily: 'FredokaSemiCondensed',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // View all comments
            const CustomText(
              text: 'View all comments',
              fontSize: 13,
              color: Colors.black87,
              fontFamily: 'FredokaBold',
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}

class NewsfeedActionButton extends StatelessWidget {
  const NewsfeedActionButton({
    super.key,
    required this.icon,
    required this.label,
    required this.iconColor,
  });

  final IconData icon;
  final String label;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 18, color: iconColor),
        const SizedBox(width: 6),
        CustomText(
          text: label,
          fontSize: 13,
          color: fbDarkPrimary,
          fontFamily: 'FredokaSemiCondensed',
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
