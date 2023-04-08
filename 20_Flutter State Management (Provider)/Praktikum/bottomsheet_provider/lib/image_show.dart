import 'package:bottomsheet_provider/image_fullscrenn.dart';
import 'package:flutter/material.dart';

void showImage(BuildContext context, String imageUrl) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext contex) {
      return Container(
        child: Column(
          children: <Widget>[
            //untuk menampilkan gambar pasa bottomshet sesuai dengan apa yang di klik di halaman image gallery
            Image.asset(imageUrl),
            TextButton(
              onPressed: () {
                //Navigator.of(context).pop();
                //untuk mengirim data berupa gambar ke hal image fullscren yang di diubah menjadi string atau url/lokasi gambar tersebut
                Navigator.pushNamed(context, '/fullscreen',
                    arguments: imageUrl);
                /* Navigator.push(
                  contex,
                  MaterialPageRoute(
                    builder: (_) => FullImage(imageUrl: imageUrl),
                  ),
                ); */
              },
              child: const Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('No'),
            ),
          ],
        ),
      );
    },
  );
}
