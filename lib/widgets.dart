import 'package:devcamp_travel_app/imports.dart';

class DestinationGridViewItem extends StatelessWidget {
  const DestinationGridViewItem({
    Key? key,
    required this.city,
  }) : super(key: key);

  final Data city;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
