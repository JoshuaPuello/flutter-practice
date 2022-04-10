import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey();
    final Map<String, String> formValues = {
      'first_name': 'Joshua',
      'last_name': 'Puello',
      'email': 'joshuapuello@outlook.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Fist name',
                  hintText: 'Input your first name',
                  helperText: 'This is a helper text',
                  icon: Icons.file_download_done_outlined,
                  suffixIcon: Icons.supervised_user_circle_outlined,
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                CustomInputField(
                  labelText: 'Last name',
                  hintText: 'Input your last name',
                  icon: Icons.file_copy_outlined,
                  suffixIcon: Icons.supervised_user_circle_outlined,
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                CustomInputField(
                  labelText: 'Email',
                  hintText: 'Input your email',
                  icon: Icons.email_outlined,
                  suffixIcon: Icons.supervised_user_circle_outlined,
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                CustomInputField(
                  labelText: 'Password',
                  hintText: 'Input your password',
                  icon: Icons.lock_clock_outlined,
                  suffixIcon: Icons.supervised_user_circle_outlined,
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'SuperUser',
                      child: Text('SuperUser'),
                    ),
                    DropdownMenuItem(
                      value: 'Developer',
                      child: Text('Developer'),
                    ),
                  ],
                  onChanged: (String? value) {
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar')),
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      return;
                    }
                    print(formValues);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
