import 'package:apiintegration_sample1/viewScreens/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class HomePageView extends StatelessWidget{
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(16),
            child: Row(
              children: const [
                Expanded(
                    child: Text("ShopMe..",style: TextStyle(fontFamily: "avenir",fontSize: 32,fontWeight: FontWeight.w900),
                    ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Obx(
                  (){
                    var productController;
                    if (productController.isLoading.value) {
                      return Center(child: CircularProgressIndicator());
                    }else
                      return GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          itemBuilder: (BuildContext context, int index){
                            var productController;
                            return(ProductTile(productController.productList[index]));
                          },
                      );
                  }
              )
          ),
        ],
      ),
    );
  }


}

