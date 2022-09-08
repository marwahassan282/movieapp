import 'package:flutter/material.dart';

showloading(BuildContext context,String text,{bool iscancaliable =true}){
showDialog(
  barrierDismissible:iscancaliable ,

    context:context,builder: (context){
  return AlertDialog(

    content: Row(
      children: [
        CircularProgressIndicator(),
        SizedBox(width: 8,),
        Text(text,style: Theme.of(context).textTheme.subtitle2,)
      ],
    ),
  );
});


}
hideDialog(BuildContext context){
  Navigator.pop(context);
}
showmessage(BuildContext context,String messaage,String actionname,VoidCallback actioncallback,{bool iscancilable=true,
  String? Negativeactionname,VoidCallback?Negativeactioncallback}){
List<Widget> actions=[
  TextButton(onPressed: actioncallback, child: Text(actionname)),
  if(Negativeactionname!=null)
    TextButton(onPressed: Negativeactioncallback, child: Text(Negativeactionname)),
];
  showDialog(
    barrierDismissible:iscancilable ,
      context: context, builder: (context){
    return AlertDialog(

      content: Text(messaage,style: Theme.of(context).textTheme.headline4),
      actions: actions
    );
  });
}