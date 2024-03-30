import 'package:flutter/material.dart';
import 'package:carat_card/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:carat_card/presentation/authentication_one_screen/authentication_one_screen.dart';
import 'package:carat_card/presentation/authentication_two_screen/authentication_two_screen.dart';
import 'package:carat_card/presentation/authentication_three_screen/authentication_three_screen.dart';
import 'package:carat_card/presentation/authentication_four_screen/authentication_four_screen.dart';
import 'package:carat_card/presentation/authentication_five_screen/authentication_five_screen.dart';
import 'package:carat_card/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:carat_card/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:carat_card/presentation/onboarding_four_screen/onboarding_four_screen.dart';
import 'package:carat_card/presentation/onboarding_five_screen/onboarding_five_screen.dart';
import 'package:carat_card/presentation/onboarding_six_screen/onboarding_six_screen.dart';
import 'package:carat_card/presentation/dashboard_one_container_screen/dashboard_one_container_screen.dart';
import 'package:carat_card/presentation/dashboard_tab_container_screen/dashboard_tab_container_screen.dart';
import 'package:carat_card/presentation/transactions_two_screen/transactions_two_screen.dart';
import 'package:carat_card/presentation/transactions_three_screen/transactions_three_screen.dart';
import 'package:carat_card/presentation/transactions_four_screen/transactions_four_screen.dart';
import 'package:carat_card/presentation/transactions_five_screen/transactions_five_screen.dart';
import 'package:carat_card/presentation/transactions_six_screen/transactions_six_screen.dart';
import 'package:carat_card/presentation/transactions_seven_screen/transactions_seven_screen.dart';
import 'package:carat_card/presentation/transactions_eight_screen/transactions_eight_screen.dart';
import 'package:carat_card/presentation/rewards_one_screen/rewards_one_screen.dart';
import 'package:carat_card/presentation/rewards_two_screen/rewards_two_screen.dart';
import 'package:carat_card/presentation/rewards_four_screen/rewards_four_screen.dart';
import 'package:carat_card/presentation/offer_one_tab_container_screen/offer_one_tab_container_screen.dart';
import 'package:carat_card/presentation/frame_360_screen/frame_360_screen.dart';
import 'package:carat_card/presentation/notifications_one_screen/notifications_one_screen.dart';
import 'package:carat_card/presentation/notifications_two_screen/notifications_two_screen.dart';
import 'package:carat_card/presentation/notifications_three_screen/notifications_three_screen.dart';
import 'package:carat_card/presentation/notifications_four_screen/notifications_four_screen.dart';
import 'package:carat_card/presentation/privacy_policy_one_screen/privacy_policy_one_screen.dart';
import 'package:carat_card/presentation/privacy_policy_two_screen/privacy_policy_two_screen.dart';
import 'package:carat_card/presentation/help_center_one_screen/help_center_one_screen.dart';
import 'package:carat_card/presentation/help_center_two_screen/help_center_two_screen.dart';
import 'package:carat_card/presentation/help_center_three_screen/help_center_three_screen.dart';
import 'package:carat_card/presentation/help_center_four_screen/help_center_four_screen.dart';
import 'package:carat_card/presentation/porfile_one_screen/porfile_one_screen.dart';
import 'package:carat_card/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String authenticationOneScreen = '/authentication_one_screen';

  static const String authenticationTwoScreen = '/authentication_two_screen';

  static const String authenticationThreeScreen =
      '/authentication_three_screen';

  static const String authenticationFourScreen = '/authentication_four_screen';

  static const String authenticationFiveScreen = '/authentication_five_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String onboardingFourScreen = '/onboarding_four_screen';

  static const String onboardingFiveScreen = '/onboarding_five_screen';

  static const String onboardingSixScreen = '/onboarding_six_screen';

  static const String dashboardOnePage = '/dashboard_one_page';

  static const String dashboardOneContainerScreen =
      '/dashboard_one_container_screen';

  static const String dashboardPage = '/dashboard_page';

  static const String dashboardTabContainerScreen =
      '/dashboard_tab_container_screen';

  static const String transactionsOnePage = '/transactions_one_page';

  static const String transactionsTwoScreen = '/transactions_two_screen';

  static const String transactionsThreeScreen = '/transactions_three_screen';

  static const String transactionsFourScreen = '/transactions_four_screen';

  static const String transactionsFiveScreen = '/transactions_five_screen';

  static const String transactionsSixScreen = '/transactions_six_screen';

  static const String transactionsSevenScreen = '/transactions_seven_screen';

  static const String transactionsEightScreen = '/transactions_eight_screen';

  static const String rewardsOneScreen = '/rewards_one_screen';

  static const String rewardsTwoScreen = '/rewards_two_screen';

  static const String rewardsThreePage = '/rewards_three_page';

  static const String rewardsFourScreen = '/rewards_four_screen';

  static const String offerOnePage = '/offer_one_page';

  static const String offerOneTabContainerScreen =
      '/offer_one_tab_container_screen';

  static const String offerTwoPage = '/offer_two_page';

  static const String offerThreePage = '/offer_three_page';

  static const String frame360Screen = '/frame_360_screen';

  static const String notificationsOneScreen = '/notifications_one_screen';

  static const String notificationsTwoScreen = '/notifications_two_screen';

  static const String notificationsThreeScreen = '/notifications_three_screen';

  static const String notificationsFourScreen = '/notifications_four_screen';

  static const String privacyPolicyOneScreen = '/privacy_policy_one_screen';

  static const String privacyPolicyTwoScreen = '/privacy_policy_two_screen';

  static const String helpCenterOneScreen = '/help_center_one_screen';

  static const String helpCenterTwoScreen = '/help_center_two_screen';

  static const String helpCenterThreeScreen = '/help_center_three_screen';

  static const String helpCenterFourScreen = '/help_center_four_screen';

  static const String porfileOneScreen = '/porfile_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        onboardingOneScreen: OnboardingOneScreen.builder,
        authenticationOneScreen: AuthenticationOneScreen.builder,
        authenticationTwoScreen: AuthenticationTwoScreen.builder,
        authenticationThreeScreen: AuthenticationThreeScreen.builder,
        authenticationFourScreen: AuthenticationFourScreen.builder,
        authenticationFiveScreen: AuthenticationFiveScreen.builder,
        onboardingTwoScreen: OnboardingTwoScreen.builder,
        onboardingThreeScreen: OnboardingThreeScreen.builder,
        onboardingFourScreen: OnboardingFourScreen.builder,
        onboardingFiveScreen: OnboardingFiveScreen.builder,
        onboardingSixScreen: OnboardingSixScreen.builder,
        dashboardOneContainerScreen: DashboardOneContainerScreen.builder,
        dashboardTabContainerScreen: DashboardTabContainerScreen.builder,
        transactionsTwoScreen: TransactionsTwoScreen.builder,
        transactionsThreeScreen: TransactionsThreeScreen.builder,
        transactionsFourScreen: TransactionsFourScreen.builder,
        transactionsFiveScreen: TransactionsFiveScreen.builder,
        transactionsSixScreen: TransactionsSixScreen.builder,
        transactionsSevenScreen: TransactionsSevenScreen.builder,
        transactionsEightScreen: TransactionsEightScreen.builder,
        rewardsOneScreen: RewardsOneScreen.builder,
        rewardsTwoScreen: RewardsTwoScreen.builder,
        rewardsFourScreen: RewardsFourScreen.builder,
        offerOneTabContainerScreen: OfferOneTabContainerScreen.builder,
        frame360Screen: Frame360Screen.builder,
        notificationsOneScreen: NotificationsOneScreen.builder,
        notificationsTwoScreen: NotificationsTwoScreen.builder,
        notificationsThreeScreen: NotificationsThreeScreen.builder,
        notificationsFourScreen: NotificationsFourScreen.builder,
        privacyPolicyOneScreen: PrivacyPolicyOneScreen.builder,
        privacyPolicyTwoScreen: PrivacyPolicyTwoScreen.builder,
        helpCenterOneScreen: HelpCenterOneScreen.builder,
        helpCenterTwoScreen: HelpCenterTwoScreen.builder,
        helpCenterThreeScreen: HelpCenterThreeScreen.builder,
        helpCenterFourScreen: HelpCenterFourScreen.builder,
        porfileOneScreen: PorfileOneScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: OnboardingOneScreen.builder
      };
}
