import 'package:core/di/injector.dart';
import 'package:flutter/material.dart';
import 'package:home/services/home_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _homeService = getIt<HomeService>();
  List<String> _items = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadItems();
  }

  Future<void> _loadItems() async {
    setState(() {
      _isLoading = true;
    });

    final items = await _homeService.getItems();

    setState(() {
      _items = items;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.of(context).pushNamed('/profile');
            },
          ),
        ],
      ),
      body:
          _isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_items[index]),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Selected: ${_items[index]}')),
                      );
                    },
                  );
                },
              ),
    );
  }
}
