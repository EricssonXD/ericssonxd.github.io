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
                '+91 ***** *****',
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
                'j***********n@gmail.com',
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
                            "open", ["https://www.facebook.com/naveenjujaray"]);
                      },
                    )),
              ),
              Expanded(
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: GestureDetector(
                    child: const Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.lightBlue,
                      size: 40,
                    ),
                    onTap: () {
                      js.context.callMethod(
                          "open", ["https://twitter.com/naveenjujaray"]);
                    },
                  ),
                ),
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
                        js.context.callMethod("open",
                            ["https://www.linkedin.com/in/naveenjujaray"]);
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
                            "open", ["https://naveenjujaray.js.org"]);
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
                            "open", ["https://www.github.com/naveenjujaray"]);
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
                            "open", ["https://www.gitlab.com/naveenjujaray"]);
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
                            "open", ["https://medium.com/@naveenjujaray"]);
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
                            "open", ["https://dev.to/naveenjujaray"]);
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
                        js.context.callMethod("open",
                            ["https://www.reddit.com/user/jujaraynaveen"]);
                      },
                    )),
              ),
            ],
          ),
        ],
      ),
    );
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
                  '+91 ***** *****',
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
                  'j***********n@gmail.com',
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
                          js.context.callMethod("open",
                              ["https://www.facebook.com/naveenjujaray"]);
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
                              "open", ["https://twitter.com/naveenjujaray"]);
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
                          js.context.callMethod("open",
                              ["https://www.linkedin.com/in/naveenjujaray"]);
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
                              "open", ["https://naveenjujaray.js.org"]);
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
                              "open", ["https://www.github.com/naveenjujaray"]);
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
                              "open", ["https://www.gitlab.com/naveenjujaray"]);
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
                              "open", ["https://medium.com/@naveenjujaray"]);
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
                              "open", ["https://dev.to/naveenjujaray"]);
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
                          js.context.callMethod("open",
                              ["https://www.reddit.com/user/jujaraynaveen"]);
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
                  '+91 ***** *****',
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
                    'j***********n@gmail.com',
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://www.facebook.com/naveenjujaray"]);
                      },
                    )),
                SizedBox(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.lightBlue,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://twitter.com/naveenjujaray"]);
                      },
                    )),
                SizedBox(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.linkedin,
                        color: Color.fromRGBO(40, 103, 178, 1),
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod("open",
                            ["https://www.linkedin.com/in/naveenjujaray"]);
                      },
                    )),
                SizedBox(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.bloggerB,
                        color: Colors.red,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://naveenjujaray.js.org"]);
                      },
                    )),
                SizedBox(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.github,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://www.github.com/naveenjujaray"]);
                      },
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.gitlab,
                        color: Colors.orange,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://www.gitlab.com/naveenjujaray"]);
                      },
                    )),
                SizedBox(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.medium,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://medium.com/@naveenjujaray"]);
                      },
                    )),
                SizedBox(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.dev,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://dev.to/naveenjujaray"]);
                      },
                    )),
                SizedBox(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.reddit,
                        color: Colors.deepOrangeAccent,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod("open",
                            ["https://www.reddit.com/user/jujaraynaveen"]);
                      },
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
