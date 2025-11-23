import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/location_view_model.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<LocationViewModel>(context);

    return Scaffold(
      appBar: AppBar(title: Text("NearMeet MVP")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Latitude: ${vm.lat ?? '--'}"),
            Text("Longitude: ${vm.lon ?? '--'}"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => vm.updateLocation(),
              child: Text("Обновить локацию"),
            )
          ],
        ),
      ),
    );
  }
}
