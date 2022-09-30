
import 'package:devcamp_travel_app/imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade800,
        title: const Text('Travel App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network('https://img.freepik.com/premium-vector/travel-concept-vector-illustration-with-famous-sights-accessories_95169-98.jpg?w=1800'),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  RowButton(buttonText: 'Attraction'),
                  RowButton(buttonText: 'Places'),
                  RowButton(buttonText: 'Hotels'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Popular Destination',
                style: TextStyle(fontSize: 18),
              ),
            ),
            GridView.builder(
              itemCount: datalist.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return DestinationGridViewItem(city: datalist[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
