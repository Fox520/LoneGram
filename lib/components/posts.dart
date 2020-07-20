import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lonegram/constants.dart';
import 'package:lonegram/screens/post_detail.dart';
import 'package:lonegram/size_config.dart';

class Post extends StatelessWidget {
  final String userUrl;
  final String postUrl;
  final String userName;
  final String caption;
  final String likes, comments;
  final bool hasPost;
  Post(this.userName, this.userUrl, this.postUrl, this.caption, this.likes,
      this.comments, this.hasPost);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: mainPaddingSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          postHead(userName, userUrl, hasPost),
          SizedBox(
            height: 15,
          ),
          buildPostImage(context),
          SizedBox(
            height: 20,
          ),
          belowImageOptions(likes, comments),
          SizedBox(
            height: 15,
          ),
          postCaption(userName, caption),
        ],
      ),
    );
  }

  buildPostImage(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PostDetail(
                  userName, userUrl, postUrl, likes, comments, hasPost)),
        );
      },
      child: Container(
        height: 50.68 * SizeConfig.heightMultiplier,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ],
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
            image: NetworkImage(postUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  belowImageOptions(String likes, String comments) {
    return Row(
      children: [
        Icon(AntDesign.hearto),
        SizedBox(
          width: 5,
        ),
        Text(
          likes,
          style: TextStyle(color: Colors.black87),
        ),
        SizedBox(
          width: 20,
        ),
        Icon(MaterialCommunityIcons.comment_outline),
        SizedBox(
          width: 5,
        ),
        Text(
          comments,
          style: TextStyle(color: Colors.black87),
        ),
        Spacer(),
        Icon(Feather.bookmark),
      ],
    );
  }
}

postCaption(String username, String caption) {
  return Container(
    height: 50,
    child: Wrap(
      children: [
        RichText(
          text: TextSpan(
            text: username,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                  text: "  $caption",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  )),
            ],
          ),
        )
      ],
    ),
  );
}

postHead(String username, String url, bool hasStory) {
  return Row(
    children: [
      postAvatar(url, hasStory),
      SizedBox(
        width: 2.78 * SizeConfig.widthMultiplier,
      ),
      Text(
        username,
        style: TextStyle(
            fontSize: 2.73 * SizeConfig.textMultiplier,
            fontWeight: FontWeight.w500),
      ),
      Spacer(),
      Icon(SimpleLineIcons.options),
    ],
  );
}

postAvatar(String url, bool hasStory) {
  return Container(
    height: 6.76 * SizeConfig.heightMultiplier,
    width: 11.1 * SizeConfig.widthMultiplier,
    // margin: EdgeInsets.only(left: mainPaddingSize),
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [
        Colors.red,
        Colors.purple,
      ]),
      borderRadius: BorderRadius.circular(45),
    ),
    child: Container(
      margin:
          hasStory ? EdgeInsets.all(0.83 * SizeConfig.widthMultiplier) : null,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45),
        image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
      ),
    ),
  );
}
