part of '../view/home_page.dart';

class _DownloadResumButton extends StatelessWidget {
  const _DownloadResumButton();

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: const Duration(milliseconds: 1800),
      child: AppButtons.buildMaterialButton(
          onTap: () {
            downloadRemotePdf(
                'https://drive.google.com/file/d/1OAdtQDMQwG_onW2dm0kNbSn8ZFdfytcD/view?usp=sharing',
                // 'https://drive.google.com/uc?export=download&id=1OAdtQDMQwG_onW2dm0kNbSn8ZFdfytcD',
                'rahim.pdf');
          },
          buttonName: 'Download Resume'),
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
