import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String? image;
  final String? subTitle;
  const NewsCard({super.key,required this.title,this.image,this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:const EdgeInsets.only(bottom: 10),
        margin:const EdgeInsets.only(bottom: 30),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Image.network(image??'https://as2.ftcdn.net/v2/jpg/03/15/18/09/1000_F_315180932_rhiXFrJN27zXCCdrgx8V5GWbLd9zTHHA.jpg',fit: BoxFit.fill,),
              // image!=null?Image.network(image!,fit: BoxFit.fill,):Container(),
        Text(title,maxLines: 2,overflow: TextOverflow.ellipsis,style: const TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
        Text(subTitle??""),
        ]),

    );
  }
}
