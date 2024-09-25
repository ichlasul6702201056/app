import 'package:app/components/card_tile.dart';
import 'package:app/data/response.dto.dart';
import 'package:app/pages/detail.dart';
import 'package:flutter/material.dart';
import 'package:app/style/font.dart';
import 'package:app/style/color.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ApiResponse> dataList = [];
  final Dio _fetch = Dio();
  bool isLoading = false;

Future<void> fetchData() async {
  setState(() {
    isLoading = true;
  });
  try {
    final response = await _fetch.get('https://4kxxpx6s-3001.asse.devtunnels.ms/api');
    final List<ApiResponse> listTemp = (response.data as List).map((item) {
      return ApiResponse(
          id: item['id'],
          title: item['title'],
          content: item['content'],
          createdAt: DateTime.parse(item['createdAt']),
          updatedAt: DateTime.parse(item['updatedAt']));
    }).toList();

    setState(() {
      dataList = listTemp;
      isLoading = false;
    });

  } catch (e) {
    print('Error fetching data: $e');
    setState(() {
      isLoading = false;
    });
  }
}
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      '21 September 2024',
                      style: FontStyle.h3FontStyle,
                    ),
                    Text(
                      '08:12',
                      style: FontStyle.h1FontStyle,
                    ),
                  ],
                ),
                const Icon(Icons.wb_sunny_outlined, size: 52)
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Incomplete (1)',
                    style: FontStyle.bodyFontStyle,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.filter_alt, size: 24)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.keyboard_arrow_down_rounded,
                              size: 24))
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
              thickness: 3,
              color: ColorApp.textPrimaryColor,
              indent: MediaQuery.of(context).size.width * 0.1,
              endIndent: MediaQuery.of(context).size.width * 0.1,
            ),
            const SizedBox(height: 5),
            isLoading ? const CircularProgressIndicator() : 
            ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              itemCount: dataList.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final item = dataList[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: CustomCardTile(
                    id: item.id,
                    title: item.title,
                    content: item.content,
                    createdAt: item.createdAt.toLocal(),
                    updatedAt: item.updatedAt.toLocal(),
                    onClick: () {Navigator.pushNamed(context, '/detail', arguments: item);},
                    // onClick: () async {await Navigator.push(context, MaterialPageRoute(builder: (context) => Detail(item: item)));},
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => {Navigator.pushNamed(context, '/detail')},
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: Colors.black),
          ),
          child: const Icon(Icons.add)),
    );
  }
}
