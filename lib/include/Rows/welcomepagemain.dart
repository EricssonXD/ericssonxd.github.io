// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:mygithubwebpage/configure/navigation_service.dart';
import 'package:mygithubwebpage/configure/routing.dart';

const String _text1 = "Hi !  I'm Ericsson";
const String _text2 =
    "I love to think about logics, and that's how I've got into Programming";

class WelcomePageDesk extends StatelessWidget {
  const WelcomePageDesk({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            _text1,
            style: TextStyle(
                fontWeight: FontWeight.w800, height: 1.3, fontSize: 50),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            _text2,
            style: TextStyle(
              fontSize: 21,
              height: 1.7,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _contactList(),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () =>
                      locator<NavigationService>().navigateTo(ContactRoute),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        'CONTACT ME',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              //   Expanded(
              //     child: GestureDetector(
              //       onTap: () {
              //         js.context.callMethod("open", ["link-to-resmue"]);
              //       },
              //       child: Container(
              //         padding: const EdgeInsets.symmetric(
              //             horizontal: 40, vertical: 15),
              //         decoration: BoxDecoration(
              //           color: Colors.blueAccent,
              //           borderRadius: BorderRadius.circular(5),
              //         ),
              //         child: const Text(
              //           'SEE MY RESUME',
              //           style: TextStyle(
              //             fontSize: 18,
              //             fontWeight: FontWeight.w800,
              //             color: Colors.white,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
            ],
          ),
        ],
      ),
    );
  }
}

List<Widget> _contactList({bool isMobile = false}) => [
      _contactIcons(
        iconData: FontAwesomeIcons.linkedin,
        color: const Color.fromRGBO(40, 103, 178, 1),
        link: "https://www.linkedin.com/in/ericssonc",
        mobile: isMobile,
      ),
      _contactIcons(
        iconData: FontAwesomeIcons.github,
        color: Colors.black,
        link: "https://www.github.com/ericssonxd",
        mobile: isMobile,
      ),
    ];

Expanded _contactIcons({
  required IconData iconData,
  required Color color,
  required String link,
  bool mobile = false,
}) {
  return Expanded(
    child: SizedBox(
        width: mobile ? 55 : 60,
        height: mobile ? 55 : 60,
        child: IconButton(
          icon: Icon(
            iconData,
            color: color,
            size: 40,
          ),
          onPressed: () {
            js.context.callMethod("open", [link]);
          },
        )),
  );
}

class WelcomePageTab extends StatelessWidget {
  const WelcomePageTab({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            const Center(
              child: Text(
                _text1,
                style: TextStyle(
                    fontWeight: FontWeight.w800, height: 1.3, fontSize: 50),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                _text2,
                style: TextStyle(
                  fontSize: 20,
                  height: 1.7,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const []),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () =>
                      locator<NavigationService>().navigateTo(ContactRoute),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        'CONTACT ME',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                // GestureDetector(
                //   onTap: () {
                //     js.context.callMethod("open", ["link-to-resmue"]);
                //   },
                //   child: Container(
                //     padding: const EdgeInsets.symmetric(
                //         horizontal: 30, vertical: 10),
                //     decoration: BoxDecoration(
                //       color: Colors.blueAccent,
                //       borderRadius: BorderRadius.circular(5),
                //     ),
                //     child: const Text(
                //       'SEE MY RESUME',
                //       style: TextStyle(
                //         fontSize: 18,
                //         fontWeight: FontWeight.w800,
                //         color: Colors.white,
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomePageMob extends StatelessWidget {
  const WelcomePageMob({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            const Center(
              child: Text(
                _text1,
                style: TextStyle(
                    fontWeight: FontWeight.w800, height: 1.3, fontSize: 32),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                _text2,
                style: TextStyle(
                  fontSize: 16,
                  height: 1.7,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              children: _contactList(isMobile: true),
            ),
            // Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: const []),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () =>
                        locator<NavigationService>().navigateTo(ContactRoute),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text(
                          'CONTACT ME',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Center(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       GestureDetector(
            //         onTap: () {
            //           js.context.callMethod("open", ["link-to-resmue"]);
            //         },
            //         child: Container(
            //           padding: const EdgeInsets.symmetric(
            //               horizontal: 15, vertical: 10),
            //           decoration: BoxDecoration(
            //             color: Colors.blueAccent,
            //             borderRadius: BorderRadius.circular(5),
            //           ),
            //           child: const Text(
            //             'SEE MY RESUME',
            //             style: TextStyle(
            //               fontSize: 16,
            //               fontWeight: FontWeight.w900,
            //               color: Colors.white,
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
