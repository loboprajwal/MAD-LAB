// Sub-Task 2.2: Dynamic Form Field Addition/Removal
class DynamicForm extends StatefulWidget {
  @override
  _DynamicFormState createState() => _DynamicFormState();
}

class _DynamicFormState extends State<DynamicForm> {
  List<TextEditingController> _controllers = [];

  void _addTextField() {
    setState(() => _controllers.add(TextEditingController()));
  }

  void _removeTextField(int index) {
    setState(() => _controllers.removeAt(index));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dynamic Form Fields")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _controllers.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: TextFormField(controller: _controllers[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_circle),
                    onPressed: () => _removeTextField(index),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(onPressed: _addTextField, child: Text("Add Field"))
        ],
      ),
    );
  }
}
