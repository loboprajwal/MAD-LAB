// Sub-Task 3.3: Custom Bottom Navigation Bar with Animated Layouts
class CustomBottomNav extends StatefulWidget {
  @override
  _CustomBottomNavState createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    Center(child: Text("Home")),
    Center(child: Text("Search")),
    Center(child: Text("Profile")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(3, (index) {
            return GestureDetector(
              onTap: () => setState(() => _currentIndex = index),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(index == 0 ? Icons.home : index == 1 ? Icons.search : Icons.person,
                      color: _currentIndex == index ? Colors.blue : Colors.grey),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    child: Text(
                      ["Home", "Search", "Profile"][index],
                      style: TextStyle(
                          color: _currentIndex == index ? Colors.blue : Colors.grey,
                          fontSize: _currentIndex == index ? 16 : 12),
                    ),
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
