import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:gap/gap.dart';
import 'package:labwork/screen/home.dart';
import 'package:labwork/screen/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hidepass = true;
  final formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();

  void toggleHidePassword() {
    setState(() {
      hidepass = !hidepass;
    });
  }

  void login() async {
    if (formKey.currentState!.validate()) {
      EasyLoading.show(status: 'Please wait...');
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: email.text, password: password.text)
          .then((user) {
        EasyLoading.dismiss();
        Navigator.of(context).push(
          CupertinoPageRoute(
            builder: (_) => Home(),
          ),
        );
      }).catchError((error) {
        print(error);
        EasyLoading.showError('Incorrect email address and/or password.');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 174, 179, 182),
        title: const Text('Login'),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(12),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: const Text('Email address'),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ' Please enter your email';
                  }
                  if (!EmailValidator.validate(value)) {
                    return 'Please enter a valid email address';
                  }

                  return null;
                },
              ),
              const Gap(12),
              TextFormField(
                  controller: password,
                  obscureText: hidepass,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: const Text('Password'),
                    suffixIcon: IconButton(
                      onPressed: toggleHidePassword,
                      icon: Icon(
                          hidepass ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  }),
              const Gap(12),
              ElevatedButton(
                onPressed: login,
                child: const Text('Login'),
              ),
              Gap(20),
              Text('No account?'),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (_) => RegisterScreen()));
                  },
                  child: Text('Register'))
            ],
          ),
        ),
      ),
    );
  }
}
