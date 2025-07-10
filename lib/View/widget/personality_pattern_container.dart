import 'package:flutter/material.dart';
import 'package:gradution_project/View/custom_container_card/Fourth_Pattern.dart';
import 'package:gradution_project/View/custom_container_card/first_pattern.dart';
import 'package:gradution_project/View/custom_container_card/second_pattern.dart';
import 'package:gradution_project/View/custom_container_card/third_Pattern.dart';
import 'package:gradution_project/View/widget/persnonalitypatternitem.dart';

class PersonalityPatternContainer extends StatefulWidget {
  const PersonalityPatternContainer({
    super.key,
  });

  @override
  State<PersonalityPatternContainer> createState() =>
      _PersonalitypatternContainerState();
}

class _PersonalitypatternContainerState
    extends State<PersonalityPatternContainer>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        setState(() {
          currentIndex = _tabController.index;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
        ),
        child: DefaultTabController(
          length: 4,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.06,
              ),
              TabBar(
                dividerColor: Colors.white,
                indicatorColor: const Color.fromRGBO(54, 113, 90, 2),
                labelPadding: const EdgeInsets.all(8),
                controller: _tabController,
                tabs: [
                  PersonalityPatternItem(
                    text: 'المستكشفون',
                    isHighlighted: currentIndex == 0,
                  ),
                  PersonalityPatternItem(
                    text: 'المنظمون',
                    isHighlighted: currentIndex == 1,
                  ),
                  PersonalityPatternItem(
                    text: 'الدبلوماسيون',
                    isHighlighted: currentIndex == 2,
                  ),
                  PersonalityPatternItem(
                    text: 'المحللون',
                    isHighlighted: currentIndex == 3,
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    FirstPattern(),
                    SecondPattern(),
                    ThirdPattern(),
                    FourthPattern()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
