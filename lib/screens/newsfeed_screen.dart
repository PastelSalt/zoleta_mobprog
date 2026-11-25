import 'package:zoleta_mobprog/models/post_model.dart';
import 'package:zoleta_mobprog/widget/newsfeed_card.dart';
import 'package:material_ui/material_ui.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  final List<PostModel> posts = const [
    PostModel(
      userName: 'Hina Hinahata',
      postContent:
          'Finally got to spend some time relaxing today! Sometimes doing absolutely nothing is the best thing ever. ☁️',
      date: '2 hours ago',
      numOfLikes: 142,
      hasImage: true,
    ),
    PostModel(
      userName: 'Momona Matsumoto',
      postContent:
          'Today\'s recording session was so much fun! I can\'t wait for everyone to hear what we\'ve been working on! 🎤',
      date: '4 hours ago',
      numOfLikes: 530,
      hasImage: true,
    ),
    PostModel(
      userName: 'Minato Aqua',
      postContent:
          'Thank you for all the wonderful memories! I\'ll always treasure the time we spent together. 💙',
      date: '6 hours ago',
      numOfLikes: 1200,
      hasImage: true,
    ),
    PostModel(
      userName: 'Natsuiro Matsuri',
      postContent:
          'GOOD MORNING!! Who\'s ready for another energetic day?! Let\'s make today amazing!! ☀️',
      date: '8 hours ago',
      numOfLikes: 89,
      hasImage: false,
    ),
    PostModel(
      userName: 'Kaguya Luna',
      postContent:
          'POG!!! I found something super interesting today!!! You guys HAVE to see this!!! 🌙',
      date: '10 hours ago',
      numOfLikes: 410,
      hasImage: true,
    ),
    PostModel(
      userName: 'Yuuki Sakuna',
      postContent:
          'Been practicing a little more than usual lately. There\'s still so much I want to improve! 🐾',
      date: '12 hours ago',
      numOfLikes: 275,
      hasImage: false,
    ),
    PostModel(
      userName: 'Yunayu',
      postContent:
          'Spent the afternoon exploring a new café. The atmosphere was incredibly cozy! ☕',
      date: '1 day ago',
      numOfLikes: 615,
      hasImage: true,
      imagePath: 'assets/images/sana_natori_1st_live.png',
      profileImagePath: 'assets/images/sana_natori_profile.webp',
    ),
    PostModel(
      userName: 'Pmaru',
      postContent:
          'NEW VIDEO IS OUT!!! I worked really hard on this one, so please give it a watch!! 🐿️',
      date: '1 day ago',
      numOfLikes: 950,
      hasImage: true,
    ),
    PostModel(
      userName: 'Nanawo Akari',
      postContent:
          'Working on music always reminds me why I fell in love with singing in the first place. Thank you for listening! 🎶',
      date: '2 days ago',
      numOfLikes: 820,
      hasImage: false,
    ),
    PostModel(
      userName: 'Nakiso',
      postContent:
          'A little something I\'ve been working on recently. I hope it reaches someone who needs to hear it. 🎧',
      date: '2 days ago',
      numOfLikes: 340,
      hasImage: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return NewsfeedCard(
          userName: post.userName,
          postContent: post.postContent,
          date: post.date,
          numOfLikes: post.numOfLikes,
          hasImage: post.hasImage,
          imagePath: post.imagePath,
          profileImagePath: post.profileImagePath,
        );
      },
    );
  }
}
