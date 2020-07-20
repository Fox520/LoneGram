import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lonegram/constants.dart';
import 'package:lonegram/size_config.dart';

class PostDetail extends StatelessWidget {
  final String userUrl;
  final String postUrl;
  final String userName;
  final String likes, comments;
  final bool hasStory;
  PostDetail(this.userName, this.userUrl, this.postUrl, this.likes,
      this.comments, this.hasStory);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildDetailHead(context),
            SizedBox(height: 2.5 * SizeConfig.heightMultiplier),
            commentTile(
              "lewishamilton",
              "Amazing👏🏿🔥",
              "https://instagram.fers1-1.fna.fbcdn.net/v/t51.2885-19/s150x150/103394286_345830786385631_4577704061380477078_n.jpg?_nc_ht=instagram.fers1-1.fna.fbcdn.net&_nc_ohc=ZpkmMhpN4GMAX9olkRs&oh=c908ada0dda5181a05cc0da5581614f5&oe=5F3DAD72",
            ),
            commentTile(
              "roo._.clothing_na",
              "😍🔥💯",
              "https://instagram.fers1-1.fna.fbcdn.net/v/t51.2885-19/s150x150/104193290_343102779986309_1031913214495391540_n.jpg?_nc_ht=instagram.fers1-1.fna.fbcdn.net&_nc_ohc=rDvIyge8tKcAX-IiJRw&oh=16ca125298c1f2342229a10cb80a2559&oe=5F3DA08F",
            ),
            commentTile(
              "rita_bae_jeniva_",
              "Playing for keeps😅😅",
              "https://instagram.fers1-1.fna.fbcdn.net/v/t51.2885-19/s150x150/97613092_2624890791166391_152715610977992704_n.jpg?_nc_ht=instagram.fers1-1.fna.fbcdn.net&_nc_ohc=9QptPMEhvxcAX8NrpCi&oh=5d2cc05cdf88f04186deef75513596b0&oe=5F3C55E6",
            ),
            commentTile(
              "ygk_na",
              "Waasha son💎✨",
              "https://instagram.fers1-1.fna.fbcdn.net/v/t51.2885-19/s150x150/91197652_2929151540472371_3341848425917317120_n.jpg?_nc_ht=instagram.fers1-1.fna.fbcdn.net&_nc_ohc=IuVl7Np7qzIAX84IdvS&oh=d715eb4fcc495e30f90fbf02337300f2&oe=5F3EB8DC",
            ),
            commentTile(
              "sxsan.e",
              "A whole vibe x2 🤗",
              "https://instagram.fers1-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/p640x640/108168088_206924797327345_3905458322429065434_n.jpg?_nc_ht=instagram.fers1-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=UHbtEC2SsVIAX9A_VNO&oh=f077f7e383b8ceba461c9882f6c51e46&oe=5F3EF16B",
            ),
          ],
        ),
      ),
    );
  }

  buildDetailHead(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          height: 84.46 * SizeConfig.heightMultiplier,
          decoration: BoxDecoration(
            border: Border.all(style: BorderStyle.solid),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
            image: DecorationImage(
              image: NetworkImage(
                postUrl,
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: BlurryContainer(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
            bgColor: Colors.white,
            height: double.infinity,
            width: double.infinity,
            // child: Image.network(postUrl),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: mainPaddingSize),
          margin: EdgeInsets.only(top: 6.76 * SizeConfig.heightMultiplier),
          width: double.infinity,
          child: Column(
            children: [
              postNavBar(context),
              SizedBox(height: 2.5 * SizeConfig.heightMultiplier),
              buildPostImage(),
              SizedBox(height: 2.5 * SizeConfig.heightMultiplier),
              belowImageOptions(),
            ],
          ),
        ),
      ],
    );
  }

  postNavBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.chevron_left)),
        Container(
          height: 6.76 * SizeConfig.heightMultiplier,
          width: 11.1 * SizeConfig.widthMultiplier,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.red,
              Colors.purple,
            ]),
            borderRadius: BorderRadius.circular(45),
          ),
          child: Container(
            margin: hasStory
                ? EdgeInsets.all(0.83 * SizeConfig.widthMultiplier)
                : null,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              image: DecorationImage(
                  image: NetworkImage(userUrl), fit: BoxFit.cover),
            ),
          ),
        ),
        Text("@$userName",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 3.38 * SizeConfig.heightMultiplier,
            )),
        Icon(SimpleLineIcons.options),
      ],
    );
  }

  buildPostImage() {
    return Container(
      height: 59.12 * SizeConfig.heightMultiplier,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(35)),
        image: DecorationImage(
          image: NetworkImage(postUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  belowImageOptions() {
    return Row(
      children: [
        Icon(AntDesign.hearto),
        SizedBox(
          width: 1.39 * SizeConfig.widthMultiplier,
        ),
        Text(
          likes,
          style: TextStyle(color: Colors.black87),
        ),
        SizedBox(
          width: 5.5 * SizeConfig.widthMultiplier,
        ),
        Icon(MaterialCommunityIcons.comment_outline),
        SizedBox(
          width: 1.39 * SizeConfig.widthMultiplier,
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

  commentTile(String u, String t, String url) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(url),
      ),
      title: Text(
        u,
        style: TextStyle(color: Colors.black87),
      ),
      subtitle: Text(
        t,
        style: TextStyle(color: Colors.black),
      ),
      trailing: Icon(AntDesign.hearto,
          size: 4.17 * SizeConfig.imageSizeMultiplier, color: Colors.black),
    );
  }
}
