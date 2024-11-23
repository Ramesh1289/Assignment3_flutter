import 'package:use_case_bloc/model/ElectronicsModel.dart';
import 'package:flutter/material.dart';
import 'package:use_case_bloc/model/ElectronicsModel.dart';

class ProductItem extends StatelessWidget {
  final Electronicsmodel productmodel;
  const ProductItem({super.key,required this.productmodel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 220,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: NetworkImage(productmodel.imageurl!),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(productmodel.name!,style:const  TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
          ),
          const SizedBox(height: 10),
          Text(productmodel.description!,style:const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Text("\$"+productmodel.price.toString(),style:const  TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
              ),
              const Row(
                children:[
                  Icon(Icons.shopping_bag_outlined),
                  //Spacer(flex: 1,),
                  Icon(Icons.favorite_border),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
