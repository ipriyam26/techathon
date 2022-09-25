import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class filterChipWidget extends StatefulWidget {
  final String? chipName;

  filterChipWidget({Key? key, this.chipName}) : super(key: key);

  @override
  _filterChipWidgetState createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      showCheckmark: false,
      visualDensity: VisualDensity(horizontal: 2, vertical: 2),
      avatar: _isSelected ? Icon(Icons.crop) : Icon(Icons.add),
      side: BorderSide(color: Color(0xffD5D5D5), width: 0.2),
      label: Text(widget.chipName as String),
      labelStyle: TextStyle(
          color: _isSelected ? Colors.white : Color(0xff6B6D81),
          fontSize: 16.0,
          fontWeight: FontWeight.bold),
      selected: _isSelected,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3.59.sp),
      ),
      backgroundColor: Colors.white,
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: Color(0xffFE724C),
    );
  }
}

class filterPageDesign extends StatefulWidget {
  final String? filterName;
  final List<String> filterlist;

  filterPageDesign({Key? key, this.filterName, required this.filterlist})
      : super(key: key);

  @override
  _filterPageDesignState createState() => _filterPageDesignState();
}

class _filterPageDesignState extends State<filterPageDesign> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10.h,
        ),
        Text(
          widget.filterName as String,
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 10.h,
        ),
        Wrap(direction: Axis.horizontal, children: [
          for (var item in widget.filterlist)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: filterChipWidget(
                chipName: item,
              ),
            )
        ]),
      ],
    );
  }
}
