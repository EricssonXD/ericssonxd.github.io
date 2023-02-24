// ignore_for_file: file_names

import 'package:mygithubwebpage/include/Rows/blogcardmain.dart';
import 'package:flutter/material.dart';

class BlogCenterDesk extends StatelessWidget {
  const BlogCenterDesk({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: const <Widget>[
          Expanded(child: BlogCardDesk()),
        ],
      ),
    );
  }
}

class BlogCenterMob extends StatelessWidget {
  const BlogCenterMob({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[BlogCardMob()],
      ),
    );
  }
}

class BlogCenterTab extends StatelessWidget {
  const BlogCenterTab({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          BlogCardTab(),
        ],
      ),
    );
  }
}
