import 'package:checfio_flutter/pages/otp.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Welcome",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const Text(
            "Please enter your account here",
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 196, 195, 195)),
          ),
          SizedBox(
            height: 160,
          ),
          TextField(
            onChanged: (text) {
              setState(
                  () {}); // ใส่ setState หลอกๆไว้ เพื่อให้เวลามัน change มันจะ rebuild widget ทำให้ compiler เริ่มอ่าน textField ใหม้ มันก็จะอ่าน decoration.suffixIcon ไปด้วยได้
            },
            autofocus: true,
            controller: _emailController,
            decoration: InputDecoration(
                hintText: "Email",
                suffixIcon: _emailController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear_rounded),
                        onPressed: () {
                          _emailController.clear();
                          setState(() {}); // ใส่ setState เพื่อหลอก compiler ให้มันอ่าน textfield อีกรอบ เพราะถ้าแค่ onpressed มันไม่ rebuild เลยทำให้ icon ไม่ถูกซ่อน
                        },
                      )
                    : null),
          ),
          const SizedBox(
            height: 30,
          ),
          TextField(
            onChanged: (text) {
              setState(
                  () {}); // ใส่ setState หลอกๆไว้ เพื่อให้เวลามัน change มันจะ rebuild widget ทำให้ compiler เริ่มอ่าน textField ใหม้ มันก็จะอ่าน decoration.suffixIcon ไปด้วยได้
            },
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            controller: _passwordController,
            decoration: InputDecoration(
                hintText: "Password",
                suffixIcon: _passwordController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear_rounded),
                        onPressed: () {
                          _passwordController.clear();
                          setState(() {}); // ใส่ setState เพื่อหลอก compiler ให้มันอ่าน textfield อีกรอบ เพราะถ้าแค่ onpressed มันไม่ rebuild เลยทำให้ icon ไม่ถูกซ่อน
                        },
                      )
                    : null),
          ),
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text.rich(TextSpan(
                style: TextStyle(
                  fontSize: 15,
                ),
                children: [
                  TextSpan(
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                      //make link blue and underline
                      text: "Forgot password",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          String url = "www.fluttercampus.com";
                          var httpsUrl = Uri.https(url, "/");
                          var urllaunchable = await canLaunchUrl(
                              httpsUrl); //canLaunch is from url_launcher package
                          if (urllaunchable) {
                            await launchUrl(
                                httpsUrl); //launch is from url_launcher package to launch URL
                          } else {
                            print("URL can't be launched.");
                          }
                        }),
                  //more text paragraph, sentences here.
                ])),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(const Size(400, 50)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10.0), // set your desired radius here
                ),
              ),
            ),
            onPressed: login,
            child: const Text('Login'),
          ),
          SizedBox(
            height: 30,
          ),
          Text.rich(TextSpan(
              style: TextStyle(
                fontSize: 15,
              ),
              children: [
                TextSpan(text: "Don't have any account?"),
                TextSpan(
                    style: const TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                    //make link blue and underline
                    text: "  Sign Up",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        String url = "www.fluttercampus.com";
                        var httpsUrl = Uri.https(url, "/");
                        var urllaunchable = await canLaunchUrl(
                            httpsUrl); //canLaunch is from url_launcher package
                        if (urllaunchable) {
                          await launchUrl(
                              httpsUrl); //launch is from url_launcher package to launch URL
                        } else {
                          print("URL can't be launched.");
                        }
                      }),
                //more text paragraph, sentences here.
              ])),
        ],
      ),
    );
  }

  login() {
    print(_emailController.text);
    print(_passwordController.text);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OtpPage()), // go to page
    );
  }
}
