import 'package:flutter/material.dart';

import '../widgets/category_card.dart';
import '../widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});
  static const String routeName='/category';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          NewsListViewBuilder(args.categoryName),
        ],
      ),
    ));
  }
}
