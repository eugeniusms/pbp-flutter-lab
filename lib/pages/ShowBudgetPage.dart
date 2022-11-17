import 'package:flutter/material.dart';
import 'package:counter_7/components/Drawer.dart';
import 'package:counter_7/components/Budget.dart';

// menampilkan budget yang telah ditambahkan
class ShowBudgetPage extends StatefulWidget {
  const ShowBudgetPage({super.key});

  @override
  State<ShowBudgetPage> createState() => _ShowBudgetPageState();
}

// _ShowBudgetPageState is a state of ShowBudgetPage
class _ShowBudgetPageState extends State<ShowBudgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // judul halaman
          title: const Text('Data Budget'),
        ),
        // menambahkan drawer untuk navigasi
        drawer: buildDrawer(context),
        // model body adalah SingleChildScrollView
        body: SingleChildScrollView(
            child: Container(
                // padding 15 10
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                    // menambahkan daftar list budget saat data isNotEmpty
                    children: ListBudget.data.isNotEmpty
                        ? ListBudget.data // mapping data
                            .map((budget) => Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(.15),
                                        blurRadius: 20.0, // soften the shadow
                                        spreadRadius: 0.0, //extend the shadow
                                        offset: const Offset(
                                          1.0, // move to right 10  horizontally
                                          1.0, // move to bottom 10 Vertically
                                        ),
                                      )
                                    ],
                                  ),
                                  // menambahkan card
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      // border rounded 15
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: SizedBox(
                                      height: 100,
                                      child: Container(
                                          // padding 10
                                          padding: const EdgeInsets.all(15.0),
                                          child: Column(
                                            children: [
                                              // menampilkan data bugdet dan menyesuaikan warnanya
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      budget.judul,
                                                      style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 18),
                                                    ),
                                                    Text(
                                                      "${budget.date.day}/${budget.date.month}/${budget.date.year}",
                                                      style: TextStyle(
                                                          // jika pengeluaran maka merah, jika pemasukan maka hijau
                                                          color: budget.jenis ==
                                                                  "Pengeluaran"
                                                              ? Colors.red
                                                              : Colors.green),
                                                    ),
                                                  ]),
                                              // menambahkan spacer
                                              const Spacer(),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(budget.nominal
                                                      .toString()),
                                                  Text(budget.jenis)
                                                ],
                                              )
                                            ],
                                          )),
                                    ),
                                  ),
                                ))
                            .toList()
                        : [ // saat belum ada data yang ditambahkan ke dalam budget
                            Center(
                                // ignore: prefer_const_literals_to_create_immutables
                                child: Column(children: [
                              const Text(
                                "Belum ada data budget yang ditambahkan",
                                style: TextStyle(fontSize: 16),
                              )
                            ]))
                          ]))));
  }
}