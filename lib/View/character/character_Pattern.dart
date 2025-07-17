import 'package:flutter/material.dart';
import 'package:gradution_project/View/Screens/homepage.dart';
import 'package:gradution_project/View/character/Container_For_Character.dart';
import 'package:gradution_project/View/character/item2_charcter_pattern.dart';
import 'package:gradution_project/View/widget/constant.dart';
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
                const SizedBox(
                  height: 15,
                ),
                const CharacterPatternButton(),
                const SizedBox(
                  height: 15,
                ),
                ContainerForCharachter(
                  personalityType:
                      widget.personalityResultModel.personalityType,
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
                    padding: const EdgeInsets.symmetric(vertical: 16),
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

class CharacterPatternButton extends StatelessWidget {
  const CharacterPatternButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Homepage(),
                    ));
              },
              icon: const Icon(Icons.arrow_back)),
          const Spacer(),
          const Text(
            "سمات الشخصية",
            style: TextStyle(
                color: primaryTextColor,
                fontSize: 26,
                fontWeight: FontWeight.bold),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
