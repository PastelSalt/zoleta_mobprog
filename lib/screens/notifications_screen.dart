import 'package:zoleta_mobprog/constant.dart';
import 'package:zoleta_mobprog/models/notification_model.dart';
import 'package:zoleta_mobprog/widget/custom_text.dart';
import 'package:material_ui/material_ui.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  final List<NotificationModel> notifications = const [
    NotificationModel(text: 'Sara Hoshikawa liked your post.', timestamp: 'Just now'),
    NotificationModel(text: 'Minato Aqua commented: "This looks amazing!! 💙"', timestamp: 'Just now'),
    NotificationModel(text: 'Natsuiro Matsuri reacted ❤️ to your photo.', timestamp: 'Just now'),
    NotificationModel(text: 'Hina Hinahata liked your profile picture.', timestamp: '5 minutes ago'),
    NotificationModel(text: 'Momona Matsumoto commented: "Where did you get this?"', timestamp: '5 minutes ago'),
    NotificationModel(text: 'Kaguya Luna mentioned you in a comment.', timestamp: '5 minutes ago'),
    NotificationModel(text: 'Yuuki Sakuna started following your updates.', timestamp: '15 minutes ago'),
    NotificationModel(text: 'Pmaru reacted 😂 to your post.', timestamp: '15 minutes ago'),
    NotificationModel(text: 'Nanawo Akari shared a new post.', timestamp: '15 minutes ago'),
    NotificationModel(text: 'Nakiso liked your recent status update.', timestamp: '1 hour ago'),
    NotificationModel(text: 'Yunayu sent you a friend request.', timestamp: '1 hour ago'),
    NotificationModel(text: 'Sara Hoshikawa and 12 others liked your post.', timestamp: '1 hour ago'),
    NotificationModel(text: 'Minato Aqua mentioned you in a post.', timestamp: '3 hours ago'),
    NotificationModel(text: 'Natsuiro Matsuri commented: "LET\'S GOOOO!!"', timestamp: '3 hours ago'),
    NotificationModel(text: 'Hina Hinahata shared a new photo.', timestamp: '3 hours ago'),
    NotificationModel(text: 'Momona Matsumoto reacted 👍 to your comment.', timestamp: 'Yesterday'),
    NotificationModel(text: 'Yuuki Sakuna replied to your comment.', timestamp: 'Yesterday'),
    NotificationModel(text: 'Kaguya Luna and 5 others reacted to your post.', timestamp: 'Yesterday'),
    NotificationModel(text: 'Pmaru uploaded a new video.', timestamp: '2 days ago'),
    NotificationModel(text: 'Nanawo Akari started following your page.', timestamp: '2 days ago'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        final notif = notifications[index];
        return ListTile(
          leading: const CircleAvatar(
            backgroundColor: fbLightPrimary,
            child: Icon(Icons.person, color: fbDarkPrimary),
          ),
          title: CustomText(
            text: notif.text,
            fontSize: 14,
            color: Colors.black87,
            fontFamily: 'FredokaSemiCondensed',
            fontWeight: FontWeight.w500,
          ),
          subtitle: CustomText(
            text: notif.timestamp,
            fontSize: 12,
            color: Colors.grey,
            fontFamily: 'FredokaSemiCondensed',
          ),
          trailing: IconButton(
            icon: const Icon(Icons.more_horiz, size: 20),
            onPressed: () {},
          ),
          onTap: () {},
        );
      },
    );
  }
}
