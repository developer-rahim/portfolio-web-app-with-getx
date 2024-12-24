part of '../view/home_page.dart';

class _HomeAnimatedText extends StatelessWidget {
  const _HomeAnimatedText();

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      duration: const Duration(milliseconds: 1400),
      child: Row(
        children: [
          Text(
            'And I\'m a ',
            style: AppTextStyles.montserratStyle(color: Colors.white),
          ),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                'Andriod App Developer',
                textStyle:
                    AppTextStyles.montserratStyle(color: Colors.lightBlue),
              ),
              TyperAnimatedText('IOS App Developer',
                  textStyle:
                      AppTextStyles.montserratStyle(color: Colors.lightBlue)),
              TyperAnimatedText('Web App Developer',
                  textStyle:
                      AppTextStyles.montserratStyle(color: Colors.lightBlue)),
              TyperAnimatedText('MacOS App Developer',
                  textStyle:
                      AppTextStyles.montserratStyle(color: Colors.lightBlue)),
              TyperAnimatedText('Flutter Developer',
                  textStyle:
                      AppTextStyles.montserratStyle(color: Colors.lightBlue))
            ],
            pause: const Duration(milliseconds: 1000),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          )
        ],
      ),
    );
  }
}
