import 'package:flutter/material.dart';
import '../model/userdata.dart';
import '../model/userpost.dart';
import 'profile_view.dart';

Future<void> gotoPage(BuildContext context, Widget page) {
  return Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

class Postlist extends StatefulWidget {
  const Postlist({super.key, required this.userdata});

  final Userdata userdata;

  @override
  State<Postlist> createState() => _PostlistState();
}

class _PostlistState extends State<Postlist> {
  var nametxtStyle = const TextStyle(fontWeight: FontWeight.bold);

  Widget userline(Userpost userPost) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CircleAvatar(
          backgroundImage: AssetImage(userPost.userimg),
          radius: 20,
        ), // CircleAvatar
      ), // Container
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(userPost.username, style: nametxtStyle),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(userPost.time),
              const Text(' · '),
              const Icon(Icons.group, size: 15, color: Colors.grey),
            ],
          ), // Row
        ],
      ), // Column
    ],
  ); // Row

  Widget postimage(Userpost userPost) => Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(children: [Text(userPost.postcontent)]),
        const SizedBox(height: 15),
        Container(
          height: 350,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(userPost.posting),
              fit: BoxFit.fill,
            ), // DecorationImage
          ), // BoxDecoration
        ), // Container
      ],
    ), // Column
  ); // Padding

  Widget buttons(Userpost userPost) => Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const Divider(color: Colors.grey),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: userPost.isLiked ? Colors.blue : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  userPost.isLiked = !userPost.isLiked;
                });
              },
              icon: Icon(
                userPost.isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
                size: 20,
              ),
              label: Text(userPost.isLiked ? 'Liked' : 'Like'),
            ), // TextButton.icon
            TextButton.icon(
              style: TextButton.styleFrom(foregroundColor: Colors.grey),
              onPressed: () async {
                await gotoPage(context, ProfileView(userPost: userPost));
                setState(() {});
              },
              icon: const Icon(Icons.chat_bubble, size: 20),
              label: Text('Comment (${userPost.numcomments})'),
            ), // TextButton.icon
            TextButton.icon(
              style: TextButton.styleFrom(foregroundColor: Colors.grey),
              onPressed: () {},
              icon: const Icon(Icons.share, size: 20),
              label: const Text('Share'),
            ), // TextButton.icon
          ],
        ), // Row
      ), // Padding
      const Divider(color: Colors.grey),
    ],
  ); // Column

  Widget showPost(Userpost userPost) => Column(
    children: [
      userline(userPost),
      postimage(userPost),
      buttons(userPost),
      SizedBox(height: 10, child: Container(color: Colors.grey)),
      const SizedBox(height: 15),
    ],
  ); // Column

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: widget.userdata.userList.map((userPost) {
          return InkWell(
            onTap: () async {
              await gotoPage(context, ProfileView(userPost: userPost));
              setState(() {});
            },
            child: showPost(userPost),
          ); // InkWell
        }).toList(),
      ), // ListView
    ); // SingleChildScrollView
  }
}
