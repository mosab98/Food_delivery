import 'package:flutter/material.dart';
import 'package:food_delivery/utils/app_colors.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 8),
      child: Column(
        
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              children: [
              const Text("Personal Information",
               style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color:  AppColors.black,
                                  ),),
              const SizedBox(width: 150,),
              
              InkWell(
                onTap: (){}, 
                child: 
                const SizedBox( 
                  height:30,
                  width: 30,
                  child:
                  Icon(Icons.edit_note,size: 30,)
                ),
              )
              ],
            ),
          ),
        const Center(
          child: CircleAvatar(radius: 60,
          backgroundImage:AssetImage('assets/images/home-banner.jpg') ,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical:20,horizontal: 10),
          width: double.infinity,
          height: 50,
          child: DecoratedBox(decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5 ,horizontal: 15),
                      child: Column(
                        
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name",
                          style: TextStyle(color: Colors.grey),),
                          Text("Mosab Bozeya" ,
                          style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                          ),
                    ),
                        ),
        ),
         Container(
          margin: const EdgeInsets.symmetric(vertical:0,horizontal: 10),
          width: double.infinity,
          height: 50,
          child: DecoratedBox(decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5 ,horizontal: 15),
                      child: Column(
                        
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Email",
                          style: TextStyle(color: Colors.grey),),
                          Text("example@maaaail.com" ,
                          style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                          ),
                    ),
                        ),
        ),

        Container(
          margin: const EdgeInsets.symmetric(vertical:20,horizontal: 10),
          width: double.infinity,
          height: 50,
          child: DecoratedBox(decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5 ,horizontal: 15),
                      child: Column(
                        
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Phone Number",
                          style: TextStyle(color: Colors.grey),),
                          Text("0123456789" ,
                          style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                          ),
                    ),
                        ),
        ),

        Container(
          margin: const EdgeInsets.symmetric(vertical:0,horizontal: 10),
          width: double.infinity,
          height: 50,
          child: Row(
            children: [
              SizedBox( width:150,
                child: DecoratedBox(decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5 ,horizontal: 15),
                            child: Column(
                              
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Location",
                                style: TextStyle(color: Colors.grey),),
                                Text("Nablus,Palestine" ,
                                style: TextStyle(fontWeight: FontWeight.bold),),
                                ],
                                ),
                          ),
                              ),
              ),
              const SizedBox(width: 24,),
              SizedBox(
                width: 150,
                child: DecoratedBox(decoration:
                BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5 ,horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Password",
                        style: TextStyle(color: Colors.grey),
                        ),
                      Text("***********" ,
                        style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                    ],
                  ),
                ),
                ),
              ),
            ],
          ),
        ),

        ]
        
        ,
      ),
    );
    
  }
}