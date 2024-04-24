import 'package:flutter/material.dart';

class Bottom_nav extends StatefulWidget {
  @override
  _Bottom_navState createState() => _Bottom_navState();
}

class _Bottom_navState extends State<Bottom_nav> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    DiscoverPage(),
    LikedPage(),
    PlaylistPage(),
    SettingsPage(),
  ];

  final List<String> _tabLabels = [
    'Discover',
    'Liked',
    'Playlist',
    'Settings',
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigator'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        selectedItemColor: Color(0xFF112022),
        unselectedItemColor: Color(0xFF93989D),
        items: [
          buildBottomNavigationBarItem(Icons.home, 'Discover', 0),
          buildBottomNavigationBarItem(Icons.favorite, 'Liked', 1),
          buildBottomNavigationBarItem(Icons.playlist_play, 'Playlist', 2),
          buildBottomNavigationBarItem(Icons.settings_outlined, 'Settings', 3),
        ],
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      IconData iconData, String label, int index) {
    return BottomNavigationBarItem(
      icon: buildInkIconButton(iconData, label, index),
      label: '', // Hapus label dari sini
    );
  }

  Widget buildInkIconButton(IconData iconData, String label, int index) {
    return Ink(
      width: 80,
      decoration: BoxDecoration(
        color: _currentIndex == index ? Color(0xFFEBF4F5) : Colors.transparent,
        borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(
              iconData,
              size: 18, // Ukuran ikon disetel ke 18 px
            ),
            onPressed: () => onTabTapped(index),
            color:
                _currentIndex == index ? Color(0xFF112022) : Color(0xFF93989D),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12, // Ukuran teks disetel ke 12 px
                color: _currentIndex == index
                    ? Color(0xFF112022)
                    : Color(0xFF93989D),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DiscoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Discover Page'),
    );
  }
}

class LikedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Liked Page'),
    );
  }
}

class PlaylistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Playlist Page'),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Settings Page'),
    );
  }
}
