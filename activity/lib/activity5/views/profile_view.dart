import 'package:flutter/material.dart';
import '../model/userdata.dart';
import '../model/userpost.dart';
import '../model/usercomment.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key, required this.userPost});

  final Userpost userPost;

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  Userdata userData = Userdata();
  late Userpost userPost;
  final TextEditingController commentController = TextEditingController();
  final FocusNode commentFocusNode = FocusNode();

  var nametxtStyle = const TextStyle(fontWeight: FontWeight.bold);

  @override
  void initState() {
    userPost = widget.userPost;
    super.initState();
  }

  @override
  void dispose() {
    commentController.dispose();
    commentFocusNode.dispose();
    super.dispose();
  }

  void addComment() {
    final text = commentController.text.trim();
    if (text.isEmpty) return;
    setState(() {
      userData.commentList.add(
        Usercomment(
          commenterImg: userData.myUserAccount.img,
          commenterName: userData.myUserAccount.name,
          commentTime: 'Just now',
          commentContent: text,
        ),
      );
      userPost.numcomments = ((int.tryParse(userPost.numcomments) ?? 0) + 1)
          .toString();
    });
    commentController.clear();
  }

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
              onPressed: () {
                FocusScope.of(context).requestFocus(commentFocusNode);
              },
              icon: const Icon(Icons.chat_bubble, size: 20),
              label: const Text('Comment'),
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

  Widget commenters(Userpost userPost) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(userPost.numcomments, style: nametxtStyle),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.arrow_drop_down),
          label: const Text('All Comments'),
        ), // TextButton.icon
      ],
    ), // Row
  ); // Padding

  Widget userpostdetails(Usercomment userComment) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(userComment.commenterImg),
          radius: 18,
        ), // CircleAvatar
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ), // BoxDecoration
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(userComment.commenterName, style: nametxtStyle),
                    Text(userComment.commentContent),
                  ],
                ), // Column
              ), // Container
              const SizedBox(height: 4),
              Row(
                children: [
                  Text(userComment.commentTime),
                  const SizedBox(width: 12),
                  const Text('Like'),
                  const SizedBox(width: 12),
                  const Text('Reply'),
                ],
              ), // Row
            ],
          ), // Column
        ), // Expanded
      ],
    ), // Row
  ); // Padding

  Widget commentComposer() => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
    child: Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(userData.myUserAccount.img),
          radius: 18,
        ), // CircleAvatar
        const SizedBox(width: 8),
        Expanded(
          child: TextField(
            controller: commentController,
            focusNode: commentFocusNode,
            decoration: InputDecoration(
              hintText: 'Write a comment...',
              filled: true,
              fillColor: Colors.grey.shade200,
              contentPadding: const EdgeInsets.symmetric(horizontal: 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ), // OutlineInputBorder
            ), // InputDecoration
            onSubmitted: (_) => addComment(),
          ), // TextField
        ), // Expanded
        IconButton(
          onPressed: addComment,
          icon: const Icon(Icons.send, color: Colors.blue),
        ), // IconButton
      ],
    ), // Row
  ); // Padding

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.grey),
        ), // IconButton
      ), // AppBar
      body: ListView(
        shrinkWrap: true,
        children: [
          userline(userPost),
          postimage(userPost),
          buttons(userPost),
          commenters(userPost),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: userData.commentList
                .map((userComment) => userpostdetails(userComment))
                .toList(),
          ), // ListView
          commentComposer(),
          const SizedBox(height: 15),
        ],
      ), // ListView
    ); // Scaffold
  }
}
