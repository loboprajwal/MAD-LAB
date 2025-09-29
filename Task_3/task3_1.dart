// Sub-Task 3.1: Spotify Album Page UI
class SpotifyUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/album.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(color: Color(0xAA000000)),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                Text("Album Title", style: TextStyle(fontSize: 24, color: Colors.white)),
                Text("Artist Name", style: TextStyle(color: Colors.grey)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.shuffle, color: Colors.white)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.skip_previous, color: Colors.white)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.play_arrow, color: Colors.white, size: 40)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.skip_next, color: Colors.white)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.repeat, color: Colors.white)),
                  ],
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => ListTile(
                    title: Text("Song $index", style: TextStyle(color: Colors.white)),
                  ),
                  separatorBuilder: (_, __) => Divider(color: Colors.grey),
                  itemCount: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}