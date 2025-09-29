// Sub-Task 2.1: Multi-Step Registration Form with Validation
class MultiStepForm extends StatefulWidget {
  @override
  _MultiStepFormState createState() => _MultiStepFormState();
}

class _MultiStepFormState extends State<MultiStepForm> {
  final _formKey = GlobalKey<FormState>();
  int _step = 1;
  String? _email, _password, _name, _phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Multi-Step Form")),
      body: Form(
        key: _formKey,
        child: _step == 1
            ? Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: "Email"),
                    validator: (val) => val!.contains('@') ? null : "Invalid Email",
                    onSaved: (val) => _email = val,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Password"),
                    obscureText: true,
                    validator: (val) => val!.length >= 6 ? null : "Password too short",
                    onSaved: (val) => _password = val,
                  ),
                  ElevatedButton(
                    child: Text("Next"),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        setState(() => _step = 2);
                      }
                    },
                  )
                ],
              )
            : Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: "Name"),
                    validator: (val) => val!.isNotEmpty ? null : "Enter name",
                    onSaved: (val) => _name = val,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Phone Number"),
                    validator: (val) => val!.length == 10 ? null : "Invalid phone",
                    onSaved: (val) => _phone = val,
                  ),
                  ElevatedButton(
                    child: Text("Submit"),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Form Submitted")));
                      }
                    },
                  )
                ],
              ),
      ),
    );
  }
}