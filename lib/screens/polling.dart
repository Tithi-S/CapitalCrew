import 'package:flutter/material.dart';

class PollCreationWidget extends StatefulWidget {
  final Function(String question, List<String> options) onPollCreated;

  PollCreationWidget({required this.onPollCreated});

  @override
  _PollCreationWidgetState createState() => _PollCreationWidgetState();
}

class _PollCreationWidgetState extends State<PollCreationWidget> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _questionController = TextEditingController();
  final List<TextEditingController> _optionsControllers = [];

  void _addOption() {
    setState(() {
      _optionsControllers.add(TextEditingController());
    });
  }

  void _removeOption(int index) {
    setState(() {
      _optionsControllers.removeAt(index);
    });
  }

  void _submitPoll() {
    if (_formKey.currentState!.validate()) {
      String question = _questionController.text;
      List<String> options = _optionsControllers.map((controller) => controller.text).toList();
      widget.onPollCreated(question, options);
    }
  }

  @override
  void dispose() {
    _questionController.dispose();
    for (var controller in _optionsControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _questionController,
              decoration: InputDecoration(
                labelText: 'Poll Question',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a question';
                }
                return null;
              },
            ),
            const SizedBox(height: 16.0),
            ..._optionsControllers.map((controller) {
              int index = _optionsControllers.indexOf(controller);
              return Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: controller,
                      decoration: InputDecoration(
                        labelText: 'Option ${index + 1}',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter an option';
                        }
                        return null;
                      },
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.remove_circle, color: Colors.black),
                    onPressed: () => _removeOption(index),
                  ),
                ],
              );
            }).toList(),
            const SizedBox(height: 8.0),
            Align(
              alignment: Alignment.centerLeft,
              child: ElevatedButton(
                onPressed: _addOption,
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(color: Colors.black),
                  onPrimary: Colors.black,
                ),
                child: Text('Add Option'),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _submitPoll,
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text('Send'),
            ),
          ],
        ),
      ),
    );
  }
}
