import 'package:core/di/injector.dart';
import 'package:flutter/material.dart';
import 'package:profile/services/profile_service.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _profileService = getIt<ProfileService>();
  Map<String, String> _profile = {};
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadProfile();
  }

  Future<void> _loadProfile() async {
    setState(() {
      _isLoading = true;
    });

    final profile = await _profileService.getUserProfile();

    setState(() {
      _profile = profile;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body:
          _isLoading
              ? const Center(child: CircularProgressIndicator())
              : Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      child: Icon(Icons.person, size: 50),
                    ),
                    const SizedBox(height: 24),
                    _buildProfileItem('Name', _profile['name'] ?? ''),
                    _buildProfileItem('Email', _profile['email'] ?? ''),
                    _buildProfileItem('Phone', _profile['phone'] ?? ''),
                    _buildProfileItem('Location', _profile['location'] ?? ''),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {
                        // Edit profile functionality would go here
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Edit profile not implemented'),
                          ),
                        );
                      },
                      child: const Text('Edit Profile'),
                    ),
                  ],
                ),
              ),
    );
  }

  Widget _buildProfileItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 4),
          Text(value, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
