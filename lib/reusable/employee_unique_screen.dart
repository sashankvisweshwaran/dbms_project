import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'const.dart';
import 'package:flutter/material.dart';

class EmployeeUniqueScreen extends StatefulWidget {
  String name,phoneNumber,dateOfJoin,id,job,address;
  double salary,amountPayable;
  bool mutable;
  EmployeeUniqueScreen(this.name,this.phoneNumber,this.dateOfJoin,this.id,this.job,this.address,this.salary,this.amountPayable,this.mutable);
  @override
  _EmployeeUniqueScreenState createState() => _EmployeeUniqueScreenState(this.name,this.phoneNumber,this.dateOfJoin,this.id,this.job,this.address,this.salary,this.amountPayable,this.mutable);
}

class _EmployeeUniqueScreenState extends State<EmployeeUniqueScreen> {
  String name,phoneNumber,dateOfJoin,id,job,address;
  double salary,amountPayable;
  bool mutable;

  _EmployeeUniqueScreenState(this.name,this.phoneNumber,this.dateOfJoin,this.id,this.job,this.address,this.salary,this.amountPayable,this.mutable);

  Function getCreditSalaryFunction(){
    return (){
      setState(() {
        amountPayable=0;
      });
    };
  }

  String getCreditSalaryButtonText(){
    if(amountPayable==0){
      return "Salary Credited";
    }
    else{
      return 'Credit Salary: $amountPayable';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child:SizedBox(
                height: 60,
              ),
            ),
            Expanded(
              child: Text(
                "Employee Details",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 40
                ),
              )
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15)),
                ),
                child: ListView(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 40, 40, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.drive_file_rename_outline,
                                  size: 40,
                                ),
                                sizedBoxSmallInRow,
                              Text(name,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.perm_identity,
                                  size: 40,
                                ),
                                sizedBoxSmallInRow,
                                Text(id,
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 40,
                                ),
                                sizedBoxSmallInRow,
                                Text(phoneNumber,
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40,20,40,20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.calendar_today_sharp,
                                  size: 40,
                                ),
                                sizedBoxSmallInRow,
                                Text(dateOfJoin,
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.monetization_on,
                                  size: 40,
                                ),
                                sizedBoxSmallInRow,
                                Text("$salary",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.work,
                                  size: 40,
                                ),
                                sizedBoxSmallInRow,
                                Text(job,
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40,20,40,10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_city,
                                  size: 40,
                                ),
                                sizedBoxSmallInRow,
                                Text(address,
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40,20,40,10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0,0,5,0),
                                  child: FlatButton(
                                    color: Colors.blueAccent,
                                    textColor: Colors.white,
                                    child: Text(getCreditSalaryButtonText(),
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                    ),
                                    onPressed: (mutable && amountPayable>0)?getCreditSalaryFunction():null ,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(5,0,0,0),
                                  child: FlatButton(
                                    color: Colors.blueAccent,
                                    textColor: Colors.white,
                                    child: Text("Cancel",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    onPressed: (){
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
