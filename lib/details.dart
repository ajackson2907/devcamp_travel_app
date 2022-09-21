import 'package:devcamp_travel_app/imports.dart';

class CityDetails extends StatefulWidget {
  const CityDetails({super.key, required this.city});

  final Data city;

  @override
  State<CityDetails> createState() => _CityDetailsState();
}

class _CityDetailsState extends State<CityDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade800,
        title: Text(widget.city.cityName),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: widget.city.cityName,
              child: Image.network(widget.city.cityImage),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                widget.city.cityInfo,
                style: const TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
