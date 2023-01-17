import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:tugasakhir/controller/button_toggle.dart';
import '../../controller/name_routes.dart';
import '../../controller/hexcolor_convert.dart';
import '../../models/company_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _applied = CompanyModel().apllicant.toString();
  final _contracts = CompanyModel().contract.toString();
  bool selected = false;
  final _bgPrimary = HexColor("#F9F9F9");
  final _bgSecondary = HexColor("#59B4B5");
  final _black = HexColor('#545454');

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _bgPrimary,
        leading: IconButton(
          padding: const EdgeInsets.only(left: 20),
          onPressed: () {},
          icon: Image.asset('assets/icons/setting_icon.png'),
        ),
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Image.asset("assets/logos/logo.png", width: 100),
          titlePadding: const EdgeInsets.all(5.0),
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 20, top: 5),
            icon: Image.asset(
              "assets/icons/account_icon.png",
            ),
            onPressed: () {
              Get.toNamed(RouteName.account);
            },
          ),
        ],
        elevation: 0,
      ),
      // ------------------------------body---------------------------------
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              // ------------------------------search bar---------------------------------
              Container(
                color: _bgPrimary,
                height: 50,
                margin: const EdgeInsets.only(top: 5, right: 20, left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      padding: const EdgeInsets.only(top: 12, bottom: 12),
                      child: Image.asset("assets/icons/search_icon.png"),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        // Action ketika ikon diklik
                        _controller.clear();
                      },
                    ),
                    hintText: 'What are you looking for?',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              // ------------------------------banner---------------------------------
              Container(
                margin: const EdgeInsets.only(top: 5, right: 20, left: 20),
                width: 393,
                child: Image.asset("assets/images/banner.png"),
              ),
              // ------------------------------category---------------------------------
              Container(
                margin: const EdgeInsets.only(top: 10, left: 22),
                height: 36,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // ------------------------------category 1 dengan toggle---------------------------
                      Container(
                        margin: const EdgeInsets.only(right: 15),
                        child: SelectableButton(
                          selected: selected,
                          onPressed: () {
                            setState(() {
                              selected = !selected;
                            });
                          },
                          child: Text('All'),
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.selected)) {
                                  return _bgPrimary;
                                }
                                return HexColor(
                                    "#A5A5A5"); // defer to the defaults
                              },
                            ),
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.selected)) {
                                  return _bgSecondary;
                                }
                                return HexColor(
                                    "#C4E4E4"); // defer to the defaults
                              },
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // ------------------------------category 2---------------------------------
                      Container(
                        margin: const EdgeInsets.only(right: 15),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Graphic Designer'),
                          style: ElevatedButton.styleFrom(
                            primary: HexColor("#C4E4E4"),
                            onPrimary: HexColor("#A5A5A5"),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      // ------------------------------category 3---------------------------------
                      Container(
                        margin: const EdgeInsets.only(right: 15),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Web Developer'),
                          style: ElevatedButton.styleFrom(
                            primary: HexColor("#C4E4E4"),
                            onPrimary: HexColor("#A5A5A5"),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      // ------------------------------category 4---------------------------------
                      Container(
                        margin: const EdgeInsets.only(right: 15),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Mobile Developer'),
                          style: ElevatedButton.styleFrom(
                            primary: HexColor("#C4E4E4"),
                            onPrimary: HexColor("#A5A5A5"),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // ------------------------------top company---------------------------------
              Container(
                child: Column(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(top: 20, right: 20, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 2),
                            child: Text(
                              'Top Company',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: _black,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'View All',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // ------------------------------top company---------------------------------
                    Container(
                      margin:
                          const EdgeInsets.only(top: 10, right: 20, left: 20),
                      height: 145,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          // return Image.asset(items[index].bg!);
                          return Stack(
                            children: [
                              // ------------------------------background 1---------------------------------
                              Container(
                                width: 275,
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(items[index].bg!),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              // ------------------------------name text---------------------------------
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 25, left: 81),
                                height: 30,
                                child: Center(
                                  child: Text(
                                    items[index].name!,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: _bgPrimary,
                                    ),
                                  ),
                                ),
                              ),
                              // ------------------------------job text---------------------------------
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 46, left: 81),
                                height: 30,
                                child: Center(
                                  child: Text(
                                    items[index].job!,
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: _bgPrimary,
                                    ),
                                  ),
                                ),
                              ),
                              // ------------------------------category text---------------------------------
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 89, left: 24),
                                height: 30,
                                child: Center(
                                  child: Text(
                                    items[index].category!,
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: _bgPrimary,
                                    ),
                                  ),
                                ),
                              ),
                              // ------------------------------applied text---------------------------------
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 89, left: 100),
                                height: 30,
                                child: Center(
                                  child: Text(
                                    ('$_applied+ Applied'),
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: _bgPrimary,
                                    ),
                                  ),
                                ),
                              ),
                              // ------------------------------contracts text---------------------------------
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 89, left: 200),
                                height: 30,
                                child: Center(
                                  child: Text(
                                    ('$_contracts Year'),
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: _bgPrimary,
                                    ),
                                  ),
                                ),
                              ),
                              // ------------------------------logo---------------------------------
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 28, top: 27),
                                width: 35,
                                child: Image.asset(items[index].logo!),
                              ),
                            ],
                          );
                        },
                        itemCount: items.length,
                        separatorBuilder: (context, index) => Divider(),
                      ),
                    ),
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
