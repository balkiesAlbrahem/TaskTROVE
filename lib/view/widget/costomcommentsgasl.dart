import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/widget/costomProfileAvatar.dart';
// import 'package:textforghazl/models/comment.dart';
// import 'package:textforghazl/profile_avatar.dart';

class Commentsss extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final int id_post;
  // final List<comment_Model> comments;
  // ignore: non_constant_identifier_names
  const Commentsss({super.key, required this.id_post});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 2,
      separatorBuilder: (context, index) => const SizedBox(height: 24),
      itemBuilder: (context, index) {
        // final item = comments[index];
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileAvatar(profilePhoto: Image.asset("assets/image/☾.jpeg")
                // item.userProfileImageURL != null
                //     ? Image.network(item.userProfileImageURL!)
                //     : null,
                ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColor.greentop2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "reeee",
                    style: TextStyle(
                      fontFamily: 'PlayfairDisplay',
                      color: AppColor.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  // if (item.text != null) const SizedBox(height: 5),
                  // if (item.text != null)
                  Text(
                    "hi am a koing",
                    // item.comment,
                    style: TextStyle(color: Colors.black),
                  ),
                  // if (item.attachment != null) const SizedBox(height: 5),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
