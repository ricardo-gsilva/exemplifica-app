import 'package:exemplifica/core/config/buttons_config.dart';
import 'package:exemplifica/core/config/registry/content/algebra_registry.dart';
import 'package:exemplifica/core/config/registry/content/arithmetic_registry.dart';
import 'package:exemplifica/core/config/registry/content/basic_rules_registry.dart';
import 'package:exemplifica/core/config/registry/content/finance_registry.dart';
import 'package:exemplifica/core/config/registry/content/main_buttons_registry.dart';
import 'package:exemplifica/core/ui/enums/config_buttons_enum.dart';

final Map<ConfigButtonsEnum, ButtonsConfig> learningButtonsConfig = {
  ...mainButtons,
  ...algebraButtons,
  ...arithmeticButtons,
  ...financeButtons,
  ...basicRulesButtons,
};
