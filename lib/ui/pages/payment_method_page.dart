part of 'pages.dart';

class PaymentMethodPage extends StatelessWidget {
  final String payment_url;

  PaymentMethodPage(this.payment_url);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: IllustrationPage(
          title: "Finish Your Payment",
          subtitle: "Please select your favorite\npayment method",
          picturePath: 'assets/Payment.png',
          buttonTap1: () async {
            await launch(payment_url);
          },
          buttonTitle1: 'Payment Method',
          buttonTap2: () {
            Get.to(SuccessOrderPage());
          },
          buttonTitle2: 'Continue',
        ));
  }
}
