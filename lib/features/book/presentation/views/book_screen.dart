import 'package:booking_room/core/utils/assets.dart';
import 'package:booking_room/core/utils/colors.dart';
import 'package:booking_room/features/book/presentation/views/widgets/custom_booking_traning.dart';
import 'package:booking_room/features/book/presentation/views/widgets/custom_payment_review.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: CupertinoColors.systemGrey6,
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24 ,right: 24),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Booking Review",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 20,),
                      const CustomBookingTraning(),
                      const SizedBox(height: 26,),
                      const CustomPaymentReview(),
                      const SizedBox(height: 39,),
                      Container(
                        width: 342,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text("Discounts Available",style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  width: 99,
                                  height: 33,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.white
                                  ),
                                  child: MaterialButton(
                                    color: const Color.fromRGBO(117, 200, 183, 0.33),
                                    onPressed: (){},
                                    child: const Text("Add promo",
                                      style: TextStyle(
                                          color: AppColors.iconDrawer,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),),),
                                ),
                              ],),
                            // SizedBox(height: 12,),
                            Padding(
                              padding: const EdgeInsets.only(left: 25,right: 25,top: 12,bottom: 12),
                              child: Container(
                                width: 292,
                                height: 42,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black,width: 1),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(AppAssets.discount_book,height: 17,width: 22,),
                                    const Text("30% off 10 booking (up to EGP 150)",style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff9A9A9A)
                                    ),),
                                    Container(
                                      width: 63,
                                      height: 26,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          color: Colors.white
                                      ),
                                      child: MaterialButton(
                                        color: const Color.fromRGBO(117, 200, 183, 0.33),
                                        onPressed: (){},
                                        child: const Text("Apply",style: TextStyle(
                                            color: AppColors.iconDrawer,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12),),),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Divider(),
                            const SizedBox(height: 12,),
                            const Text("       Booking Charges",style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),),
                            const SizedBox(height: 12,),
                            const Divider(),
                            const SizedBox(height: 12,),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("x1 Day EGP 100.0 x 1 Seat",style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),),
                                Text("EGP 100.0",style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),),
                              ],
                            ),
                            const SizedBox(height: 24,),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("       Total Due",style: TextStyle(
                                    color: AppColors.iconDrawer,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),),
                                Text("EGP 100.0      ",style: TextStyle(
                                    color: AppColors.iconDrawer,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),),
                              ],
                            ),
                            const SizedBox(height: 24,),
                          ],),
                      ),
                      const SizedBox(height: 39,),
                      Container(
                        width: 342,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white
                        ),
                        child: MaterialButton(
                          height: 51,
                          color: const Color(0xff20473E),
                          onPressed: () {},
                          child: const Text(
                            "Book",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 26,),
                      Container(
                        width: 342,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white
                        ),
                        child: MaterialButton(
                          color: Colors.white,
                          height: 51,
                          onPressed: () {},
                          child: const Text(
                            "Cancellation Policy",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.black54),
                          ),
                        ),
                      ),
                      const SizedBox(height: 50,),
                    ],
                  ),
                ),
              ],
            )));
  }
}
