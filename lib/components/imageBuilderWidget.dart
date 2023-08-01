import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';

class ImageBuilderWidget extends StatelessWidget {
  final double height,width;
  final String image;
  const ImageBuilderWidget({Key?key,this.height=200,this.width=200,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.sp),
        border: Border.all(
          color: Colors.black,
        )
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.sp),
        child: Image(
          height: height,
          width: width,
          fit: BoxFit.fill,
          image: NetworkImage(image),
          errorBuilder: (context,exception,stack){
            return SizedBox(
              height: height,
              width: width,
              child: Icon(Icons.error,color: Colors.red,),
            );
          },
          loadingBuilder: (BuildContext context,Widget child,ImageChunkEvent? loading){
            if(loading==null){
              return child;
            }
            return SizedBox(
              height: height,
              width: width,
              child:Center(child: CircularProgressIndicator(
                value: loading.expectedTotalBytes!=null?
                loading.cumulativeBytesLoaded/loading.expectedTotalBytes!:null,
              )),
            );
          },
        ),
      ),
    );
  }
}
