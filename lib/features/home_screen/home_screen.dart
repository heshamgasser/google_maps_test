import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);




  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late GoogleMapController mapController;



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        title: Text('Fluuter Google Maps'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: (controller) => mapController = controller,
            initialCameraPosition: CameraPosition(
                target: LatLng(26.453488492118026, 50.099732823940265),
                zoom: 18),
          ),
          Positioned(
            bottom: 10,
            left: 20,
            right: 20,
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.white),
                    onPressed: () {
                  
                      setState(() {
                        mapController.animateCamera(
                          CameraUpdate.newLatLng(
                            LatLng(26.452166806709524, 50.12938182288275),
                          ),
                        );
                      });
                    },
                    child: FittedBox(child: Text('Change Location')),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white),
                    onPressed: () {
                  
                      setState(() {
                        mapController.animateCamera(
                          CameraUpdate.newLatLng(
                            LatLng(26.453488492118026, 50.099732823940265),
                          ),
                        );
                      });
                    },
                    child: FittedBox(child: Text('Back To My Location')),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
