import 'package:flutter/material.dart';
import 'package:linkedin/ui/custom_widgets/custom_company_card.dart';
import 'package:linkedin/ui/custom_widgets/custom_input.dart';

class ConnectionScreen extends StatefulWidget {
  const ConnectionScreen({super.key});
  @override
  State<ConnectionScreen> createState() => _ConnectionScreenState();
}

class _ConnectionScreenState extends State<ConnectionScreen> {
  static const List<String> _imageList = [
    'https://blog.hubspot.com/hubfs/image8-2.jpg',
    'https://cdn.freebiesupply.com/logos/large/2x/dribbble-5-logo-png-transparent.png',
    'https://www.pngkey.com/png/full/2-27646_twitter-logo-png-transparent-background-logo-twitter-png.png',
    'https://alchemyimmersive.com/wp-content/uploads/sites/4/2020/04/apple-logo-transparent.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Facebook_logo_%28square%29.png/800px-Facebook_logo_%28square%29.png',
    'https://www.designportal.cz/obrazek/microsoft_logo_2012-02.jpg',
  ];
  static const List<String> _companyNameList = [
    'Google Inc',
    'Dribbble Inc',
    'Twitter Inc',
    'Apple Inc',
    'Facebook Inc',
    'Microsoft Inc',
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 100) / 3;
    final double itemWidth = size.width / 2;
    return GridView.count(
      padding: EdgeInsets.all(25),
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      crossAxisCount: 2,
      childAspectRatio: (itemWidth / itemHeight),
      children: List.generate(
          _imageList.length,
          (index) => CustomCompanyCard(
              companyName: _companyNameList[index],
              followers: "1M followers",
              imageUrl: _imageList[index])),
    );
  }
}
