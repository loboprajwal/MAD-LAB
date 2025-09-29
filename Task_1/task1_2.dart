// Sub-Task 1.2: Interactive Icon-Based Rating Widget
class RatingWidget extends StatefulWidget {
  @override
  _RatingWidgetState createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  int _rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rating Widget")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (index) {
              return IconButton(
                icon: Icon(index < _rating ? Icons.star : Icons.star_border),
                color: Colors.amber,
                onPressed: () {
                  setState(() => _rating = index + 1);
                },
              );
            }),
          ),
          Text("Rating: $_rating")
        ],
      ),
    );
  }
}

