import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String? image;
  final String? subTitle;
  NewsCard({super.key,required this.title,this.image,this.subTitle});

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
            Image.network(image??'https://media.istockphoto.com/id/1529820791/photo/asian-multi-ethnic-business-people-talk-during-a-coffee-break-in-seminar-business-conference.jpg?s=1024x1024&w=is&k=20&c=A8X3saa2zQiJQjcCJCYKwYEuLDovjO0J7WDwnGwAlVw=',fit: BoxFit.fill,),
              // image!=null?Image.network(image!,fit: BoxFit.fill,):Container(),
        Text(title,maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
        Text(subTitle??""),
        ]),

    );
  }
}
