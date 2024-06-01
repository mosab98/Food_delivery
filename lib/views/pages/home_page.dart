import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/models/category_model.dart';
import 'package:food_delivery/models/product_model.dart';
import 'package:food_delivery/utils/app_colors.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? selectedCategoryId;
  late List<ProductModel> filteredProducts;
   //late List<ProductModel> favoriteProduct =favoriteProduct0;
  int favoriteIcon =0;
  var G =Icons.square;
  int? selectId ;
  late List favoriteIdProduct=favoriteIdProduct0 ;
  List idCategory=[];
  @override
  void initState() {
    super.initState();
    filteredProducts = dummyProducts;
    
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/images/home-banner.jpg',
              ),
            ),
            const SizedBox(height: 36),
            SizedBox(
              height: 120,
              child: ListView.builder(
                itemCount: dummyCategories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  final category = dummyCategories[index];

                  return Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                        // idCategory.add(category.id);
                          if(!(idCategory.contains(category.id))){
                              selectedCategoryId = category.id;
                          filteredProducts = dummyProducts
                              .where((product) =>
                                  product.category.id == selectedCategoryId)
                              .toList();

                              idCategory.add(category.id);

                              debugPrint(filteredProducts.toString());

                          }else{
                            filteredProducts = dummyProducts;
                            idCategory.remove(category.id);
                          }
                        
                        });
                      },
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: selectedCategoryId == category.id
                              ? AppColors.primary
                              : AppColors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                category.imgUrl,
                                height: 50,
                                width: 50,
                                color: selectedCategoryId == category.id
                                    ? AppColors.white
                                    : null,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                category.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: selectedCategoryId == category.id
                                      ? AppColors.white
                                      : AppColors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 36),
            GridView.builder(
              itemCount: filteredProducts.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 24,
                crossAxisSpacing: 16,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, index) {
                final product = filteredProducts[index];

                return DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              product.imgUrl,
                              height: 80,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              product.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '\$${product.price}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.primary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: AppColors.grey100,
                            shape: BoxShape.circle,
                          ),
                          child: InkWell(
                            onTap: () {
                              if (favoriteIdProduct.contains(product.id)){
                              setState(() {
                                favoriteIcon = 1;
                              favoriteIdProduct.remove(product.id);
                              favoriteProduct.removeWhere((item) => item.id == product.id);

                               

                              

                              });
                            } else {
                              setState(() {
                                favoriteIcon = 0;
                                favoriteIdProduct.add(product.id);

                                 favoriteProduct = dummyProducts
                              .where((product1) =>
                                  favoriteIdProduct.contains(product1.id))
                              .toList();
                              debugPrint(favoriteProduct.toString());

                              //FzvoritPage(favoriteProduct:favoriteProduct);

                            
                                
                              });

                            }
                            },
                            
                            child:  Padding(
                              padding: const EdgeInsets.all(4.0),
                              child:  favoriteIdProduct.contains(product.id) ?
                              const Icon(Icons.favorite, 
                              size: 15,
                                color: AppColors.primary,) :

                                 const Icon(Icons.favorite_border, 
                                 size: 15,
                                color: AppColors.primary,)
                              
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
