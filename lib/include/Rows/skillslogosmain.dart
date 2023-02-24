import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SkillsLogoDesk extends StatelessWidget {
  const SkillsLogoDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "What i do",
            style: TextStyle(
                fontWeight: FontWeight.w800, height: 1.0, fontSize: 50),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "CRAZY FULL STACK DEVELOPER WHO WANTS TO EXPLORE EVERY TECH STACK",
            style: TextStyle(
              fontSize: 22,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                  width: 80,
                  height: 80,
                  child: Icon(
                    FontAwesomeIcons.html5,
                    size: 60,
                    color: Colors.grey,
                  )),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                  width: 80,
                  height: 80,
                  child: Icon(
                    FontAwesomeIcons.css3,
                    size: 60,
                    color: Colors.grey,
                  )),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                  width: 80,
                  height: 80,
                  child: Icon(
                    FontAwesomeIcons.android,
                    size: 60,
                    color: Colors.grey,
                  )),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                  width: 80,
                  height: 80,
                  child: Icon(
                    FontAwesomeIcons.python,
                    size: 60,
                    color: Colors.grey,
                  )),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                  width: 80,
                  height: 80,
                  child: Icon(
                    FontAwesomeIcons.node,
                    size: 60,
                    color: Colors.grey,
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                  width: 80,
                  height: 80,
                  child: Icon(
                    FontAwesomeIcons.fire,
                    size: 60,
                    color: Colors.grey,
                  )),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                  width: 80,
                  height: 80,
                  child: Icon(
                    FontAwesomeIcons.react,
                    size: 60,
                    color: Colors.grey,
                  )),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                  width: 80,
                  height: 80,
                  child: Icon(
                    FontAwesomeIcons.squareJs,
                    size: 60,
                    color: Colors.grey,
                  )),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                  width: 80,
                  height: 80,
                  child: Icon(
                    FontAwesomeIcons.database,
                    size: 60,
                    color: Colors.grey,
                  )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "⚡ Develop highly interactive Front end / User Interfaces for your web and mobile applications",
            style: TextStyle(fontSize: 18),
          ),
          const Text(
            "⚡ Progressive Web Applications ( PWA ) in normal and SPA Stacks",
            style: TextStyle(fontSize: 18),
          ),
          const Text(
            "⚡ Integration of third party services such as Firebase/ AWS / Digital Ocean",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class SkillsLogoTab extends StatelessWidget {
  const SkillsLogoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "What i do",
              style: TextStyle(
                  fontWeight: FontWeight.w800, height: 1.0, fontSize: 50),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "CRAZY FULL STACK DEVELOPER WHO WANTS TO EXPLORE EVERY TECH STACK",
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                    width: 80,
                    height: 80,
                    child: Icon(
                      FontAwesomeIcons.html5,
                      size: 60,
                      color: Colors.grey,
                    )),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                    width: 80,
                    height: 80,
                    child: Icon(
                      FontAwesomeIcons.css3,
                      size: 60,
                      color: Colors.grey,
                    )),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                    width: 80,
                    height: 80,
                    child: Icon(
                      FontAwesomeIcons.android,
                      size: 60,
                      color: Colors.grey,
                    )),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                    width: 80,
                    height: 80,
                    child: Icon(
                      FontAwesomeIcons.python,
                      size: 60,
                      color: Colors.grey,
                    )),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                    width: 80,
                    height: 80,
                    child: Icon(
                      FontAwesomeIcons.node,
                      size: 60,
                      color: Colors.grey,
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                    width: 80,
                    height: 80,
                    child: Icon(
                      FontAwesomeIcons.fire,
                      size: 60,
                      color: Colors.grey,
                    )),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                    width: 80,
                    height: 80,
                    child: Icon(
                      FontAwesomeIcons.react,
                      size: 60,
                      color: Colors.grey,
                    )),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                    width: 80,
                    height: 80,
                    child: Icon(
                      FontAwesomeIcons.squareJs,
                      size: 60,
                      color: Colors.grey,
                    )),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                    width: 80,
                    height: 80,
                    child: Icon(
                      FontAwesomeIcons.database,
                      size: 60,
                      color: Colors.grey,
                    )),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "⚡ Develop highly interactive Front end / User Interfaces for your web and mobile applications",
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              "⚡ Progressive Web Applications ( PWA ) in normal and SPA Stacks",
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              "⚡ Integration of third party services such as Firebase/ AWS / Digital Ocean",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillsLogoMob extends StatelessWidget {
  const SkillsLogoMob({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "What i do",
              style: TextStyle(
                  fontWeight: FontWeight.w800, height: 1.0, fontSize: 32),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "CRAZY FULL STACK DEVELOPER WHO WANTS TO EXPLORE EVERY TECH STACK",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                    width: 80,
                    height: 80,
                    child: Icon(
                      FontAwesomeIcons.html5,
                      size: 60,
                      color: Colors.grey,
                    )),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                    width: 80,
                    height: 80,
                    child: Icon(
                      FontAwesomeIcons.css3,
                      size: 60,
                      color: Colors.grey,
                    )),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                    width: 80,
                    height: 80,
                    child: Icon(
                      FontAwesomeIcons.android,
                      size: 60,
                      color: Colors.grey,
                    )),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                    width: 80,
                    height: 80,
                    child: Icon(
                      FontAwesomeIcons.python,
                      size: 60,
                      color: Colors.grey,
                    )),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                    width: 80,
                    height: 80,
                    child: Icon(
                      FontAwesomeIcons.fire,
                      size: 60,
                      color: Colors.grey,
                    )),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                    width: 80,
                    height: 80,
                    child: Icon(
                      FontAwesomeIcons.react,
                      size: 60,
                      color: Colors.grey,
                    )),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                    width: 80,
                    height: 80,
                    child: Icon(
                      FontAwesomeIcons.squareJs,
                      size: 60,
                      color: Colors.grey,
                    )),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                    width: 80,
                    height: 80,
                    child: Icon(
                      FontAwesomeIcons.database,
                      size: 60,
                      color: Colors.grey,
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                    width: 80,
                    height: 80,
                    child: Icon(
                      FontAwesomeIcons.node,
                      size: 60,
                      color: Colors.grey,
                    )),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "⚡ Develop highly interactive Front end / User Interfaces for your web and mobile applications",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "⚡ Progressive Web Applications ( PWA ) in normal and SPA Stacks",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "⚡ Integration of third party services such as Firebase/ AWS / Digital Ocean",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
