import 'package:emailjs/emailjs.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  final bool hasMobileFrame;

  const ContactForm({
    super.key,
    required this.hasMobileFrame,
  });

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final companyController = TextEditingController();
  final messageController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Contact Me',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 98,
              child: TextFormField(
                controller: firstNameController,
                cursorColor: Colors.white,
                validator: (value) {
                  if (value?.isEmpty == true) {
                    return 'Enter a first name';
                  } else {
                    return null;
                  }
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.2),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  labelText: 'First Name *',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  focusedErrorBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                  errorBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.redAccent)),
                ),
              ),
            ),
            SizedBox(
              height: 98,
              child: TextFormField(
                controller: lastNameController,
                cursorColor: Colors.white,
                validator: (value) {
                  if (value?.isEmpty == true) {
                    return 'Enter a last name';
                  } else {
                    return null;
                  }
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.2),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  labelText: 'Last Name *',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  focusedErrorBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                  errorBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.redAccent)),
                ),
              ),
            ),
            SizedBox(
              height: 98,
              child: TextFormField(
                controller: emailController,
                cursorColor: Colors.white,
                validator: (value) {
                  RegExp regex = RegExp(
                    r'^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}])|(([a-zA-Z\-\d]+\.)+[a-zA-Z]{2,}))$',
                  );

                  if (value!.contains(' ')) return 'Please remove white spaces';

                  return value.isEmpty
                      ? 'Email is required'
                      : !regex.hasMatch(value)
                          ? 'Invalid Email format'
                          : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.2),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  labelText: 'Email *',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  focusedErrorBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                  errorBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.redAccent)),
                ),
              ),
            ),
            SizedBox(
              height: 98,
              child: TextFormField(
                controller: phoneController,
                cursorColor: Colors.white,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.2),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  labelText: 'Phone Number',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  focusedErrorBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                  errorBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.redAccent)),
                ),
              ),
            ),
            SizedBox(
              height: 98,
              child: TextFormField(
                controller: companyController,
                cursorColor: Colors.white,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.2),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  labelText: 'Company / Organization',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  focusedErrorBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                  errorBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.redAccent)),
                ),
              ),
            ),
            TextFormField(
              controller: messageController,
              cursorColor: Colors.white,
              maxLines: 4,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 26,
              ),
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white.withOpacity(0.2),
                floatingLabelStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                labelStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                labelText: 'Message:',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                focusedErrorBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                errorBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.redAccent)),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                  _sendEmail();
                },
                child: const Text(
                  'Send',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  void _sendEmail() async {
    if (_formKey.currentState!.validate()) {
      Map<String, dynamic> templateParams = {
        'first_name': lastNameController.text.trim(),
        'last_name': firstNameController.text.trim(),
        'sender_email': emailController.text.trim(),
        'phone_number': phoneController.text.trim(),
        'company': companyController.text.trim(),
        'message': messageController.text.trim(),
      };

      try {
        await EmailJS.send(
          'service_6ptwmkw',
          'template_lyypjy5',
          templateParams,
          const Options(
            publicKey: '4hJYDUzySYp1TYjHW',
            privateKey: 'WbZK5kHyTkVqtwIgug3Pf',
          ),
        );
        _formKey.currentState!.reset();
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Text(
              'Email is sent',
              style: TextStyle(fontSize: 20),
            )),
          );
        });
      } catch (error) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Email is not send, please try again later.')),
          );
        });
      }
    }
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    companyController.dispose();
    messageController.dispose();
    super.dispose();
  }
}
