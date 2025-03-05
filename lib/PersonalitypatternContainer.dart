import 'package:flutter/material.dart';
import 'package:gradution_project/custom_container_card/Firstpattern.dart';
import 'package:gradution_project/custom_container_card/Fourthpattern.dart';
import 'package:gradution_project/custom_container_card/Secondpattern.dart';
import 'package:gradution_project/custom_container_card/Thirdpattern.dart';
import 'PersnonalityPatternItem.dart';

class PersonalitypatternContainer extends StatefulWidget {
  const PersonalitypatternContainer({
    super.key,
  });

  @override
  State<PersonalitypatternContainer> createState() =>
      _PersonalitypatternContainerState();
}

class _PersonalitypatternContainerState
    extends State<PersonalitypatternContainer>
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
            const SizedBox(
              height: 50,
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
                Firstpattern(),
                Secondpattern(),
                Thirdpattern(),
                Fourthpattern()
                                ],
              ),
            ),
         
          ],
        ),
      ),
    ));
  }
}
