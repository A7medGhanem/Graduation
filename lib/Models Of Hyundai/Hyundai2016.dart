import 'package:cached_network_image/cached_network_image.dart';
import 'package:cars/models/Cars.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Hyundai2016 extends StatefulWidget {
  const Hyundai2016({super.key});

  @override
  State<Hyundai2016> createState() => _Hyundai2016State();
}

class _Hyundai2016State extends State<Hyundai2016> {

  CollectionReference user = FirebaseFirestore.instance.collection("Hyundai2016");

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
             appBar: AppBar(
               backgroundColor: Colors.orange,
             leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_rounded), onPressed: () => Navigator.of(context).pop(),
            ),
               title: SizedBox(
                width: 80,
                   child: Text('هــونــــداي ',style: TextStyle(fontFamily: 'ibmB',fontSize: 14,color: Colors.white),)),
               centerTitle: true,
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15))),

             ),
          body: StreamBuilder(
              stream: user.snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Image(image: AssetImage('Images/Error.png'));
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return  Center(
                      child: CircularProgressIndicator(
                        
                        color: Colors.green,
                      ));
                }
                if (snapshot.hasData) {
        
                  return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(height: 10,),
                         Column(
                           children: [
                             SingleChildScrollView(
                               scrollDirection: Axis.horizontal,
                               child: Row(
                                 children: [
                                   Container(

                                     height: 270,
                                     width: 384,

                                     decoration: BoxDecoration(image: DecorationImage(image:
                                     CachedNetworkImageProvider('${snapshot.data!.docs[index]['img1']}'),
                                         fit:BoxFit.fill )),
                                     child: Stack(
                                       children: [
                                         Container(
                                           margin: EdgeInsets.only(top:190),
                                           height: 50,
                                           width: 80,
                                           color: Color(0xff399679),
                                           child: Column(
                                             children: [
                                               Text('قم',style: TextStyle(color: Colors.white,fontFamily: 'ibmB'),),
                                               Row(
                                                 children: [
                                                   Text('  بالسحب',style: TextStyle(color: Colors.yellow,fontFamily: 'ibmB'),),
                                                   SizedBox(width: 5,),
                                                   Icon(Icons.double_arrow_outlined,color: Colors.white,size: 15,)
                                                 ],
                                               ),

                                             ],
                                           ),
                                         )//قم بالسحب
                                       ],
                                     ),
                                   ),
                                   SizedBox(width: 10.0,),//img1
                                   Container(
                                     height: 270,
                                     width: 384,
                               
                                     decoration: BoxDecoration(image: DecorationImage(image:
                                     CachedNetworkImageProvider('${snapshot.data!.docs[index]['img2']}'),
                                         fit:BoxFit.fill )),
                                   ),
                                   SizedBox(width: 10.0,),//img2
                                   Container(
                                     height: 270,
                                     width: 384,
                               
                                     decoration: BoxDecoration(image: DecorationImage(image:
                                     CachedNetworkImageProvider('${snapshot.data!.docs[index]['img3']}'),
                                         fit:BoxFit.fill )),
                                   ),
                                   SizedBox(width: 10.0,),//img3
                                   Container(
                                     height: 270,
                                     width: 384,
                               
                                     decoration: BoxDecoration(image: DecorationImage(image:
                                     CachedNetworkImageProvider('${snapshot.data!.docs[index]['img4']}'),
                                         fit:BoxFit.fill )),
                                   ),
                                   SizedBox(width: 10.0,),//img3
                                   Container(
                                     height: 270,
                                     width: 384,

                                     decoration: BoxDecoration(image: DecorationImage(image:
                                     CachedNetworkImageProvider('${snapshot.data!.docs[index]['img15']}'),
                                         fit:BoxFit.fill )),
                                   ),
                                   SizedBox(width: 10.0,),//img3
                                   Container(
                                     height: 270,
                                     width: 384,

                                     decoration: BoxDecoration(image: DecorationImage(image:
                                     CachedNetworkImageProvider('${snapshot.data!.docs[index]['img16']}'),
                                         fit:BoxFit.fill )),
                                   ),
                                   SizedBox(width: 10.0,),//img3
                                   Container(
                                     height: 270,
                                     width: 384,

                                     decoration: BoxDecoration(image: DecorationImage(image:
                                     CachedNetworkImageProvider('${snapshot.data!.docs[index]['img17']}'),
                                         fit:BoxFit.fill )),
                                   ),
                                   SizedBox(width: 10.0,),//img3
                                   Container(
                                     height: 270,
                                     width: 384,

                                     decoration: BoxDecoration(image: DecorationImage(image:
                                     CachedNetworkImageProvider('${snapshot.data!.docs[index]['img18']}'),
                                         fit:BoxFit.fill )),
                                   ),//img4
                                 ],
                               ),// الصور
                             ),
                             SizedBox(height: 25,),
                             Row(
                               children: [
                                 Container(
                                     height: 25,
                                     width: 50,
                                     child: CachedNetworkImage(imageUrl: 'https://icons.veryicon.com/png/o/system/qianxun-cooperative-transportation-system/authentication-54.png')),
                                 Text('نبذة',style:
                                 TextStyle(fontSize: 18,fontFamily: 'ibmB'),),
        
                               ],
                             ),//نبذة

                            Cars(txt1:'${snapshot.data!.docs[index]['txt1']}', txt2: '${snapshot.data!.docs[index]['txt3']}',
                                txt3: '${snapshot.data!.docs[index]['txt4']}', txt4: '${snapshot.data!.docs[index]['txt5']}',
                                txt5: '${snapshot.data!.docs[index]['txt6']}', txt6: '${snapshot.data!.docs[index]['txt7']}',
                                txt7: '${snapshot.data!.docs[index]['txt8']}', txt8:'${snapshot.data!.docs[index]['txt9']}',
                                txt9: '${snapshot.data!.docs[index]['txt10']}', txt10: '${snapshot.data!.docs[index]['txt11']}',
                                txt11: '${snapshot.data!.docs[index]['txt2']}', kind1:'${snapshot.data!.docs[index]['kind']}',
                                kind2: '${snapshot.data!.docs[index]['kind0']}', kind3:'${snapshot.data!.docs[index]['kind1']}',
                                kind4:'${snapshot.data!.docs[index]['kind2']}', kind5: '${snapshot.data!.docs[index]['kind3']}',
                                kind6: '${snapshot.data!.docs[index]['kind4']}', kind7: '${snapshot.data!.docs[index]['kind5']}',
                                kind8: '${snapshot.data!.docs[index]['kind6']}', kind9: '${snapshot.data!.docs[index]['kind7']}',
                                kind10: '${snapshot.data!.docs[index]['kind8']}', kind11: '${snapshot.data!.docs[index]['kind9']}',
                                kind12:'${snapshot.data!.docs[index]['kind10']}', kind13: '${snapshot.data!.docs[index]['kind11']}',
                                kind14: '${snapshot.data!.docs[index]['kind12']}', kind15: '${snapshot.data!.docs[index]['kind13']}',
                                kind16: '${snapshot.data!.docs[index]['kind14']}',
                                save1: '${snapshot.data!.docs[index]['save1']}', save2: '${snapshot.data!.docs[index]['save2']}',
                                save3: '${snapshot.data!.docs[index]['save3']}', save4:'${snapshot.data!.docs[index]['save4']}',
                                save5: '${snapshot.data!.docs[index]['save5']}', save6: '${snapshot.data!.docs[index]['save6']}',
                                relax1: '${snapshot.data!.docs[index]['relax1']}', relax2: '${snapshot.data!.docs[index]['relax2']}',
                                relax3: '${snapshot.data!.docs[index]['relax3']}', relax4: '${snapshot.data!.docs[index]['relax4']}',
                                relax5: '${snapshot.data!.docs[index]['relax5']}', relax6:'${snapshot.data!.docs[index]['relax6']}',
                                relax7: '${snapshot.data!.docs[index]['relax7']}', relax8: '${snapshot.data!.docs[index]['relax8']}',
                                relax9: '${snapshot.data!.docs[index]['relax9']}', relax10: '${snapshot.data!.docs[index]['relax10']}',
                                img1:'${snapshot.data!.docs[index]['img14']}', img2: '${snapshot.data!.docs[index]['img5']}',
                                img3: '${snapshot.data!.docs[index]['img6']}', img4: '${snapshot.data!.docs[index]['img7']}',
                                img5: '${snapshot.data!.docs[index]['img8']}', img6: '${snapshot.data!.docs[index]['img9']}',
                                img7: '${snapshot.data!.docs[index]['img10']}', img8:'${snapshot.data!.docs[index]['img11']}',
                                img9: '${snapshot.data!.docs[index]['img12']}', color: Colors.red,)
        
                           ],
                         ),
                        ],
                      );
                    },
                  );
                }
                return const Text('data is ready');
              }),
        ),
      ),
    );
  }
}
