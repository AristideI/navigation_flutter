import 'package:flutter/material.dart';
import 'package:navigation/pages/update_profile_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Here you can change you profile'),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UpdateProfilePage()));
                },
                child: const Text('Update Profile'))
          ],
        ),
      ),
    );
  }
}
