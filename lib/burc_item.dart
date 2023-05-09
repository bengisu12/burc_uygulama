import 'package:flutter/material.dart';
import 'package:untitled3/burc_detay.dart';
import 'package:untitled3/modeller/burc.dart';
class BurcItem extends StatelessWidget {
  final Burc listenenenburc;
  const BurcItem({required this.listenenenburc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 6,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BurcDetay(secilenBurc: listenenenburc)));

            },
            leading:Image.asset("images/"+listenenenburc.burcKucukResim),
            title: Text(listenenenburc.burcAdi,
            style: myTextStyle.headline5,),
            subtitle: Text(listenenenburc.burcTarihi,
            style: myTextStyle.subtitle1,),
            trailing: Icon(Icons.arrow_forward_ios,color: Colors.pink,),
          ),
        ),
      ),
    );
  }
}
