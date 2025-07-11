import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/category.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<CategoryModel> categoriesData = CategoryModel.getCategories();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [header(), categories()],
      ),
    );
  }

  Column categories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16, top: 16),
          child: Text(
            'Categories',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
        ),
        Container(
          height: 50,
          margin: const EdgeInsets.all(16),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: categoriesData[index].isSelected
                          ? const Color(0xff51A8FF).withOpacity(0.45)
                          : const Color(0xff050618).withOpacity(0.05),
                      offset: const Offset(0, 4),
                      blurRadius: 25,
                    ),
                  ],
                  color: categoriesData[index].isSelected
                      ? const Color(0xff51A8FF)
                      : Colors.white,
                ),
                child: SvgPicture.asset(
                  categoriesData[index].vector,
                  fit: BoxFit.none,
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 50),
            itemCount: categoriesData.length,
          ),
        ),
      ],
    );
  }

  Container header() {
    return Container(
      color: const Color(0xff51A8FF),
      width: double.infinity,
      height: 350,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Hi Madmax',
                style: TextStyle(fontSize: 18, color: Color(0xffFFFFFF)),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(
                  'assets/vectors/notification.svg',
                  fit: BoxFit.none,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const Text(
            "Let's find\nYour Top doctor",
            style: TextStyle(
              fontSize: 28,
              color: Color(0xffFFFFFF),
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 30),
          const TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.search, color: Colors.black, size: 25),
              hintText: "Search here...",
              hintStyle: TextStyle(fontWeight: FontWeight.w300),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
