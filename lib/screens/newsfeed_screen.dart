import 'package:zoleta_mobprog/widget/newsfeed_card.dart';
import 'package:material_ui/material_ui.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsfeedCard(
          userName: 'Sara Hoshikawa',
          postContent:
              'My 2nd mini album "Stella Note" is coming on November 25! 🌟 I am also holding my 2nd solo live concert, "Hoshikuzu Shining Day", on February 7, 2027! I hope everyone looks forward to it! 💖 #星川サラ #StellaNote',
          date: 'November 21, 2026',
          numOfLikes: 2480,
          hasImage: false,
          profileImagePath: 'assets/images/sara_hoshikawa_profile.jpeg',
        ),
        NewsfeedCard(
          userName: 'Sana Natori',
          postContent:
              '「SANATRIC WAVE」ありがとうございました！！🌸\n\nMy very first solo live concert! It was an unforgettable day filled with music, excitement, and wonderful memories. Thank you to all the Sensees who came to see me! Let\'s make even more wonderful memories together!\n\n#SANATRICWAVE #名取さな #1stLive',
          date: 'December 1, 2023',
          numOfLikes: 3000,
          hasImage: true,
          imagePath: 'assets/images/sana_natori_1st_live.png',
          profileImagePath: 'assets/images/sana_natori_profile.webp',
        ),
      ],
    );
  }
}
