import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String bio;

  const ProfileCard({super.key, required this.name, required this.bio});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name:",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  " $name",
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ]
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                    "Bio:",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      ),
                  ),
                Text(
                    " $bio",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      ),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }

}
