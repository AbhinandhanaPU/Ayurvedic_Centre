import 'package:ayurvedic_centre/utils/sizes/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Icon(
            Icons.notifications_none,
            size: 26,
          ),
          kWidth10,
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Form(
                      // key: _formKey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildSearchTextField(),
                          kWidth20,
                          _buildSearchButton(context),
                        ],
                      ),
                    ),
                  ),
                  kHeight10,
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Sort By :',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        Container(
                          width: 180,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey.shade400, width: 1.5),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: DropdownButton(
                            borderRadius: BorderRadius.circular(10),
                            icon: const Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xFF006837),
                            ),
                            isExpanded: true,
                            underline: const SizedBox(),
                            items: const [],
                            hint: const Text('Date'),
                            onChanged: (value) {},
                          ),
                        )
                      ],
                    ),
                  ),
                  kHeight10,
                  const Divider(color: Colors.grey, thickness: 0.5),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        // padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xfff1f1f1),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              minLeadingWidth: 0,
                              titleAlignment: ListTileTitleAlignment.top,
                              leading: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${index + 1}.',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Vikram Singh',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const Text(
                                    'Couple Combo Package (Rejuven...',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16,
                                      color: Color(0xff006837),
                                    ),
                                  ),
                                  kHeight10,
                                  Row(
                                    children: [
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.calendar_month_outlined,
                                            size: 18,
                                            color: Colors.red,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            '31/01/2024',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      kWidth20,
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.group_outlined,
                                            size: 20,
                                            color: Colors.red,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            'Jithesh',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Divider(
                              color: Colors.grey,
                              thickness: 0.5,
                              height: 0,
                            ),
                            const ListTile(
                              leading: Text(''),
                              title: Text(
                                'View Booking details',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Color(0xFF006837),
                                size: 17,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
              decoration: const BoxDecoration(
                color: Color(0xff006851),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: const Center(
                child: Text(
                  'Register Now',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSearchTextField() {
    return Expanded(
      child: TextFormField(
        // controller: searchFormController,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            size: 25,
            color: Colors.grey,
          ),
          hintText: "Search for treatments",
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
          constraints: const BoxConstraints(maxHeight: 48),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            borderSide: BorderSide(
              color: Colors.grey.shade400,
              width: 1.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            borderSide: BorderSide(
              color: Colors.grey.shade400,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            borderSide: BorderSide(
              color: Colors.grey.shade500,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSearchButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(
          Color(0xFF006837),
        ),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(
            horizontal: 28,
            vertical: 13,
          ),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      child: const Text(
        "Search",
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
