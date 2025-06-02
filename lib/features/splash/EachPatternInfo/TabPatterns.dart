import 'package:flutter/material.dart';

class Tabpatterns extends StatefulWidget {
  const Tabpatterns({super.key, required this.Tabchilds});
  final List<Widget> Tabchilds;
  @override
  State<Tabpatterns> createState() => _TabpatternsState();
}

class _TabpatternsState extends State<Tabpatterns>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this, initialIndex: 6);
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
        child: DefaultTabController(
      length: 7,
      child: Column(
        children: [
           SizedBox(
            height: height * 0.051,
          ),
          TabBar(
            indicatorWeight: 2,
            dividerColor: Colors.white,
            indicatorColor: const Color(0xff4A826C),
            labelPadding:  EdgeInsets.symmetric(horizontal: height*0.05),
            labelStyle: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
            isScrollable: true,
            controller: _tabController,
            tabs: const [
              Text('عادات مكان العمل'),
              Text('مسارات الحياة المهنية'),
              Text('الأبوة'),
              Text('العلاقات الرومانسية'),
              Text('نقاط القوة والضعف'),
              Text('الصداقات'),
              Text('مقدمة تعريفية'),
            ],
          ),
          Expanded(
            child: TabBarView(
                controller: _tabController, children: widget.Tabchilds),
          ),
        ],
      ),
    ));
  }
}
