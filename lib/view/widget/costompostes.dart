import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/services/addcommentpostservices.dart';
import 'package:progectbalkies/view/screen/comment.dart';
import 'package:progectbalkies/view/widget/costomProfileAvatar.dart';
import 'package:progectbalkies/view/widget/costomcommentsgasl.dart';
import 'package:progectbalkies/view/widget/costompostbottom.dart';
import 'package:progectbalkies/view/widget/cosyomTextInputSubmit.dart';
// import 'package:textforghazl/models/comment.dart';
// import 'package:textforghazl/widgets/text_input_submit.dart';
// import './comments.dart';
// import './post_button.dart';
// import './profile_avatar.dart';

// ignore: must_be_immutable
class Post extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final int id_post;
  final String? text, location;
  final DateTime? date;
  final Widget? image;
  // final List<Comment> comments;
  final Widget profilePhoto;
  final String name;
  void Function() showprofile;
  Post({
    super.key,
    this.date,
    this.location,
    this.image,
    this.text,
    // this.comments = const [],
    required this.profilePhoto,
    required this.name,
    required this.showprofile,
    required this.id_post,
  });
/////////////////////////////
  ///
  ///
  ///
  String _dateToString(DateTime date) {
    final now = DateTime.now();

    if (now.isAfter(date)) {
      final daysSincePost = now.difference(date).inDays;

      if (daysSincePost == 0) {
        final difference = now.difference(date);
        if (difference.inHours > 0) return '${difference.inHours}h';
        if (difference.inMinutes > 0) return '${difference.inMinutes}m';
        if (difference.inSeconds > 0) return '${difference.inSeconds}s';
      }
      if (daysSincePost == 1) {
        return 'Yesterday at ${date.hour}:${date.minute}';
      }
      if (daysSincePost < 7) {
        return '$daysSincePost days ago';
      }
      if (daysSincePost < 30) {
        return '${daysSincePost ~/ 7} weeks ago';
      }
    }

    return 'At ${date.year}/${date.month}/${date.day}';
  }

/////////////////////
  ///
  ///
  ///
  ///
  String _dateLocationInfo() {
    final dateString = date == null ? null : _dateToString(date!);
    final locationString = location;

    if (dateString == null && locationString == null) return '';
    if (locationString != null && dateString != null) {
      return '$dateString . $locationString';
    }
    if (dateString != null) return dateString;
    if (locationString != null) return locationString;

    return 'unknown';
  }

////////////////
  ///
  ///
  ///
  void onLikePressed() {}
//////////////
  ///
  void onCommentPressed(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    final textController = TextEditingController();
    var isEmpty = true;

    void submit() {
      print("one");
      Addcomment().Authaddcomment(id_post, textController.text);
      print("tow");
      textController.clear();
    }

    ////////////////
    ///
    ///Show your comments
    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) {
          return SimpleDialog(
            backgroundColor: Colors.white,
            title: const Text(
              'Comments',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            contentPadding: const EdgeInsets.all(0),
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(24, 12, 24, 0),
                height: screen.height * .7,
                width: screen.width * .9,
                child: Commentsss(
                  id_post: 12,
                ),
              ),
              TextInputSubmit(
                hintText: 'write your comments',
                controller: textController,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                backgroundColor: AppColor.black12,
                onSubmitted: (_) => submit,
                onChange: (text) {
                  setState(() => isEmpty = text.isEmpty);
                },
                hintStyle: const TextStyle(
                  color: AppColor.black,
                ),
                textStyle: const TextStyle(
                  color: AppColor.black,
                ),
                trailings: [
                  if (!isEmpty)
                    IconButton(
                        onPressed: submit,
                        icon: const Icon(
                          Icons.send,
                          color: Colors.black,
                        )),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  void onSavePressed() {}
  void onSharePressed() {}

  @override
  Widget build(BuildContext context) {
    const likeIcon = Icons.thumb_up_alt;
    const commentIcon = Icons.comment;
    const saveIcon = Icons.savings_outlined;
    const shareIcon = Icons.share_outlined;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Container(
        //   height: 0.5,
        //   color: Colors.black,
        // ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 7),
          child: InkWell(
            onTap: showprofile,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileAvatar(profilePhoto: profilePhoto),
                const SizedBox(width: 10),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      _dateLocationInfo(),
                      style:
                          const TextStyle(color: Colors.black, fontSize: 12.0),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(
                    /////////////////////////////////////////////////////////////////////////
                    Icons.more_horiz,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        /////////////////
        if (text != null) const SizedBox(height: 10),
        if (text != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              text!,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        if (image != null) const SizedBox(height: 10),
        if (image != null) image!,
        // image!,
        // const SizedBox(height: 10),
        // Container(
        //   height: 0.5,
        //   color: Colors.black,
        // ),
        Row(
          children: [
            PostButton(icon: likeIcon, onPressed: onLikePressed),
            PostButton(
              icon: commentIcon,
              onPressed: () {
                Get.to(Comments(
                  id_post: id_post,
                ));
              },
            ),
            PostButton(icon: saveIcon, onPressed: onSavePressed),
            PostButton(icon: shareIcon, onPressed: onSharePressed),
          ],
        ),
        Container(
          height: 0.5,
          color: Colors.black,
        ),
      ],
    );
  }
}
