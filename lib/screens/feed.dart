import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lonegram/components/posts.dart';
import 'package:lonegram/components/stories.dart';
import 'package:lonegram/components/titleheader.dart';
import 'package:lonegram/components/topbar.dart';
import 'package:lonegram/size_config.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          makeTopBar(),
          SizedBox(
            height: 1.69 * SizeConfig.heightMultiplier,
          ),
          makeTitleHeader(),
          SizedBox(
            height: 1.38 * SizeConfig.heightMultiplier,
          ),
          makeStories(),
          SizedBox(
            height: 5.07 * SizeConfig.heightMultiplier,
          ),
          Post(
            "mimo_mokgosi",
            "https://instagram.fers1-1.fna.fbcdn.net/v/t51.2885-19/s150x150/96629687_317363259248944_6631462228379828224_n.jpg?_nc_ht=instagram.fers1-1.fna.fbcdn.net&_nc_ohc=HSdbfgXtOagAX_CVKWh&oh=b51824e4daa994a47f2f2049c5983b50&oe=5F3C353D",
            "https://instagram.fers1-1.fna.fbcdn.net/v/t51.2885-15/e35/s1080x1080/89090303_138038607715723_8401095474178156112_n.jpg?_nc_ht=instagram.fers1-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=OqwMq_qucsUAX_XSE5N&oh=3924f77a8852adab9e2ecb6e6aaa089f&oe=5F3EE1C2",
            "Even Angels take a break❤️",
            "13,096",
            "150",
            false,
          ),
          Post(
            "lonecat1911",
            "https://instagram.fers1-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/p750x750/89091174_117864919811218_7846069052407880774_n.jpg?_nc_ht=instagram.fers1-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=DXmNVllwNtIAX9l6TEl&oh=e62ec3a35335a6bbbc8cbec645478e5a&oe=5F3CE1A4",
            "https://instagram.fers1-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s750x750/59704462_147668999611077_2492258082556344793_n.jpg?_nc_ht=instagram.fers1-1.fna.fbcdn.net&_nc_cat=109&_nc_ohc=qv1q93B8UAcAX_Zo3EE&oh=7c773df505f6e8385ca741515e799837&oe=5F3EE566",
            "A picture is worth a thousand words 🤗",
            "2,420",
            "451",
            false,
          ),
          Post(
              "rita_aibes_jeniva",
              "https://instagram.fers1-1.fna.fbcdn.net/v/t51.2885-19/s150x150/97613092_2624890791166391_152715610977992704_n.jpg?_nc_ht=instagram.fers1-1.fna.fbcdn.net&_nc_ohc=9QptPMEhvxcAX8NrpCi&oh=5d2cc05cdf88f04186deef75513596b0&oe=5F3C55E6",
              "https://instagram.fers1-1.fna.fbcdn.net/v/t51.2885-15/e35/100951092_268182647878971_4235936072268235881_n.jpg?_nc_ht=instagram.fers1-1.fna.fbcdn.net&_nc_cat=103&_nc_ohc=JKpANTPosagAX_f0cLb&oh=8e7a3057201171fc491eb5d3ce4da67d&oe=5F3D6BE1",
              "Positivity 💯",
              "769",
              "69",
              true),
          Post(
            "ygk_na",
            "https://instagram.fers1-1.fna.fbcdn.net/v/t51.2885-19/s150x150/91197652_2929151540472371_3341848425917317120_n.jpg?_nc_ht=instagram.fers1-1.fna.fbcdn.net&_nc_ohc=IuVl7Np7qzIAX84IdvS&oh=d715eb4fcc495e30f90fbf02337300f2&oe=5F3EB8DC",
            "https://instagram.fers1-1.fna.fbcdn.net/v/t51.2885-15/e35/98504885_593432387941799_5456031536486861720_n.jpg?_nc_ht=instagram.fers1-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=bLa2c6VC4f4AX_WxCvy&oh=468423629b45d05e4ad6232e8f2b576d&oe=5F3CA75E",
            "I'll be dropping a 3 track Amapiano Ep in the next few days🎹. Title: Threesome",
            "3,084",
            "420",
            true,
          ),
        ],
      ),
    );
  }
}
