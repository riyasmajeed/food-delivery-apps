import 'package:flutter/material.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
   int _selectedIndex = 0;
  final List<String> imageUrls = [
    'https://tse1.mm.bing.net/th?id=OIP.HRXIftYSQYPXGQhqJmx2wgHaE7&pid=Api&P=0&h=220',
    'https://tse3.mm.bing.net/th?id=OIP.RZ9bnziuegU__tCdic0HhgHaE8&pid=Api&P=0&w=300&h=300',
   
  ];

   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 400, // Set the height for the horizontal list
          margin: EdgeInsets.symmetric(vertical: 10.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.8, // Set the width of each item
                margin: EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                 
                  color: Colors.black
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    imageUrls[index],
                    fit: BoxFit.cover,
                  ),
                ),
                
              );
            },
          ),
        ),
        // Container(
        //   height: 10,
        //   width: 10,
        //  decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(5),
        //   color: Colors.black
        //  ),
        // )
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: _selectedIndex == 0 ? Colors.black : Colors.grey,
              ),
            ),
            SizedBox(width: 5), // Add spacing between the containers
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: _selectedIndex == 1 ? Colors.black : Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}


// import 'package:flutter/material.dart';

// class HomeSlider extends StatefulWidget {
//   const HomeSlider({Key? key});

//   @override
//   State<HomeSlider> createState() => _HomeSliderState();
// }

// class _HomeSliderState extends State<HomeSlider> {
//   final PageController _pageController = PageController();
//   final List<String> imageUrls = [
//     'https://tse1.mm.bing.net/th?id=OIP.HRXIftYSQYPXGQhqJmx2wgHaE7&pid=Api&P=0&h=220',
//     'https://tse3.mm.bing.net/th?id=OIP.RZ9bnziuegU__tCdic0HhgHaE8&pid=Api&P=0&w=300&h=300',
//   ];
//   int _currentPage = 0;

//   @override
//   void initState() {
//     super.initState();
//     _pageController.addListener(() {
//       setState(() {
//         _currentPage = _pageController.page!.round();
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 400, // Set the height for the horizontal list
//           margin: EdgeInsets.symmetric(vertical: 10.0),
//           child: PageView.builder(
//             controller: _pageController,
//             itemCount: imageUrls.length,
//             itemBuilder: (context, index) {
//               return Container(
//                 width: MediaQuery.of(context).size.width * 0.8, // Set the width of each item
//                 margin: EdgeInsets.only(right: 10.0),
//                 decoration: BoxDecoration(
//                   color: Colors.black,
                 
//                 ),
//                 child: ClipRRect(
              
//                   child: Image.network(
//                     imageUrls[index],
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               );
//             },
//             onPageChanged: (int page) {
//               setState(() {
//                 _currentPage = page;
//               });
//             },
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: List.generate(
//             imageUrls.length,
//             (index) => AnimatedContainer(
//               duration: Duration(milliseconds: 300),
//               margin: EdgeInsets.symmetric(horizontal: 5),
//               width: _currentPage == index ? 10 : 6,
//               height: _currentPage == index ? 10 : 6,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: _currentPage == index ? Colors.blue : Colors.grey.withOpacity(0.6),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
