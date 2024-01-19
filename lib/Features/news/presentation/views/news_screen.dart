import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'widgets/news_body.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: const NewsBody(),
    );
  }
}
