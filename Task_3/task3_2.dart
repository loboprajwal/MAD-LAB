// Sub-Task 3.2: Draggable and Resizable Note Widget
class DraggableNote extends StatefulWidget {
  @override
  _DraggableNoteState createState() => _DraggableNoteState();
}

class _DraggableNoteState extends State<DraggableNote> {
  Offset _offset = Offset(100, 100);
  double _scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: _offset.dx,
            top: _offset.dy,
            child: GestureDetector(
              onPanUpdate: (details) => setState(() => _offset += details.delta),
              onScaleUpdate: (details) => setState(() => _scale = details.scale),
              child: Transform.scale(
                scale: _scale,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                  child: Center(child: Text("Note")),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}