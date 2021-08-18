part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            //// Header
            Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                height: 220,
                margin: EdgeInsets.only(bottom: defaultMargin),
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 110,
                      height: 110,
                      margin: EdgeInsets.only(bottom: 16),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/photo_border.png'))),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage((context
                                        .bloc<UserCubit>()
                                        .state as UserLoaded)
                                    .user
                                    .picturePath),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Text(
                      (context.bloc<UserCubit>().state as UserLoaded).user.name,
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      (context.bloc<UserCubit>().state as UserLoaded)
                          .user
                          .email,
                      style:
                          greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                    )
                  ],
                )),
            //// Body
            ///Profile
            InkWell(
              onTap: () async {
                // context.read<UserCubit>().signOut();
                // Get.offAll(SignInPage());
              },
              child: Container(
                height: 50.0,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: defaultMargin, top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Profile",
                                  style: blackFontStyle2,
                                ),
                                SizedBox(
                                    height: 24,
                                    width: 24,
                                    child:
                                        Image.asset("assets/right_arrow.png"))
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            // Payment
            InkWell(
              onTap: () async {
                // context.read<UserCubit>().signOut();
                // Get.offAll(SignInPage());
              },
              child: Container(
                height: 50.0,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: defaultMargin, top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Payment",
                                  style: blackFontStyle2,
                                ),
                                SizedBox(
                                    height: 24,
                                    width: 24,
                                    child:
                                        Image.asset("assets/right_arrow.png"))
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            // Security
            InkWell(
              onTap: () async {
                // context.read<UserCubit>().signOut();
                // Get.offAll(SignInPage());
              },
              child: Container(
                height: 50.0,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: defaultMargin, top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Security",
                                  style: blackFontStyle2,
                                ),
                                SizedBox(
                                    height: 24,
                                    width: 24,
                                    child:
                                        Image.asset("assets/right_arrow.png"))
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            // Rate Appp
            InkWell(
              onTap: () async {
                // context.read<UserCubit>().signOut();
                // Get.offAll(SignInPage());
              },
              child: Container(
                height: 50.0,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: defaultMargin, top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rate App",
                                  style: blackFontStyle2,
                                ),
                                SizedBox(
                                    height: 24,
                                    width: 24,
                                    child:
                                        Image.asset("assets/right_arrow.png"))
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            // Help Center
            InkWell(
              onTap: () async {
                // context.read<UserCubit>().signOut();
                // Get.offAll(SignInPage());
              },
              child: Container(
                height: 50.0,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: defaultMargin, top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Help Center",
                                  style: blackFontStyle2,
                                ),
                                SizedBox(
                                    height: 24,
                                    width: 24,
                                    child:
                                        Image.asset("assets/right_arrow.png"))
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            // Privacy & Policy
            InkWell(
              onTap: () async {
                // context.read<UserCubit>().signOut();
                // Get.offAll(SignInPage());
              },
              child: Container(
                height: 50.0,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: defaultMargin, top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Privacy & Policy",
                                  style: blackFontStyle2,
                                ),
                                SizedBox(
                                    height: 24,
                                    width: 24,
                                    child:
                                        Image.asset("assets/right_arrow.png"))
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            // Term & Condition
            InkWell(
              onTap: () async {
                // context.read<UserCubit>().signOut();
                // Get.offAll(SignInPage());
              },
              child: Container(
                height: 50.0,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: defaultMargin, top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Term & Condition",
                                  style: blackFontStyle2,
                                ),
                                SizedBox(
                                    height: 24,
                                    width: 24,
                                    child:
                                        Image.asset("assets/right_arrow.png"))
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            //Logout
            InkWell(
              onTap: () async {
                context.read<UserCubit>().signOut();
                Get.offAll(SignInPage());
              },
              child: Container(
                height: 50.0,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: defaultMargin, top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Logout",
                                  style: blackFontStyle2,
                                ),
                                SizedBox(
                                    height: 24,
                                    width: 24,
                                    child:
                                        Image.asset("assets/right_arrow.png"))
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 80,
            )
          ],
        ),
      ],
    );
  }
  // CustomTabBar(
  //   titles: ["Account", "FoodMarket"],
  //   selectedIndex: selectedIndex,
  //   onTap: (index) {
  //     setState(() {
  //       selectedIndex = index;
  //     });
  //   },
  // ),
  // SizedBox(
  //   height: 16,
  // ),
  // Column(
  //   children: ((selectedIndex == 0)
  //           ? [
  //               'Edit Profile',
  //               'Home Address',
  //               'Security',
  //               'Payment',
  //               'Logout',
  //             ]
  //           : [
  //               'Rate App',
  //               'Help Center',
  //               'Privacy & Policy',
  //               'Term & Condition'
  //             ])
  //       .map((e) => Padding(
  //             padding: EdgeInsets.only(
  //                 bottom: 16,
  //                 left: defaultMargin,
  //                 right: defaultMargin),
  //             child: Row(
  //               mainAxisAlignment:
  //                   MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Text(
  //                   e,
  //                   style: blackFontStyle3,
  //                 ),
  //                 SizedBox(
  //                   height: 24,
  //                   width: 24,
  //                   child: Image.asset(
  //                     'assets/right_arrow.png',
  //                     fit: BoxFit.contain,
  //                   ),
  //                 )
  //               ],
  //             ),
  //           ))
  //       .toList(),
  // ),
}
