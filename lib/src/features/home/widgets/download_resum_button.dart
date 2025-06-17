part of '../view/home_page.dart';

class _DownloadResumButton extends StatelessWidget {
  const _DownloadResumButton();

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: const Duration(milliseconds: 1800),
      child: AppButtons.buildMaterialButton(
          onTap: () {
            if (kIsWeb) {
               downloadRemotePdf(
                // 'https://drive.google.com/file/d/1OAdtQDMQwG_onW2dm0kNbSn8ZFdfytcD/view?usp=sharing',
                'https://drive.google.com/uc?export=download&id=1OAdtQDMQwG_onW2dm0kNbSn8ZFdfytcD',
                'rahim.pdf');
            }else{
              downloadFile('https://drive.google.com/file/d/1OAdtQDMQwG_onW2dm0kNbSn8ZFdfytcD/view?usp=sharing','rahim.pdf');
            }
           
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

  Future<void> downloadFile(String url, String fileName) async {
    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        Directory? downloadsDirectory;

        if (Platform.isAndroid) {
          if (await Permission.storage.request().isGranted) {
            downloadsDirectory = Directory('/storage/emulated/0/Download');

            if (!(await downloadsDirectory.exists())) {
              downloadsDirectory = await getExternalStorageDirectory();
              downloadsDirectory =
                  Directory('${downloadsDirectory!.path}/Download');
              await downloadsDirectory.create(recursive: true);
            }
          } else {
            print('Storage permission not granted');
            return;
          }
        } else if (Platform.isIOS) {
          downloadsDirectory = await getApplicationDocumentsDirectory();
        } else if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
          downloadsDirectory = await getDownloadsDirectory();
        }

        if (downloadsDirectory != null) {
          final filePath = '${downloadsDirectory.path}/$fileName';
          final file = File(filePath);
          await file.writeAsBytes(response.bodyBytes);
          print('File downloaded to: $filePath');
        } else {
          print('Could not get download directory.');
        }
      } else {
        print('HTTP request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error downloading file: $e');
    }
  }
}
