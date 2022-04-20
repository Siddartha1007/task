// ignore: file_names
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({ Key? key }) : super(key: key);

  @override
   State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {

  final List<String> imageList = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN9thnLc50CK3EEl7AMUAizc8bBhJ1oRA2Jg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbKWVpPbIz--D8YOEspfeFMqcHjOZVt_XVtw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwwOf4Gn9lFL_EtdzmPgceFmHMBWhi0_nVEw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-Tj0vv8yVXfNhOuXV3kHqzCvs7cYQpw9aPQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjXHHDkIJvFInFOhEPh-HJQ062YlhJwlwYNw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRVQYjqp8KQLqroPf3KyrHG2J8iC0Z5T9OlQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6-Ux4ApkxagD_howlK92GzmBQ5MYeLVUBgw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9uNkv6EwrOXztlw0S3G6g4HULEgdGiScB5A&usqp=CAU"
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
return Stack(
  children:[ 
    Column(
    children: [
      CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          onPageChanged: (index,reason){
            setState(() {
              currentIndex=index;
            });
          }
        ),
        items: imageList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Image.network(
                        imgUrl,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
      ),
     
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imageList.map((url) {
          int index = imageList.indexOf(url);
          return Container(
            width: 8.0,
            height: 8.0,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: currentIndex == index
                  ? Color.fromRGBO(0, 0, 0, 0.9)
                  : Color.fromRGBO(0, 0, 0, 0.4),
            ),
          );
        }).toList(),
      )

    ],
  ),
  ]
);
  }
}
