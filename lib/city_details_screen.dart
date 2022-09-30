import 'package:devcamp_travel_app/imports.dart';

class CityDetails extends StatelessWidget {
  const CityDetails({super.key, required this.city});

  final Data city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade800,
      appBar: AppBar(
        backgroundColor: Colors.red.shade800,
        title: Text(city.cityName),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: city.cityName,
              child: Image.network(city.cityImage),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Popular Places',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: city.cityplaces.length,
                itemBuilder: (context, index) => PlaceListViewItem(place: city.cityplaces[index]),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Information',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                city.cityInfo,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
