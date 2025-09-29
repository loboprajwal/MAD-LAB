// Sub-Task 2.3: Form with Date Picker
class DatePickerForm extends StatefulWidget {
  @override
  _DatePickerFormState createState() => _DatePickerFormState();
}

class _DatePickerFormState extends State<DatePickerForm> {
  final _formKey = GlobalKey<FormState>();
  DateTime? _selectedDate;

  Future<void> _pickDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) setState(() => _selectedDate = picked);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Date Picker Form")),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(decoration: InputDecoration(labelText: "Name")),
            GestureDetector(
              onTap: _pickDate,
              child: Container(
                padding: EdgeInsets.all(16),
                child: Text(_selectedDate == null ? "Select Date" : _selectedDate.toString()),
              ),
            ),
            ElevatedButton(
              child: Text("Submit"),
              onPressed: () {
                if (_selectedDate != null) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Form Submitted with Date")));
                }
              },
            )
          ],
        ),
      ),
    );
  }
}