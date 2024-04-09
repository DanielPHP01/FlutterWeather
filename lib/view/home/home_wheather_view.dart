import 'package:flutter/material.dart';
import 'package:pet_for_geekstudio/view/home/componets/DaysWheather.dart';
import 'package:pet_for_geekstudio/view/home/componets/HoursWheather.dart';
import 'package:pet_for_geekstudio/view/home/viewmodel/home_wheather_view_model.dart';
import 'package:provider/provider.dart';
import 'componets/CharachterView.dart';
import 'componets/LoacationView.dart';
import 'componets/SunView.dart';

class HomeWheatherView extends StatefulWidget {
  const HomeWheatherView({super.key});

  @override
  State<HomeWheatherView> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeWheatherView> {
  bool isChangeCard = false;

  void toggleCard() {
    setState(() {
      isChangeCard = !isChangeCard;
    });
  }

  @override
  void initState() {
    super.initState();
    Provider.of<HomeWheatherViewModel>(context, listen: false).fetchWheather(null);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherInfoCard(
        isChangeCard: isChangeCard,
        toggleCard: toggleCard,
      ),
    );
  }
}

class WeatherInfoCard extends StatelessWidget {
  const WeatherInfoCard(
      {super.key, required this.isChangeCard, required this.toggleCard});

  final bool isChangeCard;
  final VoidCallback toggleCard;

  @override
  Widget build(BuildContext context) {
    return Material(child:
        Consumer<HomeWheatherViewModel>(builder: (context, viewModel, child) {
      final weatherData = viewModel.wheatherModel;
      return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF08244F),
              Color(0xFF134CB5),
              Color(0xFF0B42AB),
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(0, 44, 0, 0),
          child: Column(
            children: [
              LoacationView(
                locations:  const ['Bishkek', 'Moscow City', 'City of London, Greater London'],
                selectedLocation: weatherData?.region ?? 'Bishkek',
                onChanged: (String? location) {
                  Provider.of<HomeWheatherViewModel>(context, listen: false).fetchWheather(location);
                },
              ),
              const SizedBox(height: 41),
              const SunView(),
              const SizedBox(height: 20),
               SizedBox(
                child: Text(
                  '${weatherData?.temperatureCelsius ?? ""}º',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 64,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
               SizedBox(
                child: Text(
                  'Precipitations\nMax.: ${weatherData?.feelsLikeCelsius ?? ""}º Min.: ${weatherData?.feelsLikeCelsius ?? ""}º',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(height: 31),
              CharachterView(humidity: weatherData?.humidity.toString() ?? "", wind: weatherData?.windKph.toString() ?? "", cloud: weatherData?.cloud.toString() ?? "",),
              const SizedBox(height: 48),
              Column(children: [
                if (isChangeCard)
                  const DaysWheather()
                else
                  const HoursWheather()
              ]),
              const SizedBox(height: 39),
              if (isChangeCard)
                ElevatedButton(
                  onPressed: () {
                    toggleCard();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF07244E),
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), //
                    ),
                  ),
                  child: const SizedBox(
                    width: 142,
                    height: 25,
                    child: Text(
                      'Next Forecast',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                )
              else
                ElevatedButton(
                  onPressed: () {
                    toggleCard();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF07244E),
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), //
                    ),
                  ),
                  child: const SizedBox(
                    width: 54,
                    height: 25,
                    child: Text(
                      'Home',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              const SizedBox(height: 55),
            ],
          ),
        ),
      );
    }));
  }
}
