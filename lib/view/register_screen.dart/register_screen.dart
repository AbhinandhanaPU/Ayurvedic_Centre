// ignore_for_file: must_be_immutable

import 'package:ayurvedic_centre/utils/sizes/sizes.dart';
import 'package:ayurvedic_centre/utils/utils.dart';
import 'package:ayurvedic_centre/view/widgets/dropdown/common_drop_down.dart';
import 'package:ayurvedic_centre/view/widgets/login_button/login_button.dart';
import 'package:ayurvedic_centre/view/widgets/signup_text_formfield/signup_text_formfield.dart';
import 'package:ayurvedic_centre/view/widgets/text_font_widgets/google_poppins.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final List<int> hours = List.generate(24, (index) => index); // 0-23 for hours
  final List<int> minutes = List.generate(60, (index) => index);
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController totalAmountController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController advanceController = TextEditingController();
  TextEditingController balanceController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  String location = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Register',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
        ),
        actions: [
          const Stack(
            alignment: Alignment.topRight,
            children: [
              Icon(
                Icons.notifications_none,
                size: 26,
              ),
              Positioned(
                top: 5,
                right: 5,
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
          kWidth10,
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight20,
              SignUpTextFromFiled(
                text: 'Name',
                hintText: 'Enter your full name',
                textfromController: nameController,
              ),
              kHeight20,
              SignUpTextFromFiled(
                text: 'Whatsapp Number',
                hintText: 'Enter your Whatsapp number',
                textfromController: phoneController,
              ),
              kHeight20,
              SignUpTextFromFiled(
                text: 'Address',
                hintText: 'Enter your full address',
                textfromController: addressController,
              ),
              kHeight20,
              GooglePoppinsWidgets(
                fontsize: 16,
                fontWeight: FontWeight.w400,
                text: 'Location',
              ),
              kHeight10,
              Row(
                children: [
                  Expanded(
                    child: CommonDropdown<String>(
                      items: const ['New York', 'Los Angeles', 'Chicago'],
                      hintText: 'Choose your Location',
                      onChanged: (value) {
                        location = value!;
                      },
                      itemToString: (item) => item,
                    ),
                  ),
                ],
              ),
              kHeight20,
              GooglePoppinsWidgets(
                fontsize: 16,
                fontWeight: FontWeight.w400,
                text: 'Branch',
              ),
              kHeight10,
              Row(
                children: [
                  Expanded(
                    child: CommonDropdown<String>(
                      items: const ['Branch A', 'Branch B', 'Branch C'],
                      hintText: 'Select the Branch',
                      onChanged: (value) {},
                      itemToString: (item) => item,
                    ),
                  ),
                ],
              ),
              kHeight20,
              GooglePoppinsWidgets(
                fontsize: 16,
                fontWeight: FontWeight.w400,
                text: 'Treatments',
              ),
              kHeight10,
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xfff1f1f1),
                    ),
                    child: ListTile(
                      minLeadingWidth: 0,
                      titleAlignment: ListTileTitleAlignment.top,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                      leading: Text(
                        '${index + 1}.',
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      title: Row(
                        children: [
                          const Text(
                            'Couple Combo package i..',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                          const Spacer(),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor:
                                const Color(0xfff21e1e).withOpacity(0.4),
                            child: const Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 22,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          children: [
                            const Text(
                              'Male',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xff006837),
                              ),
                            ),
                            kWidth10,
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 18,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Colors.black.withOpacity(0.2),
                                ),
                              ),
                              child: const Text(
                                '2',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Color(0xff006837),
                                ),
                              ),
                            ),
                            const Spacer(),
                            const Text(
                              'Female',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xff006837),
                              ),
                            ),
                            kWidth10,
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 18,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Colors.black.withOpacity(0.2),
                                ),
                              ),
                              child: const Text(
                                '2',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Color(0xff006837),
                                ),
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.edit_outlined,
                              color: Color(0xff006837),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              kHeight10,
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    color: const Color(0xff389a48).withOpacity(0.1),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        offset: const Offset(0.2, 0.2),
                        color: const Color(0xff389a48).withOpacity(0.4),
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      '+ Add Treatments',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              kHeight20,
              SignUpTextFromFiled(
                text: 'Total Amount',
                hintText: '',
                validator: checkFieldEmpty,
                textfromController: totalAmountController,
              ),
              kHeight20,
              SignUpTextFromFiled(
                text: 'Discount Amount',
                hintText: '',
                validator: checkFieldEmpty,
                textfromController: discountController,
              ),
              kHeight20,
              GooglePoppinsWidgets(
                fontsize: 16,
                fontWeight: FontWeight.w400,
                text: 'Payment Option',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildRadioOption('Cash'),
                  _buildRadioOption('Card'),
                  _buildRadioOption('UPI'),
                ],
              ),
              kHeight20,
              SignUpTextFromFiled(
                text: 'Advance Amount',
                hintText: '',
                validator: checkFieldEmpty,
                textfromController: advanceController,
              ),
              kHeight20,
              SignUpTextFromFiled(
                text: 'Balance Amount',
                hintText: '',
                validator: checkFieldEmpty,
                textfromController: balanceController,
              ),
              kHeight20,
              SignUpTextFromFiled(
                text: 'Treatment Date',
                hintText: '',
                validator: checkFieldEmpty,
                textfromController: dateController,
                suffixIcon: const Icon(
                  Icons.calendar_month_outlined,
                  color: Color(0xff006851),
                ),
                keyboardType: TextInputType.none,
                onTapFunction: () async {
                  dateController.text = await dateTimePicker(context);
                },
              ),
              kHeight20,
              GooglePoppinsWidgets(
                fontsize: 16,
                fontWeight: FontWeight.w400,
                text: 'Treatment Time',
              ),
              kHeight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: CommonDropdown<int>(
                    items: List.generate(24, (index) => index),
                    hintText: 'Hour',
                    onChanged: (value) {},
                    itemToString: (item) => item.toString().padLeft(2, '0'),
                  )),
                  kWidth10,
                  Expanded(
                      child: CommonDropdown<int>(
                    items: List.generate(60, (index) => index),
                    hintText: 'Minutes',
                    onChanged: (value) {},
                    itemToString: (item) => item.toString().padLeft(2, '0'),
                  )),
                ],
              ),
              kHeight50,
              LoginButtonWidget(
                height: 50,
                width: double.infinity,
                text: 'Save',
              ),
              kHeight10
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRadioOption(String option) {
    String selectedOption = '';

    return Row(
      children: [
        Radio<String>(
          value: option,
          groupValue: selectedOption,
          onChanged: (String? value) {
            selectedOption = value!;
          },
        ),
        Text(option),
        const SizedBox(width: 10),
      ],
    );
  }
}
