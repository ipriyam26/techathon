import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/home/filter_chip.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List<String> location_items = ["Online", "In Person"];
  List<String> status_items = ["Upcoming", "Open", "Ended"];
  List<String> length_items = ["1-6 Days", "2-4 Weeks", "1 month"];
  List<String> select_tags_items = [
    "Social Good",
    "Beginner",
    "AI/ML",
    "Education",
    "Open Ended",
    "BlockChain",
    "Education",
    "Open Ended",
    "BlockChain",
    "Gaming",
    "Lifehacks",
    "Mobile"
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(18.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Filters",
            style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w800),
          ),
          filterPageDesign(
            filterlist: location_items,
            filterName: "Location",
          ),
          filterPageDesign(
            filterlist: status_items,
            filterName: "Staus",
          ),
          filterPageDesign(
            filterlist: length_items,
            filterName: "Length",
          ),
          filterPageDesign(
            filterlist: select_tags_items,
            filterName: "Select Tags",
          ),
        ],
      ),
    );
  }
}
