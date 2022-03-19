import 'package:flutter/material.dart';
import 'package:harry_potter_houses/helper.dart';

void main() => runApp(const HarryPotterHousesApp());

class HarryPotterHousesApp extends StatelessWidget {
  const HarryPotterHousesApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const HarryPotterHousesPage(),
    );
  }
}

class HarryPotterHousesPage extends StatefulWidget {
  const HarryPotterHousesPage({
    Key? key,
  }) : super(key: key);

  @override
  State<HarryPotterHousesPage> createState() => _HarryPotterHousesPageState();
}

class _HarryPotterHousesPageState extends State<HarryPotterHousesPage> {
  final Helper _helper = Helper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/harry-potter.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 15,
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 12,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 120),
                    child: Text(
                      _helper.getQuestionTitle(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _helper.nextQuestion(useChoice: 1);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  child: Text(
                    _helper.getQuestionChoice1(),
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: _helper.buttonShouldBeVisible(),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _helper.nextQuestion(useChoice: 2);
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent,
                    ),
                    child: Text(
                      _helper.getQuestionChoice2(),
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
