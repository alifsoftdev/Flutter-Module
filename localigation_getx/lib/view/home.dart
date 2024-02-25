import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String selectedCity = 'English'; // Default selected city

  List<String> cities = [
    'বাংলা',
    'English',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('appbar'.tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('hello'.tr,style: TextStyle(
              fontSize: 20
            ),),
            Text('description'.tr,style: TextStyle(
              fontSize: 18
            ),),
            const SizedBox(height: 20),
            SizedBox(
              width: 150,
              child: DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  fillColor: Color(0xFFF9FAFF),
                  filled: true,
                  enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ), // Set the border here
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                ),
                value: selectedCity,
                onChanged: (newValue) {
                  var localeBN = const Locale('bn', 'BN');
                  var localeUS = const Locale('en', 'US');
                  selectedCity = newValue.toString();
                  if (selectedCity != 'বাংলা') {
                    Get.updateLocale(localeUS);
                  } else {
                    Get.updateLocale(localeBN);
                  }
                  setState(() {});
                },
                items: cities.map<DropdownMenuItem<String>>((String city) {
                  return DropdownMenuItem<String>(
                    value: city,
                    child: Text(
                      city,
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
