import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lonegram/constants.dart';
import 'package:lonegram/screens/post_detail.dart';
import 'package:lonegram/size_config.dart';

class Post extends StatefulWidget {
  final String userUrl;
  final String postUrl;
  final String userName;
  final String caption;
  final String likes, comments;
  final bool hasPost;
  Post(this.userName, this.userUrl, this.postUrl, this.caption, this.likes,
      this.comments, this.hasPost);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: mainPaddingSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          postHead(widget.userName, widget.userUrl, widget.hasPost),
          SizedBox(
            height: 15,
          ),
          buildPostImage(context),
          SizedBox(
            height: 20,
          ),
          belowImageOptions(widget.likes, widget.comments),
          SizedBox(
            height: 15,
          ),
          postCaption(widget.userName, widget.caption),
        ],
      ),
    );
  }

  buildPostImage(BuildContext context) {
    return Container(
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
          image: NetworkImage(widget.postUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  belowImageOptions(String likes, String comments) {
    return Row(
      children: [
        isLiked
            ? IconButton(
                icon: Icon(
                  AntDesign.heart,
                  color: Colors.red,
                ),
                onPressed: () {
                  setState(() {
                    isLiked = !isLiked;
                  });
                },
              )
            : IconButton(
                icon: Icon(AntDesign.hearto),
                onPressed: () {
                  setState(() {
                    isLiked = !isLiked;
                  });
                },
              ),
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
        GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PostDetail(
                        widget.userName,
                        widget.userUrl,
                        widget.postUrl,
                        widget.likes,
                        widget.comments,
                        widget.hasPost)),
              );
            },
            child: Icon(MaterialCommunityIcons.comment_outline)),
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
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CircleAvatar(
        radius: 25,
        backgroundColor: hasStory ? Colors.redAccent : Colors.grey[400],
        child: CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(url),
        ),
      ),
      SizedBox(
        width: 1.78 * SizeConfig.widthMultiplier,
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
