import 'package:flut/main.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    // TODO: implement build
    var scaffold = Scaffold(
      appBar: AppBar(
        title: const Text('IFT411'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Lottie.asset(
                'assets/main.json',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              const Text(
                'GLOWBYTE',
                style: TextStyle(fontSize: 18),
              ),
              const Text('Innovative Technology'),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Email',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: deviceWidth * 0.9,
                height: 37,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Password',
                    style: TextStyle(),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: deviceWidth * 0.9,
                    height: 37,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text('forgot password')]),
              Container(
                width: 100,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    'Log in',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    return scaffold;
  }
}
