import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled27/loginScreen.dart';
import 'form_screen.dart';
import 'package:untitled27/form_screen.dart';
import 'package:untitled27/reuseableScreen.dart';


class finalAssignment extends StatefulWidget {


  @override
  State<finalAssignment> createState() => _finalAssignmentState();
}

class _finalAssignmentState extends State<finalAssignment> {
  final fomKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Fashion'),
        backgroundColor: const Color(0xffdb5fb2),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => formScreen(),));
          }, icon:const Icon(Icons.shopping_bag_outlined)),
          const SizedBox(width: 14),
        // ElevatedButton(onPressed: (){
        //      if(fomKey.currentState!.validate()){
        //       Navigator.push(context, MaterialPageRoute(builder: (context) => formScreen(),));
        //     }
        //   },
        //        child: const Icon(Icons.shopping_bag_outlined))
         ]
      ),
      drawer:  Drawer(
        backgroundColor: Color(0xffdb5fb2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 215,
              decoration: const BoxDecoration(
                color: Colors.purple,
                  //image: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAQEA8PDxAQDxAQDw8PDw0PEA8NDw0NFREWFhURFRUYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKBQUFDgUFDisZExkrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIALcBEwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAAAQIDBAUGBwj/xAA/EAABAwIDBAcFBgQGAwAAAAABAAIDBBEFEiETFDFRBiJBUmGRoRVxgZLRMkJTscHwYnKi0gcWIzOC4TTC8f/EABQBAQAAAAAAAAAAAAAAAAAAAAD/xAAUEQEAAAAAAAAAAAAAAAAAAAAA/9oADAMBAAIRAxEAPwDxpCEIFCeE0KRoQCjepSonoIikTipaWAvcB2ILGGUZe4EhdhRU4aAquGUYaAtJxsECPcmppShAqaU5NKBqRKUiAQhCBUoSICBXBROCnCjeEFeRqoVMK0nBQyMQc5UwqhIyy6GphWXUQoM5Ce9tkxA1CVIgRCEIEQlQgEIQgsoCEoQOCeE0JwQKVG9SEKNwQRtYSbBdJg9DaxIVPCqG5BK6eniAFkEjBYJjile5MQKE4JqUIFKaU5IUDSkKUpCgRCEIFSpEqBQgoQCgicFE4Ky4KFwQVZY1nVMK13BVpo0HO1EKpOFlu1MKy54kFRIlcEiBEIQgEIQgEIQgspQhKEDgpAownhAFWaKlLzdRQx5jZdLhlIAAUFijp8oCtONk42Chc5AhQi6ECpwTAnhAJClSFA0pEpSFAiEJUAlSJUAhCRA4JjwnIQV3BRuCsOCicEFGeNZlTCtx7VSqI0HPTRqsQtaoiWfNGggQgoQCEIQCEIQWglQlCBQpGhMAVmljzEINDC6a+q6OJtgqeHQWCtTyW0QNlkUWZRuem5kE2ZLmUOZGZBMHKQOVZrlIHIJS5NLkzMmFyCQuSZlGXJuZBNmRmUOZKHIJg5LmUIcjMgmzIzKLMkzIJsyM6izIzIJSVG4pA5I5AxxVeVTOUD0FGoas2dq1Zgs6cIM6RqjU8oUCAQhCAQhCC2nBNSgoHtWzhVPwWXSR5iF1GHxWF0Fy+VqpySXT6iVVC5A8uSZlGXJMyCbMi6izIzIJw5PDlXa5SAoJC5MLkhcoy5BIXJuZMLk3MgmbckAAknQAaknkAtij6MVkouIsg5yODPTj6LT6AwMz3IBc8GzjxDQbWC3umldWU5h3VhLDmzubHtjnFsrSLGwOv1Qc3/kms70Huzyf2LMxLBqin1lZ1e+05m/9fFemS1Ej6fKCyKrfT5mQuc27ZSzkewO/JYXRmnrJGTx1zHFlgGGXKXlxvmAtxbw/RB5/mRmUuK02xmli7jyB/Lxb6EKs1yCXMkzKMuSZkEuZKHKHMjMgkconp+ZRuQVpgs+cLRlCozhBnShVircwVVyBqEIQCEIQWrpQpt0dyU9LQOJ4ILmFwcFtOksLBQU9KWhK6NyCKR6iLlKYHJhp3IGFyMydu7kbs5A3MlDku7OSincgVpUl01sBTtiUDXOTSU8wlIYCgiLkmZPMBSbAoOx6ITBslJzcH+V7H8wvQOkWKxUcW3lDi0lrWtYAXOcewXIHYe3sXmnRsa07vvRyOb8HPa79AvT6ylhqoTBUMzsdY2uWlp7CCNQUHGswVmIVDMRp6gsZnjL43MO1jfFbqg30uAOfG+t1oYb0winqnUmyezryxxyEgh7475gW26ugNtT42XQYdh1PSxiGEBjASbElxLjxJJNyVQqIqSOR1Q2OITEG8oa0PPPVB550+YG1r7fejjcffYt/9QudDltdLZ9tUueOAa1v5n9VjiEoG5kZkpiRskCZkFyXZI2aBoenEppjStagjkVKcLRdGqs0KDJmCqSLTmgVOSFBVQpdkjZIIUql2SRB14fGr9LkGqxnxi9mgqYZgOBQbbp2JhlYsbrcil63IoNUzMTduxZZa7kUwNN9dEGsahiTeGquxrANSEtmcwgn3hqTeGqHqcwkuzwQT7w1G8NUALFrdF8G3yqjZa8TevKewsH3fibD4oGQ0FQ9udkErmnUODHWI5jmqU8hY7K9rmOHFr2lrvIr2DFKEOjfFd0YewszRksewEWu0jgQuWwrD47Pw+vqoayW+aBkhy1LY8vZc5r9uhJAvrbgHBOqQmmqC1+lXRKSlvLETJAT2/bivwDuY8fPmeZ2TuSDewjE2seMxsLgi/DMF0/+ZM/VjMsjuBZTxSzEe/IDb4rH6EdF21LhJUXyA9WIEjaW4lx5eHb+frFPTsiYI42NYxosGMaGNHwCDzWSprHO/wDFqNn3jHO55H8uXRYtTW5XEOdUFw4xytbGW/8AHKLL1yWuhbI2F0sbZXAubCXtEjm8w29yNCs7pBgkVVGWvADwDs5bdZh9/LmEHkD5ySTbim7Y8k+qGye+J4s9ji1w8QVCZ2oFM6bt1HIQ46JNkUEu2SbZR7Io2RQPMqaJE3ZFGzKCbMVFJdBktxSOmQU5gVTkBV6WVU5ZUFUgphcpHSKNzroEzIShoQg7eOphCfvkXP0WcMNk5DzS+zZPDzQaG9xc/RLvkXP0WeMOk8Evs9/MeqC9vcfP0VSsY5x6osFDCWRuOfrEcLcLqwcRj5FBTNK9G6vVl2JM5FN9os5FBAaR6N1epziLO6fRJ7RZ3T6IIt0cva/8O8C3Sma6QWllAe8drW/dZ8AfMleedBKNtXVNuP8AThtI8H7x+63z1+HivYXOQWqinZINDYrjelHR+PSqNMaiop7SRCN7oZHljswbmbx1uQDf1W5FiMTpHRsljdIz7cbXtL2fzNBuFoNmzCzteRQcjg2LR19O9+yfHZzopYZm2LXWF2+IsR+oC8praljJJGC5DHvaDxuGuIB9F6x01xXYQPyECSS7I/Akfa+A1Xjpw494IO2wKtkgqaYi+xMOVwtoJA4ak+Id6L1FwuA4cCF4fTtqGNa5hzNM0zrfasDBdt+QEjSPj4r17obie2o6eVw/3IWOLT2EtCDE6QdC4KudtQ98sbwGNeIy20gY67eIJadOIXRm6lr66CO5c4N8C4Fc/W9KqZugff3cEHDf4g4aN82jbDaRtLvF7erfyy+S5g0fjdbvTXF9pJE5utw/y6q501p5IJRTWNwU19RY2sojWnkE1rs7rHRBLvPgk3nwUm76W9U003vQN255JpqDyT929/mmmnHj5oI3zX7E6JoPalMA8fNIIrcLoEkpxzVWSmCnlkcOPwVWWYoIX04UewCV8pURlKCTYBCj2pQg7D2oznJ5BHtVnOTyaqXsmo/Cd5t+qBhFR+E7zZ9UF32q3+Pyapd5fI07O47MzhYfCyzfZ72uaJbRNN+s4g3txsBc/wD1bEdXC0BokjAA0Az/AEQZfsyTw9fog4VJ4eq1TXxfiM/qP6JprYvxG/KfogyThEnNvr9EoweTm3+r6LSNdD+I35T9EhrofxW/I7+1BneyH95vqg4Q7vs9Vob7B+K35H/2pu+w/ij4Mk/tQW+iGLNw+ptK4ZJMoe4fZYNbE/vtXtlPI17Q4EEEAgjUEL53qsMne55y2zE/fj4dnbyC6foZjNdRN2RYZoW/Zj2kRyjk0lwy+7UIOyoP8Po4MROIMqH5S+aQU+Uf7kt8wMl9W9Ym1uWui62Q5QSewLnaTptC9vXiqInW1Y6Ivt/yZcHzXLdOOlc08TqekjkaJOrJM/8A0iGdobmsbnmg5Xpl0qNRVvLAHQxkxx3v1rHrPHvPoAsuPFGkf7fv62igbgk3aB7g5qlGEy9jR8wQaWHYm55ZHGC0tnjc5l75oHAtd5EgrvX4yaenZGz7RHkvMmYTOHBzOq8EZXZhotGd8zm7OpcGEt0fG43LflNuCCfNUSSOkmnMl72jboxoVOaKnlkyueXuaDeMO6mnG+n6q5Q7GFmVmtzcuJe4uNuJ0HLsssyqji6wzOY0/abDEyIO/mJJJ/JBHNK2eQgOsGizdLgjtIQaD+P0CSF1PHq1ryeGY6n81Jv8fJ3k36oI9yHe9AlFGBrmPkE7f4+67yH1TTiDO67yb9UDJqpzSRb466jmmb67kPVJUStkIAGU3td2gI+CTcnd5n9X0QO3x3Ieqaax3IeqTcz3h/V9EGkPMeTkAax3IJpq3eHkjdDz9EhpTz9EDH1BIsbJzY2uHb4hG6Hn6JWQEG4d6IIX0zfFRbu3x81ZqJS3i3434qs6q/h9Sgbu7eR80qTev4fVCD0fO7x9FFU1GzaXuJAHgNTyC5plZKTYPkJPDrOXQUVCcg2x2jjrZ5zhvgLoOarKp0rjI4+DR2NHYAoTw/PwXYmii7kfyM+iNzj7jPkb9EHFlKTw7O3/ALXZ7jF3GfI36JpoY+435G/RBxZ0/T3JAuzNBH3G/K36JNxj7jflb9EHGNKuYTBnlbpcNOc9t7f92XTbkzuN+Vv0WFjMuSQNj6lh1i3q3J9yDoI43E2AHygrfwzC3Wu4n3ZQFwWCzPMmsjz/AMnfVdxTzPDR1ncOZQbwpABb9B9FlYxhzi0lt7j3D9Fm7+8vDc7raji5TySucDdzra/eKDDkY8cS79/BQuaebvNZeKxva42e/j3isl8ruGZ3zFB2FPBwJvqbcSqnSGktkPC7XC9763CyYXus0XPHmeS6nBYNoNetdul9eB8UHLQHLpf96KJrdTrxN12TsPsT1R5BRSUev2R5BBxEwsfVRrr62mAI0HkFUMY5N8gg5pC6IsHIeiaWe5Bz2q1aaXM0Emx4EHnzVst9yqV0GZtxa7dR4+CB5I5hNLm8wsglNcUGuXt5pm0HP8lkFyS6DWMjefqEm0HP1CyigINKQtcLG3mFmTwm+mvu1S3ShxBuEEGzd3T5FKrzakW1vdCDocMfHC4mTVw4doBWp7ci/YXLZr3SIOo9uR/sI9uR8vRcykQdMccj/YTXY6z9hc25NKDozjkfj5Jpx1nM+S5wptkHSjGGmwBcSeGnaqVRgsz3F5I62qhwCnzyAngF1xAQYOEYJK197tXZwYZIW8QqFMQCCuko5mkBBitwJ4cDpe5UrsLfzC23SBU5qgIORxbBXuB1C5t+BSXOoXe1kgIKxnAXQZUGCSdXULqcMoXQta51rAWUVFqQteoI2ZHggy6yrZm7VUlqWciqlTJ1lXqJLBBUxXEI7jQrNOIM5FQYk+7lRKDTOIM5FIcQZyKzUEINE4gzulJvzO6Vn2SILUcAlJLTl8E/2We8q1NLkcCtxjri4QZTsLPeTPZp7y1yEwoMv2ceaT2eea0ymFBnbieaQ0XitAppKDP3HxQr10IFDWpQG8kIQOY0E8FO6mGiEIIpGtHYojbkhCBrrck025IQg0MMxAQg9VXfb/8AChCBzMf1+ytWi6ReCEIL4x3N2KpLjPHTghCDMqMe46Kgcc1+ylQg0MPxvUdVbT8WzNtZCEGLO8X4KpUSC3BCEGFV2J4KtpySoQPbELXSFgshCCO/gm38EIQNKtQ1zmiyEIHnEnck04ieSEIENeeSRtcT2IQgU1Z5KJ1YUqEDd9PJCEIP/9k='),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://img.freepik.com/free-psd/fashion-sales-social-media-banner-social-media-template_237398-228.jpg'),
                  )
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 140,left: 10),
                child: Row(
                  children:  [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage('data:image/png;base64,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'),
                    ),
                   const SizedBox(
                      width: 6,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('',style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400
                        ),),
                        Text('Junior Flutter Developer', style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontSize: 16
                        ),)
                      ],
                    )
                  ],
                ),
              ),
            ),
            // const ListTile(leading: Icon(Icons.notification_add_rounded,color: Colors.white,),
            //   title: Text("Notifications", style:  TextStyle(color: Colors.white),),
            //   subtitle:  Text("Manage your notification here", style:  TextStyle(color: Colors.grey),),
            // ),
            const ListTile(leading:  Icon(Icons.shield_outlined,color: Colors.black,),
              title: Text("100% Satisfaction Guaranteed", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
              //subtitle:  Text("Manage Settings here", style: TextStyle(color: Colors.grey),),
            ),
            const ListTile(leading: Icon(Icons.keyboard_return_outlined,color: Colors.black,),
              title: Text("7 Days Exchange Policy", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
              //subtitle: Text("Change your bio here", style: TextStyle(color: Colors.grey),),
            ),
            const ListTile(leading: Icon(Icons.bus_alert_rounded,color: Colors.black,),
              title: Text("Free Cash On Delivery", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
              //subtitle: Text("Free Cash On Delivery ", style: TextStyle(color: Colors.grey),),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
              // color: Colors.purple,
              image: DecorationImage(
                image: NetworkImage("https://i.pinimg.com/1200x/30/ea/0d/30ea0d3a4cf239f8234153ef7fa0f1ac.jpg"),
                fit: BoxFit.fill
              )
            ),
          ),
          const Text('TOP COLLECTION',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
          const SizedBox(
           // width: 26,
            height: 14
          ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 250,
                    //color: Colors.blue,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://fashionflare.pk/cdn/shop/files/2_bbc88767-20d4-44d1-a9d2-3837fc900254_300x.jpg?v=1702555046  '),
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                  Container(
                      width: 120,
                      height: 200,
                    //  color: Colors.purple,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxJ76E78zzP8x9aNv0rFK5jeL6EzlB2M10MLUtD8TXREX6PBm_-jGeu6YMwA&s')
                      )
                    ),
                  ),
                  Container(
                      width: 120,
                      height: 200,
                      color: Colors.yellow),
                  // Container(
                  //     width: 90,
                  //     height: 200,
                  //     color: Colors.orange)
                ],
              ),
        ],

      ),
    );
  }
}
