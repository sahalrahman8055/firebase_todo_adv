import 'package:flutter/material.dart';
import 'package:flutter_todo/views/auth/widgets/textform_widget.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController RegisterEmailcontroller = TextEditingController();
  TextEditingController RegisterPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 45, 82),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyTextformfield(controller: nameController, hint: 'Name...'),
            SizedBox(
              height: 10,
            ),
            MyTextformfield(
              hint: "Email...",
              controller: RegisterEmailcontroller,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextformfield(
                controller: RegisterPasswordController, hint: "password..."),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 42, 212, 255)),
                onPressed: () {},
                child: const Text(
                  "Register",
                  style: TextStyle(color: Colors.white),
                )),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account...?",
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                ),
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Create Now",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
