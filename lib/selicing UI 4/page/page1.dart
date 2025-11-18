import 'package:flutter/material.dart';
import 'package:selicing_ui/selicing%20UI%204/Component/Appbar.dart';
import 'package:selicing_ui/selicing%20UI%204/Component/card1super.dart';
import 'package:selicing_ui/selicing%20UI%204/Component/cardpilihan.dart';
import 'package:selicing_ui/selicing%20UI%204/Component/cardpromo.dart';
import 'package:selicing_ui/selicing%20UI%204/Component/colors.dart';
import 'package:selicing_ui/selicing%20UI%204/Component/hero.dart';
import 'package:selicing_ui/selicing%20UI%204/Component/isiwrap.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ivoryMist,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: AppColors.deepForest),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppbarIcon(),
                    Row(
                      spacing: 10,
                      children: [AppbarIcon(), AppbarIcon(), AppbarIcon()],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // Hero Section
                  SizedBox(
                    height: 180,
                    child: PageView(children: [Hero1(), Hero1(), Hero1()]),
                  ),

                  Positioned(
                    bottom: -85,
                    left: 30,
                    right: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.mutedSage,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Cardpilihan(
                                  pilihan: Image.asset('orange-juice.png'),
                                  namap: "Minuman",
                                ),
                                Cardpilihan(
                                  pilihan: Image.asset('burger.png'),
                                  namap: "Makanan",
                                ),
                                Cardpilihan(
                                  pilihan: Image.asset('fastfood.png'),
                                  namap: "Fastfood",
                                ),
                                Cardpilihan(
                                  pilihan: Image.asset('vegetables.png'),
                                  namap: "Buah & Sayur",
                                ),
                                Cardpilihan(
                                  pilihan: Image.asset('store.png'),
                                  namap: "Restoran",
                                ),
                              ],
                            ),
                            Divider(color: Colors.black),
                            SizedBox(height: 3),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  spacing: 5,
                                  children: [
                                    Image.asset(
                                      'wallet.png',
                                      height: 33,
                                      width: 33,
                                    ),
                                    Text(
                                      'Rp.500.000',
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  '0 coins',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 110),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Isiwrap(isiicon: Icon(Icons.swap_horiz), namai: "Transfer"),
                    Isiwrap(
                      isiicon: Icon(Icons.account_balance_wallet),
                      namai: "Top Up",
                    ),
                    Isiwrap(isiicon: Icon(Icons.money), namai: "Tarik Tunai"),
                    Isiwrap(isiicon: Icon(Icons.sync_alt), namai: "Konversi"),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Isiwrap(isiicon: Icon(Icons.data_usage), namai: "Kuota"),
                    Isiwrap(isiicon: Icon(Icons.smartphone), namai: "Pulsa"),
                    Isiwrap(
                      isiicon: Icon(Icons.shopping_bag),
                      namai: "E-commerce",
                    ),
                    Isiwrap(isiicon: Icon(Icons.savings), namai: "Nabung"),
                  ],
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Super deal hari ini",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 15,
                      children: [
                        Container(
                          height: 130,
                          width: 225,
                          decoration: BoxDecoration(
                            color: AppColors.mutedSage,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("DISKON ONGKIR SAMPAI 50%",textAlign: TextAlign.center,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                              Text("khusus grab & shoope",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                        Container(
                          height: 130,
                          width: 225,
                          decoration: BoxDecoration(
                            color: AppColors.mutedSage,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Buy 1 Get 1",textAlign: TextAlign.center,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                              Text("khusus cemilan kekininian",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                         Container(
                          height: 130,
                          width: 225,
                          decoration: BoxDecoration(
                            color: AppColors.mutedSage,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Buy 1 Get 1",textAlign: TextAlign.center,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                              Text("khusus cemilan kekininian",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                         Container(
                          height: 130,
                          width: 225,
                          decoration: BoxDecoration(
                            color: AppColors.mutedSage,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Buy 1 Get 1",textAlign: TextAlign.center,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                              Text("khusus cemilan kekininian",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jangan lewatkan",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Belanja hemat,dapat cashbacklagi!",
                    style: TextStyle(fontSize: 13),
                  ),
                  SizedBox(height: 5),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 15,
                      children: [
                        Cardpromo(),
                        Cardpromo(),
                        Cardpromo(),
                        Cardpromo(),
                        Cardpromo(),
                        Cardpromo(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.peachBlush,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
