import 'package:flutter/material.dart';
import 'package:spotify_clone/core/database/cache/cache_helper.dart';
import 'package:spotify_clone/core/utils/size_config.dart';

void initializeAppConfig(BuildContext context) async {
  SizeConfig.init(context);
  await CacheHelper.init();
}
