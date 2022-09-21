import 'package:devcamp_travel_app/imports.dart';

class DestinationGridViewItem extends StatelessWidget {
  const DestinationGridViewItem({
    Key? key,
    required this.city,
  }) : super(key: key);

  final Data city;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.go('/details', extra: city),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          color: Colors.red.shade800,
          child: Column(
            children: [
              Hero(
                tag: city.cityName,
                child: Image.network(city.cityImage),
              ),
              const Spacer(),
              Text(
                city.cityName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class PlaceListViewItem extends StatelessWidget {
  const PlaceListViewItem({
    Key? key,
    required this.place,
  }) : super(key: key);

  final Place place;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push('/details/placeDetails', extra: place),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Hero(
              tag: place.placeName,
              child: CircleAvatar(
                backgroundImage: NetworkImage(place.placeImage),
                radius: 50,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              place.placeName,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class RowButton extends StatelessWidget {
  const RowButton({
    Key? key,
    required this.buttonText,
  }) : super(key: key);
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.red.shade800,
      ),
      child: Center(
        child: Text(
          buttonText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
