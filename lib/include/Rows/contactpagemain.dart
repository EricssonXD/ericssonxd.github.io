// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactPageDesk extends StatelessWidget {
  const ContactPageDesk({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Contact Me",
            style: TextStyle(
                fontWeight: FontWeight.w800, height: 1.0, fontSize: 50),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'DISCUSS A PROJECT OR JUST WANT TO SAY HI? MY INBOX IS OPEN FOR ALL.',
            style: TextStyle(color: Colors.grey, fontSize: 22),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Text(
                '☎️',
                style: TextStyle(color: Colors.grey, fontSize: 28),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Refer to CV',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 28,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Text(
                '✉️',
                style: TextStyle(color: Colors.grey, fontSize: 28),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Refer to CV',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 28,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (_SocialMediaListItem item in _socialMediaList)
                Expanded(
                  child: _SocialMediaIcon(
                    boxSize: 60,
                    icon: item.icon,
                    link: item.link,
                    color: item.color,
                  ),
                )
            ],
          ),
        ],
      ),
    );
  }
}

final List<_SocialMediaListItem> _socialMediaList = <_SocialMediaListItem>[
  _SocialMediaListItem(
    icon: FontAwesomeIcons.linkedin,
    color: const Color.fromRGBO(40, 103, 178, 1),
    link: "https://www.linkedin.com/in/ericssonc",
  ),
  _SocialMediaListItem(
    icon: FontAwesomeIcons.github,
    link: "https://www.github.com/ericssonxd",
  ),
];

class _SocialMediaListItem {
  final IconData icon;
  final Color? color;
  final String link;
  _SocialMediaListItem({
    this.color,
    required this.icon,
    required this.link,
  });
}

class _SocialMediaIcon extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final String link;
  final double boxSize;
  const _SocialMediaIcon({
    required this.icon,
    required this.link,
    required this.boxSize,
    // ignore: unused_element
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: boxSize,
        height: boxSize,
        child: IconButton(
          icon: Icon(
            icon,
            color: color,
            size: 40,
          ),
          onPressed: () {
            js.context.callMethod("open", [link]);
          },
        ));
  }
}

class ContactPageTab extends StatelessWidget {
  const ContactPageTab({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Contact Me",
              style: TextStyle(
                  fontWeight: FontWeight.w800, height: 1.0, fontSize: 50),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'DISCUSS A PROJECT OR JUST WANT TO SAY HI? MY INBOX IS OPEN FOR ALL.',
              style: TextStyle(color: Colors.grey, fontSize: 22),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text(
                  '☎️',
                  style: TextStyle(color: Colors.grey, fontSize: 28),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Refer to CV',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 28,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text(
                  '✉️',
                  style: TextStyle(color: Colors.grey, fontSize: 28),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Refer to CV',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 28,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.blue,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context.callMethod(
                              "open", ["https://ericssonxd.github.io"]);
                        },
                      )),
                ),
                Expanded(
                  child: SizedBox(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.lightBlue,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context.callMethod(
                              "open", ["https://ericssonxd.github.io"]);
                        },
                      )),
                ),
                Expanded(
                  child: SizedBox(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.linkedin,
                          color: Color.fromRGBO(40, 103, 178, 1),
                          size: 40,
                        ),
                        onPressed: () {
                          js.context.callMethod(
                              "open", ["https://ericssonxd.github.io"]);
                        },
                      )),
                ),
                Expanded(
                  child: SizedBox(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.bloggerB,
                          color: Colors.red,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context.callMethod(
                              "open", ["https://ericssonxd.github.io"]);
                        },
                      )),
                ),
                Expanded(
                  child: SizedBox(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.github,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context.callMethod(
                              "open", ["https://ericssonxd.github.io"]);
                        },
                      )),
                ),
                Expanded(
                  child: SizedBox(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.gitlab,
                          color: Colors.orange,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context.callMethod(
                              "open", ["https://ericssonxd.github.io"]);
                        },
                      )),
                ),
                Expanded(
                  child: SizedBox(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.medium,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context.callMethod(
                              "open", ["https://ericssonxd.github.io"]);
                        },
                      )),
                ),
                Expanded(
                  child: SizedBox(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.dev,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context.callMethod(
                              "open", ["https://ericssonxd.github.io"]);
                        },
                      )),
                ),
                Expanded(
                  child: SizedBox(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.reddit,
                          color: Colors.deepOrangeAccent,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context.callMethod(
                              "open", ["https://www.reddit.com/user/ericsson"]);
                        },
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ContactPageMob extends StatelessWidget {
  const ContactPageMob({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Contact Me",
              style: TextStyle(
                  fontWeight: FontWeight.w800, height: 1.0, fontSize: 32),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'DISCUSS A PROJECT OR JUST WANT TO SAY HI? MY INBOX IS OPEN FOR ALL.',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  '☎️',
                  style: TextStyle(color: Colors.grey, fontSize: 22),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Refer to CV',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  '✉️',
                  style: TextStyle(color: Colors.grey, fontSize: 22),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    'Refer to CV',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                for (_SocialMediaListItem item in _socialMediaList)
                  _SocialMediaIcon(
                    boxSize: 55,
                    icon: item.icon,
                    link: item.link,
                    color: item.color,
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// _SocialMediaIcon(
//   icon: FontAwesomeIcons.facebook,
//   color: Colors.blue,
//   onPressed: () => js.context
//       .callMethod("open", ["https://ericssonxd.github.io"]),
// ),
// _SocialMediaIcon(
//   icon: FontAwesomeIcons.twitter,
//   color: Colors.lightBlue,
//   onPressed: () => js.context
//       .callMethod("open", ["https://ericssonxd.github.io"]),
// ),
// _SocialMediaIcon(
//   icon: FontAwesomeIcons.linkedin,
//   color: const Color.fromRGBO(40, 103, 178, 1),
//   onPressed: () => js.context
//       .callMethod("open", ["https://ericssonxd.github.io"]),
// ),
// _SocialMediaIcon(
//   icon: FontAwesomeIcons.bloggerB,
//   color: Colors.red,
//   onPressed: () => js.context
//       .callMethod("open", ["https://ericssonxd.github.io"]),
// ),
// _SocialMediaIcon(
//   icon: FontAwesomeIcons.github,
//   onPressed: () => js.context
//       .callMethod("open", ["https://ericssonxd.github.io"]),
// ),
// _SocialMediaIcon(
//   icon: FontAwesomeIcons.gitlab,
//   color: Colors.orange,
//   onPressed: () => js.context
//       .callMethod("open", ["https://ericssonxd.github.io"]),
// ),
// _SocialMediaIcon(
//   icon: FontAwesomeIcons.medium,
//   onPressed: () => js.context
//       .callMethod("open", ["https://ericssonxd.github.io"]),
// ),
// const _SocialMediaIcon(
//   icon: FontAwesomeIcons.dev,
//   link: "https://ericssonxd.github.io",
// ),
// const _SocialMediaIcon(
//   icon: FontAwesomeIcons.reddit,
//   color: Colors.deepOrangeAccent,
//   link: "https://www.reddit.com/user/ericsson",
// ),
