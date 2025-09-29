// Sub-Task 1.3: Dynamic Content Toggle with RichText
class RichTextToggle extends StatefulWidget {
  @override
  _RichTextToggleState createState() => _RichTextToggleState();
}

class _RichTextToggleState extends State<RichTextToggle> {
  bool _showFullText = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Read More / Read Less")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "This is the preview text. ",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                if (_showFullText)
                  TextSpan(
                    text: "Here is the full content shown when expanded.",
                    style: TextStyle(color: Colors.blueGrey, fontSize: 16),
                  )
              ],
            ),
          ),
          TextButton(
            onPressed: () => setState(() => _showFullText = !_showFullText),
            child: Text(_showFullText ? "Read Less" : "Read More"),
          )
        ],
      ),
    );
  }
}