part of '../view/skills_screen.dart';

class _SkillsContent extends StatelessWidget {
  const _SkillsContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      // mainAxisSize: MainAxisSize.min,
      children: [
       
        const _SkillsContentCard(
          title: AppString.frameworkAndProgramming,
          subtitle: AppString.flutterFramework,
          description: AppString.flutterFrameworkDescription,
        ),
        const _SkillsContentCard(
          subtitle: AppString.dartProgramming,
          description: AppString.dartProgrammingdescription,
        ),
        const _SkillsContentCard(
          title: AppString.stateManagement,
          subtitle: AppString.provider,
          description: AppString.providerDescription,
        ),
        const _SkillsContentCard(
          subtitle: AppString.riverpod,
          description: AppString.riverpodDescription,
        ),
        const _SkillsContentCard(
          subtitle: AppString.getX,
          description: AppString.getxDescription,
        ),
        const _SkillsContentCard(
          title: AppString.backendAndAPIIntegration,
          subtitle: AppString.restfulApis,
          description: AppString.restfulApisDescription,
        ),
        const _SkillsContentCard(
          subtitle: AppString.firebse,
          description: AppString.firebseDescription,
        ),
        const _SkillsContentCard(
          title: AppString.localDatabase,
          subtitle: AppString.hive,
          description: AppString.hiveDescription,
        ),
        const _SkillsContentCard(
          subtitle: AppString.sqfLite,
          description: AppString.sqfLiteDescription,
        ),
        const _SkillsContentCard(
          subtitle: AppString.sharePrefarence,
          description: AppString.sharePrefarenceDescription,
        ),
        const _SkillsContentCard(
          subtitle: AppString.getStorage,
          description: AppString.getStorageDescription,
        ),
        const _SkillsContentCard(
          title: AppString.performanceOptimization,
          subtitle: AppString.devTools,
          description: AppString.devToolsDescription,
        ),
        const _SkillsContentCard(
          subtitle: AppString.performance,
          description: AppString.performanceDescription,
        ),
        const _SkillsContentCard(
          title: AppString.devOpsAndDeployment,
          subtitle: AppString.appStorePlayStore,
          description: AppString.appStorePlayStoreDescription,
        ),
        const _SkillsContentCard(
          subtitle: AppString.cICDPipelines,
          description: AppString.cICDPipelinesDescription,
        ),
        const _SkillsContentCard(
          title: AppString.toolsAndVersionControl,
          subtitle: AppString.iDETools,
          description: AppString.iDEToolsDescription,
        ),
        const _SkillsContentCard(
          subtitle: AppString.versionControl,
          description: AppString.versionControlDescription,
        ),
        const _SkillsContentCard(
          subtitle: AppString.packageManagement,
          description: AppString.packageManagementDescription,
        ),
        const _SkillsContentCard(
          title: AppString.otherRelevantSkills,
          subtitle: AppString.pushNotifications,
          description: AppString.pushNotificationsDescription,
        ),
        const _SkillsContentCard(
          subtitle: AppString.offline,
          description: AppString.offlineDescription,
        ),
        const _SkillsContentCard(
          subtitle: AppString.chatGptIntregrate,
          description: AppString.chatGptIntregrateDescription,
        ),
        const _SkillsContentCard(
          subtitle: AppString.paymentgateway,
          description: AppString.paymentgatewayDescription,
        ),
        const _SkillsContentCard(
          subtitle: AppString.plateformSpecificApp,
          description: AppString.plateformSpecificAppDescription,
        ),
        Constants.sizedBox(height: 15.0),
      ],
    );
  }
}
