import 'package:exemplifica/core/config/buttons_config.dart';
import 'package:exemplifica/core/config/registry/content/calculators_registry.dart';
import 'package:exemplifica/core/ui/enums/config_buttons_enum.dart';

final Map<ConfigButtonsEnum, ButtonsConfig> calculatorsButtonsConfig = {
  ...calculatorsButtons, 
};
