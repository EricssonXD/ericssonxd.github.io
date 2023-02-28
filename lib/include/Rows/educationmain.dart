import 'package:flutter/material.dart';

class EduDesk extends StatelessWidget {
  const EduDesk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const divider = SizedBox(height: 30);
    return SizedBox(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Education',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
          ),
          for (final educationItem in educationList) ...[
            divider,
            _EducationItemDesk(
              image: educationItem.image,
              institution: educationItem.institution,
              degree: educationItem.degree,
              duration: educationItem.duration,
              description: educationItem.description,
            ),
          ],
          divider,
        ],
      ),
    );
  }
}

class _EducationItemDesk extends StatelessWidget {
  final ImageProvider image;
  final String institution;
  final String degree;
  final String duration;
  final String? description;

  const _EducationItemDesk({
    required this.image,
    required this.institution,
    required this.degree,
    required this.duration,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 15),
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 15.0,
                spreadRadius: 5.0,
                offset: const Offset(0.0, 10.0),
              ),
            ],
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: image,
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                institution,
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Text(
                degree,
                style:
                    const TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              ),
              Text(
                duration,
                style: const TextStyle(fontSize: 22),
              ),
              if (description != null)
                Text(
                  description!,
                  style: const TextStyle(fontSize: 22, color: Colors.grey),
                ),
            ],
          ),
        )
      ],
    );
  }
}

class EduTab extends StatelessWidget {
  const EduTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const divider = SizedBox(height: 30);

    return SizedBox(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'Education',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
            ),
          ),
          for (final educationItem in educationList) ...[
            divider,
            _EducationItemTab(
              image: educationItem.image,
              institution: educationItem.institution,
              degree: educationItem.degree,
              duration: educationItem.duration,
              description: educationItem.description,
            ),
          ],
          divider,
        ],
      ),
    );
  }
}

class _EducationItemTab extends StatelessWidget {
  final ImageProvider image;
  final String institution;
  final String degree;
  final String duration;
  final String? description;

  const _EducationItemTab({
    Key? key,
    required this.image,
    required this.institution,
    required this.degree,
    required this.duration,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 15),
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 15.0,
                spreadRadius: 5.0,
                offset: const Offset(0.0, 10.0),
              ),
            ],
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: image,
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                institution,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                degree,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                duration,
                style: const TextStyle(fontSize: 22),
              ),
              if (description != null)
                Text(
                  description!,
                  style: const TextStyle(
                    fontSize: 22,
                    color: Colors.grey,
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}

class EduMob extends StatelessWidget {
  const EduMob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const divider = SizedBox(height: 20);

    return SizedBox(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'Education',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
            ),
          ),
          divider,
          for (final educationItem in educationList) ...[
            Center(
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(5.0),
                height: 100,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10.0,
                      spreadRadius: 5.0,
                      offset: const Offset(0.0, 10.0),
                    ),
                  ],
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: educationItem.image,
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    educationItem.institution,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    educationItem.degree,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    educationItem.duration,
                    style: const TextStyle(fontSize: 17),
                  ),
                  Text(
                    educationItem.description,
                    style: const TextStyle(fontSize: 17, color: Colors.grey),
                  ),
                ],
              ),
            ),
            divider,
          ],
        ],
      ),
    );
  }
}

class EducationItem {
  final ImageProvider image;
  final String institution;
  final String degree;
  final String duration;
  final String description;

  EducationItem({
    required this.image,
    required this.institution,
    required this.degree,
    required this.duration,
    this.description = '',
  });
}

final List<EducationItem> educationList = [
  EducationItem(
    image: const AssetImage('assets/images/hkust.png'),
    institution: 'Hong Kong University of Science and Technology',
    degree: "Bachelor's Degree in Electronic Engineering",
    duration: "2020 - Present",
    description:
        "• 2021-2022 — Member of Electronic Engineering Student's Society",
  ),
  EducationItem(
    image: const AssetImage('assets/images/logos.png'),
    institution: "HKCCCU Logos Academy",
    degree: "Primary and Secondary Education",
    duration: "2009-2020",
    description:
        """• 2018-19 — Subject Prize: No.1 in Information & Communication Technology (HKDSE Stream)
• 2018-19 — The 15th Cisco Hong Kong-Macau Youth Networking Skills Competition 2019 - Silver Award
• 2019-20 — Excellent Service Award: Captain of Boys Basketball Team
""",
  ),
];
