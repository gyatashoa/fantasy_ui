import 'package:fantasy_ui/models/Scores.dart';
import 'package:fantasy_ui/palete/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  
  
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  final _bottomNavItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.sports_soccer),
      title: SizedBox.shrink()
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.bar_chart),
            title: SizedBox.shrink()

    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.library_books),
            title: SizedBox.shrink()

    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outline),
        title: SizedBox.shrink()

      ),
  ];

  TabController tabController;
  
  @override
  void initState() {
    tabController = TabController(length: 2,vsync: this);
    super.initState();
  }

  final _tabs = <Tab>[
    Tab(child: Text("Live Matches"),),
    Tab(child: Text("Fixtures"),),
  ];

  final tabViews = <Widget>[
     Container(
        // height: double.infinity,
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemBuilder: (ctx,index){
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0,bottom: 5),
                child: Text(matches[index].location),
              ),
              Column(children: 
                matches[index].matches.map((e) => _FixtureCard(data: e,)).toList()
              ),
            ],
          );
        }, separatorBuilder: (ctx,i)=>SizedBox(height: 15,), itemCount: matches.length),
      ),
      Container(
        child: Center(child: Text("Fixtures")),
      )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Icon(Icons.search),
          )
        ],
        bottom: TabBar(
          physics: BouncingScrollPhysics(),
          controller: tabController,
          tabs: _tabs),
      ),
      body: TabBarView(
        controller: tabController,
        children: tabViews),
      bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                canvasColor: primaryColor
              ),
              child: BottomNavigationBar(
            currentIndex: 0,
            items: _bottomNavItems),
      ),
    );
  }
}


class _FixtureCard extends StatelessWidget {
  final Scores data;
  final bool isLast;
  const _FixtureCard({Key key, this.data,this.isLast}) : super(key: key); 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            color: tileColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Text("${data.duration.inHours} : 0${data.duration.inHours}"),
                Column(
                  children: [
                    Text(data.homeTeam),
                    SizedBox(height: 10,),
                    Text(data.awayTeam),
                  ],
                ),
                Column(
                  children: [
                    Text(data.homeTeamScore.toString()),
                    SizedBox(height: 10,),
                    Text(data.awayTeamScore.toString()),
                  ],
                ),
              ],),
            ),
          ),
          Divider(height: 0,)
        ],
      ),
    );
  }
}