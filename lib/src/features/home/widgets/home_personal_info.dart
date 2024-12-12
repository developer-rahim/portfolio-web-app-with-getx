part of '../view/home_page.dart';

class _HomePersonalInfo extends GetView<HomeViewController> {
  const _HomePersonalInfo();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeInDown(
          duration: const Duration(milliseconds: 1200),
          child: Text(
            'Hello, It\'s Me',
            style: AppTextStyles.montserratStyle(color: Colors.white),
          ),
        ),
        Constants.sizedBox(height: 15.0),
        FadeInRight(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            'Abdul Rahim',
            style: AppTextStyles.headingStyles(),
          ),
        ),
        Constants.sizedBox(height: 15.0),
        const _HomeAnimatedText(),
        Constants.sizedBox(height: 15.0),
        FadeInDown(
          duration: const Duration(milliseconds: 1600),
          child: Text(
            'In publishing and graphic design, Lorem ipsum is a placeholder '
            'text commonly used to demonstrate the visual form of a document'
            ' or a typeface without relying on meaningful content.',
            style: AppTextStyles.normalStyle(),
          ),
        ),
        Constants.sizedBox(height: 22.0),
        const _SocialButtonListBuilder(),
        Constants.sizedBox(height: 18.0),
        FadeInUp(
          duration: const Duration(milliseconds: 1800),
          child: AppButtons.buildMaterialButton(
              onTap: () {
                downloadRemotePdf(
                    'https://drive.google.com/uc?export=download&id=1OAdtQDMQwG_onW2dm0kNbSn8ZFdfytcD',
                    'rahim.pdf');
              },
              buttonName: 'Download Resume'),
        ),
      ],
    );
  }

  void downloadRemotePdf(String url, String fileName) {
    // Create an anchor element
    final anchor = html.AnchorElement()
      ..href = url // The URL of the remote file
      ..download = fileName // Set the desired download file name
      ..style.display = 'none'; // Hide the anchor element

    // Append the anchor to the document body
    html.document.body?.append(anchor);

    // Programmatically trigger a click on the anchor to start the download
    anchor.click();

    // Remove the anchor element to clean up the DOM
    anchor.remove();
  }
}
