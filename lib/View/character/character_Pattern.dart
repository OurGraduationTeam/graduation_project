import 'package:flutter/material.dart';
import 'package:gradution_project/View/character/Container_For_Character.dart';
import 'package:gradution_project/View/character/item2_charcter_pattern.dart';
import 'package:gradution_project/model/models/personality_result_model.dart';

class CharacterPattern extends StatefulWidget {
  const CharacterPattern({
    super.key,
    required this.personalityResultModel,
  });

  final PersonalityResultModel personalityResultModel;

  @override
  State<CharacterPattern> createState() => _CharacterPatternState();
}

class _CharacterPatternState extends State<CharacterPattern> {
  Color _getColorForTrait(String key) {
    switch (key) {
      case "الانفتاح/الانطوائيه":
        return const Color(0Xff90D0B7);
      case "الفهم/الحدس":
        return const Color(0XffDACC2D);
      case "التفكير/الاحساس":
        return const Color(0XffC8F15A);
      case "الحكم علي الاشخاص/الإدراك":
        return const Color(0XffE3A3E9);
      case "حازم/مضطرب":
        return const Color(0XffE38F8F);
      default:
        return Colors.grey;
    }
  }

  final orderedKeys = [
    "الانفتاح/الانطوائيه",
    "الفهم/الحدس",
    "التفكير/الاحساس",
    "الحكم علي الاشخاص/الإدراك",
    "حازم/مضطرب",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ContainerForCharachter(
                  personalityType:
                      widget.personalityResultModel.personalityType,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8, right: 8),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'سمات الشخصية',
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16), // prevent overflow inside
                    child: Column(
                      children: widget
                          .personalityResultModel.traitPercentages.entries
                          .map(
                        (entry) {
                          return Item2CharacterPattern(
                            description: entry.key,
                            progress: entry.value.toDouble(),
                            color: _getColorForTrait(entry.key),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
