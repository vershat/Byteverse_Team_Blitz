import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:thella_wala/splash_screen/selecttype.dart';
class GetUserLoc extends StatefulWidget {
  const GetUserLoc({super.key});

  @override
  State<GetUserLoc> createState() => _GetUserLocState();
}

class _GetUserLocState extends State<GetUserLoc> {
  final Completer<GoogleMapController> _controller=Completer();
  static const CameraPosition _kGooglePlex=CameraPosition(
    target: LatLng(25.61769310804377, 85.17121594486119),
    zoom:14,
  );
  final List<Marker> _marker = [
    Marker(
    markerId: MarkerId('1'),
    position: LatLng(25.61769310804377, 85.17121594486119),
    infoWindow: InfoWindow(
      title: "My Current Location"
    )
  ),
  ];
  loadData(){getUserLocation().then((value)async {
            print("My Loction");
            print(value.latitude.toString()+" "+value.longitude.toString());
            _marker.add(Marker(markerId: MarkerId('1'),
            position: LatLng(value.latitude,value.longitude),
            infoWindow: InfoWindow(
              title: "my Location"
            )
            ),
            );
            CameraPosition cameraPosition=CameraPosition(
              zoom:14,
              target: LatLng( value.latitude,value.longitude));
              final GoogleMapController controller= await  _controller.future;
              controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
              setState(() {
                
              });
          });}

  Future<Position> getUserLocation()async{
    await Geolocator.requestPermission().then((value){

    } ).onError((error, stackTrace) {print("error"+error.toString());});
    return await Geolocator.getCurrentPosition();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GoogleMap(
          initialCameraPosition: _kGooglePlex,
          
          mapType: MapType.normal,
          // myLocationButtonEnabled: true,
          markers: Set<Marker>.of(_marker),
          // compassEnabled: true,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // getUserLocation().then((value)async {
          //   print("My Loction");
          //   print(value.latitude.toString()+" "+value.longitude.toString());
          //   _marker.add(Marker(markerId: MarkerId('2'),
          //   position: LatLng(value.latitude,value.longitude),
          //   infoWindow: InfoWindow(
          //     title: "my Location"
          //   )
          //   ),
          //   );
          //   CameraPosition cameraPosition=CameraPosition(
          //     zoom:14,
          //     target: LatLng( value.latitude,value.longitude));
          //     final GoogleMapController controller= await  _controller.future;
          //     controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
          //     setState(() {
                
          //     });
          // });
          Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CreateAccountPage()),
                    );
        },
        child: Icon(Icons.local_activity),
        ),
    );
  }
}