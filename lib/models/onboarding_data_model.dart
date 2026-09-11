class OnboardingDataModel {
  String imagepath;
  String title;
  String description;
  OnboardingDataModel({
    required this.imagepath,
    required this.title,
    required this.description,
  });
}

List<OnboardingDataModel> onboardingdata = [
  OnboardingDataModel(
    imagepath: 'assets/onboarding/onboarding_1.png',
    title: 'Welcome To Islami App',
    description: '',
  ),
  OnboardingDataModel(
    imagepath: 'assets/onboarding/onboarding_2.png',
    title: 'Welcome To Islami',
    description: 'We are very excited to have you in our community.',
  ),
  OnboardingDataModel(
    imagepath: 'assets/onboarding/onboarding_3.png',
    title: 'Reading the Quran',
    description: 'Read, and your Lord is the Most Generous.',
  ),
  OnboardingDataModel(
    imagepath: 'assets/onboarding/onboarding_4.png',
    title: 'Bearish',
    description: 'Praise the name of your Lord, the Most High.',
  ),
  OnboardingDataModel(
    imagepath: 'assets/onboarding/onboarding_5.png',
    title: 'Holy Quran Radio',
    description:
        'You can listen to the Holy Quran Radio through the application for free and easily.',
  ),
];
