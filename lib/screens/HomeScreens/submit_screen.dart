import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Step 1: Import SharedPreferences

import 'package:my_app/screens/HomeScreens/verify_screen.dart';
import 'package:my_app/utils/textfield_1.dart';

class SubmitScreen extends StatefulWidget {
  const SubmitScreen({super.key});

  @override
  State<SubmitScreen> createState() => _SubmitScreenState();
}

class _SubmitScreenState extends State<SubmitScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _communityController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _zipCodeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();

  SharedPreferences? _prefs; // SharedPreferences instance

  @override
  void initState() {
    super.initState();
    _loadSavedText(); // Load saved text when the widget initializes
  }

  Future<void> _loadSavedText() async {
    _prefs =
        await SharedPreferences.getInstance(); // Get SharedPreferences instance
    // Load saved text for each TextField
    _firstNameController.text = _prefs!.getString('firstName') ?? '';
    _lastNameController.text = _prefs!.getString('lastName') ?? '';
    _communityController.text = _prefs!.getString('community') ?? '';
    _addressController.text = _prefs!.getString('address') ?? '';
    _cityController.text = _prefs!.getString('city') ?? '';
    _stateController.text = _prefs!.getString('state') ?? '';
    _countryController.text = _prefs!.getString('country') ?? '';
    _zipCodeController.text = _prefs!.getString('zipCode') ?? '';
    _emailController.text = _prefs!.getString('email') ?? '';
    _mobileNumberController.text = _prefs!.getString('mobileNumber') ?? '';
  }

  Future<void> _saveText(String key, String value) async {
    await _prefs!.setString(key, value); // Save text to SharedPreferences
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Submit Join Request',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: const Color(0xff35424A),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Tap into your neighborhood',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: const Color(0xff989EB1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: MyTextField_1(
                          labelText: 'First Name',
                          controller: _firstNameController,
                          onChanged: (value) {
                            _saveText('firstName', value);
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: MyTextField_1(
                          labelText: 'Last Name',
                          controller: _lastNameController,
                          onChanged: (value) {
                            _saveText('lastName', value);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: MyTextField_1(
                    labelText: 'Community',
                    controller: _communityController,
                    onChanged: (value) {
                      _saveText('community', value);
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: MyTextField_1(
                    labelText: 'Address',
                    controller: _addressController,
                    onChanged: (value) {
                      _saveText('address', value);
                    },
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: MyTextField_1(
                          labelText: 'City',
                          controller: _cityController,
                          onChanged: (value) {
                            _saveText('city', value);
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: MyTextField_1(
                          labelText: 'State',
                          controller: _stateController,
                          onChanged: (value) {
                            _saveText('state', value);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: MyTextField_1(
                          labelText: 'Country',
                          controller: _countryController,
                          onChanged: (value) {
                            _saveText('country', value);
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: MyTextField_1(
                          labelText: 'Zip Code',
                          controller: _zipCodeController,
                          onChanged: (value) {
                            _saveText('zipCode', value);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: MyTextField_1(
                    labelText: 'Email',
                    controller: _emailController,
                    onChanged: (value) {
                      _saveText('email', value);
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: MyTextField_1(
                    labelText: 'Mobile Number',
                    controller: _mobileNumberController,
                    onChanged: (value) {
                      _saveText('mobileNumber', value);
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: Size(270, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    disabledBackgroundColor: const Color(0xff374CFF),
                    backgroundColor: const Color(0xff374CFF),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VerifyScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Submit Request',
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
