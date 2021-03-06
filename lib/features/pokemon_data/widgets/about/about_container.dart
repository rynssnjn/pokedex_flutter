import 'package:flutter/material.dart';
import 'package:pokedex_flutter/features/pokemon_data/widgets/card_item_tile.dart';
import 'package:pokedex_flutter/features/pokemon_data/widgets/data_container.dart';
import 'package:pokedex_flutter/utilities/enums.dart';
import 'package:pokedex_flutter/utilities/extensions.dart';
import 'package:pokedex_flutter/utilities/string_constants.dart' as strings;
import 'package:rsj_f/rsj_f.dart';

class AboutContainer extends StatelessWidget {
  const AboutContainer({
    this.height,
    this.weight,
    this.baseExperience,
    this.abilities,
    this.decorationColor,
    Key key,
  }) : super(key: key);

  final int height;
  final int weight;
  final int baseExperience;
  final String abilities;
  final Color decorationColor;

  @override
  Widget build(BuildContext context) {
    return DataContainer(
      title: strings.about.localized(context),
      titleColor: decorationColor,
      children: [
        CardItemTile(
          category: strings.height.localized(context),
          value: height.getWithUnit(unit: MeasurementUnit.METERS),
          leadingColor: decorationColor,
          icon: Icons.height_rounded,
        ),
        CardItemTile(
          category: strings.weight.localized(context),
          value: weight.getWithUnit(unit: MeasurementUnit.KILOGRAMS),
          leadingColor: decorationColor,
          icon: Icons.linear_scale_rounded,
        ),
        CardItemTile(
          category: strings.baseExperience.localized(context),
          value: '$baseExperience xp',
          leadingColor: decorationColor,
          icon: Icons.bar_chart_rounded,
        ),
        CardItemTile(
          category: strings.abilities.localized(context),
          value: abilities,
          leadingColor: decorationColor,
          icon: Icons.accessibility_outlined,
        ),
      ],
    );
  }
}
