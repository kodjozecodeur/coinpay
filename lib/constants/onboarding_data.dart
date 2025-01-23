class OnboardingData {
  final String title;

  final String imagePath;

  OnboardingData({required this.title, required this.imagePath});
}

final List<OnboardingData> onboardingData = [
  OnboardingData(
    title: "Trusted by millions of people, part of one \n part",
    imagePath: "assets/onboarding_img_1.png",
  ),
  OnboardingData(
    title: "Spend money abroad, and track your expense",
    imagePath: "assets/onboarding_img_2.png",
  ),
  OnboardingData(
    title: "Receive Money From Anywhere In The World",
    imagePath: "assets/onboarding_img_3.png",
  ),
];
