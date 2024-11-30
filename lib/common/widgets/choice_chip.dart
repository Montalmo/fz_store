import 'package:flutter/material.dart';
import 'package:fz_store/common/widgets/circular_container.dart';

import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/helpers/helper_function.dart';

class FZChioceChip extends StatelessWidget {
  const FZChioceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColored = FZHelperFuctions.getColor(text) != null;

    return ChoiceChip(
      label: isColored ? const SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      selectedColor: FZHelperFuctions.getColor(text),
      labelStyle: TextStyle(color: selected ? FZColors.light : null),
      avatar: isColored
          ? FZCircularContainer(
              width: 48,
              height: 48,
              backgroundColor: FZHelperFuctions.getColor(text)!,
            )
          : null,
      shape: isColored ? const CircleBorder() : null,
      labelPadding: isColored ? const EdgeInsets.all(0) : null,
      padding: isColored ? const EdgeInsets.all(0) : null,
      backgroundColor: FZHelperFuctions.getColor(text),
    );
  }
}
