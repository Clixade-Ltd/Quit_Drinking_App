import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

/// Outlined pill row: label on the left, a check indicator on the
/// right. Used for single-choice options on Step 1 ("What is your
/// goal") and Step 2 ("What would you like to begin?").
class OutlinedSelectRow extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const OutlinedSelectRow({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.outlineGrey,
            width: 1.4,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.textBlack,
              ),
            ),
            Container(
              width: 22,
              height: 22,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? AppColors.primary : Colors.transparent,
                border: Border.all(
                  color:
                  isSelected ? AppColors.primary : AppColors.outlineGrey,
                  width: 1.4,
                ),
              ),
              child: isSelected
                  ? const Icon(Icons.check, size: 14, color: AppColors.white)
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}