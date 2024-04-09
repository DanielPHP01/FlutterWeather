import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoacationView extends StatelessWidget {
  final List<String> locations;
  final String? selectedLocation;
  final void Function(String?)? onChanged;

  const LoacationView({
    required this.locations,
    required this.selectedLocation,
    this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 41),
        SvgPicture.asset(
          'pras/location.svg',
          width: 24,
          height: 24,
        ),
        const SizedBox(width: 12),
        DropdownButton<String>(
          value: selectedLocation,
          onChanged: onChanged,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          dropdownColor: Color(0xFF000F26).withOpacity(0.8),
          icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
          underline: Container(
            height: 0,
            color: Colors.transparent,
          ),
          items: locations.map((String location) {
            return DropdownMenuItem<String>(
              value: location,
              child: Text(
                location,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
