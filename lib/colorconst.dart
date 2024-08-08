
//navbar color = HEX:#0a3366 || RGB:rgba(10,51,102,255)
//Eng spanish vitra ko color = HEX:#f6f2f8 || RGB:rgba(246,242,248,255)
//tala ko english = HEX:#597598 || RGB:rgba(89,117,152,255)
// tala ko box color = HEX:#f6f2f8 || RGB:rgba(246,242,248,255)
//microphone color = HEX:#3a5b85 || RGB:rgba(58,91,133,255)
// micr another colo = HEX:#0a3366 || RGB:rgba(10,51,102,255)
//translate color = HEX:#f66901 || RGB:rgba(246,105,1,255)
 // child: Column(
          //   children: [
          //     const SizedBox(
          //       height: 50,
          //     ),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         DropdownButton(
          //           menuMaxHeight: 300,
          //           focusColor: Colors.black,
          //           dropdownColor: Colors.black,
          //           iconEnabledColor: Colors.black,
          //           iconDisabledColor: Colors.black,
          //           hint: Text(
          //             originlanguage,
          //             style: const TextStyle(color: Colors.black),
          //           ),
          //           icon: const Icon(Icons.keyboard_arrow_down_rounded),
          //           items: languages.map((String dropdownStringitems) {
          //             return DropdownMenuItem(
          //               value: dropdownStringitems,
          //               child: Text(dropdownStringitems),
          //             );
          //           }).toList(),
          //           onChanged: (String? value) {
          //             setState(() {
          //               originlanguage = value!;
          //             });
          //           },
          //         ),
          //         const SizedBox(
          //           width: 40,
          //         ),
          //         const Icon(
          //           Icons.arrow_right_alt_outlined,
          //           color: Colors.white,
          //           size: 40,
          //         ),
          //         const SizedBox(
          //           width: 40,
          //         ),
          //         DropdownButton(
          //           menuMaxHeight: 300,
          //           focusColor: Colors.black,
          //           dropdownColor: Colors.black,
          //           iconEnabledColor: Colors.black,
          //           iconDisabledColor: Colors.black,
          //           hint: Text(
          //             destinationlanguage,
          //             style: const TextStyle(color: Colors.white),
          //           ),
          //           icon: const Icon(Icons.keyboard_arrow_down_rounded),
          //           items: languages.map((String dropdownStringitems) {
          //             return DropdownMenuItem(
          //               value: dropdownStringitems,
          //               child: Text(dropdownStringitems),
          //             );
          //           }).toList(),
          //           onChanged: (String? value) {
          //             setState(() {
          //               destinationlanguage = value!;
          //             });
          //           },
          //         ),
          //         const SizedBox(
          //           height: 40,
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.all(10),
          //           child: SizedBox(
          //             width: 50,
          //             height: 50,
          //             child: TextFormField(
          //               cursorColor: Colors.white,
          //               autofocus: false,
          //               style: const TextStyle(color: Colors.white),
          //               decoration: const InputDecoration(
          //                 labelText: 'Please enter your text',
          //                 labelStyle:
          //                     TextStyle(fontSize: 15, color: Colors.white),
          //                 border: OutlineInputBorder(
          //                     borderSide: BorderSide(
          //                   color: Colors.white,
          //                 )),
          //                 enabledBorder: OutlineInputBorder(
          //                     borderSide: BorderSide(
          //                   color: Colors.white,
          //                 )),
          //                 errorStyle:
          //                     TextStyle(color: Colors.red, fontSize: 15),
          //               ),
          //               controller: languagectrl,
          //               validator: (val) {
          //                 if (val == null || val.isEmpty) {
          //                   return 'Please enter the text to translate';
          //                 }
          //                 return null;
          //               },
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //     ElevatedButton(
          //         style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          //         onPressed: () {
          //           translate(
          //             getlanguagecode(originlanguage),
          //             languagectrl.text.toString(),
          //             getlanguagecode(destinationlanguage),
          //           );
          //         },
          //         child: const Text('Translate')),
          //     const SizedBox(
          //       height: 20,
          //     ),
          //     Text(
          //       output,
          //       style: const TextStyle(
          //         color: Colors.white,
          //         fontWeight: FontWeight.bold,
          //         fontSize: 20,
          //       ),
          //     ),
          //   ],
          // ),