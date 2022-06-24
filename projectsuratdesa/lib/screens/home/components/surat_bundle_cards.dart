import 'package:flutter/material.dart';
import 'package:projectsuratdesa/models/SuratBundle.dart';
import 'package:projectsuratdesa/size_config.dart';

class SuratBundleCard extends StatelessWidget {
  final SuratBundles suratBundles;
  final VoidCallback? press;

  const SuratBundleCard(
      {Key? key, required this.suratBundles, required this.press})
      : super(key: key);
// blablabla
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          color: suratBundles.color,
          borderRadius: BorderRadius.circular(defaultSize * 1.8),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: Column(
                children: <Widget>[
                  Text(
                    suratBundles.title,
                    style: TextStyle(
                        fontSize: defaultSize * 2.2, color: Colors.white),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: defaultSize * 0.5),
                  Text(
                    suratBundles.description,
                    style: const TextStyle(color: Colors.white54),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  SizedBox(height: defaultSize * 0.5),
                  Text(
                    suratBundles.syarat,
                    style: const TextStyle(color: Colors.white),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/png/panah.png'),
                      SizedBox(width: defaultSize),
                      Text(
                        suratBundles.uploadbuktilahir,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/png/panah.png'),
                      SizedBox(width: defaultSize),
                      Text(
                        suratBundles.uploadktp,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Image.asset('assets/png/panah.png'),
                      SizedBox(width: defaultSize),
                      Text(
                        suratBundles.uploadKK,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/png/panah.png'),
                      SizedBox(width: defaultSize),
                      Text(
                        suratBundles.uploadbuktinikah,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),

                  //disini
                ],
              ),
            )),
            SizedBox(width: defaultSize * 0.5),
            AspectRatio(
              aspectRatio: 0.71,
              child: Image.asset(
                suratBundles.imageSrc,
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            )
          ],
        ),
      ),
    );
  }
}
