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
        _SkillContentHeader(),
        const _SkillsContentItem(
          title: AppString.frameworkAndProgramming,
          subtitle: AppString.flutterFramework,
          description: AppString.flutterFrameworkDescription,
        ),
        const _SkillsContentItem(
          subtitle: AppString.dartProgramming,
          description: AppString.dartProgrammingdescription,
        ),
        const _SkillsContentItem(
          title: AppString.stateManagement,
          subtitle: AppString.provider,
          description: AppString.providerDescription,
        ),
        const _SkillsContentItem(
          subtitle: AppString.riverpod,
          description: AppString.riverpodDescription,
        ),
        const _SkillsContentItem(
          subtitle: AppString.getX,
          description: AppString.getxDescription,
        ),
        const _SkillsContentItem(
          title: AppString.backendAndAPIIntegration,
          subtitle: AppString.restfulApis,
          description: AppString.restfulApisDescription,
        ),
        const _SkillsContentItem(
          subtitle: AppString.firebse,
          description: AppString.firebseDescription,
        ),
        const _SkillsContentItem(
          title: AppString.localDatabase,
          subtitle: AppString.hive,
          description: AppString.hiveDescription,
        ),
        const _SkillsContentItem(
          subtitle: AppString.sqfLite,
          description: AppString.sqfLiteDescription,
        ),
        const _SkillsContentItem(
          subtitle: AppString.sharePrefarence,
          description: AppString.sharePrefarenceDescription,
        ),
        const _SkillsContentItem(
          subtitle: AppString.getStorage,
          description: AppString.getStorageDescription,
        ),
        const _SkillsContentItem(
          title: AppString.performanceOptimization,
          subtitle: AppString.devTools,
          description: AppString.devToolsDescription,
        ),
        const _SkillsContentItem(
          subtitle: AppString.performance,
          description: AppString.performanceDescription,
        ),
        const _SkillsContentItem(
          title: AppString.devOpsAndDeployment,
          subtitle: AppString.appStorePlayStore,
          description: AppString.appStorePlayStoreDescription,
        ),
        const _SkillsContentItem(
          subtitle: AppString.cICDPipelines,
          description: AppString.cICDPipelinesDescription,
        ),
        const _SkillsContentItem(
          title: AppString.toolsAndVersionControl,
          subtitle: AppString.iDETools,
          description: AppString.iDEToolsDescription,
        ),
        const _SkillsContentItem(
          subtitle: AppString.versionControl,
          description: AppString.versionControlDescription,
        ),
        const _SkillsContentItem(
          subtitle: AppString.packageManagement,
          description: AppString.packageManagementDescription,
        ),
        const _SkillsContentItem(
          title: AppString.otherRelevantSkills,
          subtitle: AppString.pushNotifications,
          description: AppString.pushNotificationsDescription,
        ),
        const _SkillsContentItem(
          subtitle: AppString.offline,
          description: AppString.offlineDescription,
        ),
        const _SkillsContentItem(
          subtitle: AppString.chatGptIntregrate,
          description: AppString.chatGptIntregrateDescription,
        ),
        const _SkillsContentItem(
          subtitle: AppString.paymentgateway,
          description: AppString.paymentgatewayDescription,
        ),
        const _SkillsContentItem(
          subtitle: AppString.plateformSpecificApp,
          description: AppString.plateformSpecificAppDescription,
        ),
        Constants.sizedBox(height: 15.0),
      ],
    );
  }
}
