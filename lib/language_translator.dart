import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:languagetranslator/lang_code.dart';
import 'package:languagetranslator/language_constant.dart';
import 'package:translator/translator.dart';

class LanguageTranslator extends StatefulWidget {
  const LanguageTranslator({super.key});

  @override
  State<LanguageTranslator> createState() => _LanguageTranslatorState();
}

class _LanguageTranslatorState extends State<LanguageTranslator> {
  var languages = lang;
  var originlanguage = 'FROM';
  var destinationlanguage = 'TO';
  var output = 'No output';
  TextEditingController languagectrl = TextEditingController();
  String? _selectedvalue = 'Select Language';
  void translate(String src, String inp, String des) async {
    GoogleTranslator translator = GoogleTranslator();
    var translation = await translator.translate(inp, from: src, to: des);
    setState(() {
      output = translation.text.toString();
    });
    if (src == '--' || des == '--') {
      setState(() {
        output = "Fail to translate";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.black,
        color: const Color.fromRGBO(10, 51, 102, 1),
        backgroundColor: Colors.blueAccent,
        items: const <Widget>[
          Icon(
            Icons.mic,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.camera,
            size: 30,
            color: Colors.white,
          ),
          CircleAvatar(
            child: Icon(Icons.translate),
          ),
          Icon(
            Icons.history,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite_rounded,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {},
      ),
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 40,
        ),
        title: const Text(
          'Language Translator',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: const Color.fromRGBO(10, 51, 102, 1),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: const Color.fromARGB(255, 253, 230, 221),
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0), // Rounded corners
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 2),
                      child: DropdownButton(
                        elevation: 0,
                        menuMaxHeight: 250,
                        focusColor: Colors.white,
                        dropdownColor: Colors.white,
                        iconEnabledColor: Colors.white,
                        iconDisabledColor: Colors.white,
                        hint: Text(
                          originlanguage,
                          style: const TextStyle(color: Colors.black),
                        ),
                        icon: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.black,
                        ),
                        items: languages.map((String dropdownStringitems) {
                          return DropdownMenuItem(
                            value: dropdownStringitems,
                            child: Text(dropdownStringitems),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            originlanguage = value!;
                            _selectedvalue = value;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Icon(
                      Icons.compare_arrows_outlined,
                      size: 35,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    DropdownButton(
                      menuMaxHeight: 300,
                      focusColor: Colors.white,
                      dropdownColor: Colors.white,
                      iconEnabledColor: Colors.white,
                      iconDisabledColor: Colors.white,
                      hint: Text(
                        destinationlanguage,
                        style: const TextStyle(color: Colors.black),
                      ),
                      icon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.black,
                      ),
                      items: languages.map((String dropdownStringitems) {
                        return DropdownMenuItem(
                          value: dropdownStringitems,
                          child: Text(dropdownStringitems),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          destinationlanguage = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),

            // Area to enter input language
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Card(
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 253, 230, 221),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            _selectedvalue.toString(),
                            style: const TextStyle(
                                color: Color.fromRGBO(18, 87, 171, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: SizedBox(
                            width: 300,
                            height: 70,
                            child: TextFormField(
                              cursorColor: Colors.black,
                              autofocus: false,
                              style: const TextStyle(color: Colors.black),
                              decoration: const InputDecoration(
                                hintText: 'Enter text here ...',
                                labelStyle: TextStyle(
                                    fontSize: 15, color: Colors.black),
                                errorStyle:
                                    TextStyle(color: Colors.red, fontSize: 15),
                              ),
                              controller: languagectrl,
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return 'Please enter the text to translate';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CircleAvatar(
                                backgroundColor: Color.fromRGBO(10, 51, 102, 1),
                                child: Icon(
                                  Icons.mic,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromRGBO(18, 87, 171, 1),
                                  ),
                                  onPressed: () {
                                    translate(
                                      getlanguagecode(originlanguage),
                                      languagectrl.text.toString(),
                                      getlanguagecode(destinationlanguage),
                                    );
                                  },
                                  child: const Text(
                                    'Translate',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Card(
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 253, 230, 221),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Translated Text : ',
                            style: TextStyle(
                                color: Color.fromRGBO(18, 87, 171, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            output,
                            style: const TextStyle(
                                color: Color.fromRGBO(18, 87, 171, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                overflow: TextOverflow.visible),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
