import 'package:flutter/material.dart';
import 'package:counter_7/pages/Drawer.dart';
import 'package:counter_7/pages/Budget.dart';

// merupakan halaman form budget
class FormBudget extends StatefulWidget {
  const FormBudget({super.key});

  @override
  State<FormBudget> createState() => _FormBudgetState();
}

// merupakan halaman dengan state form budget page
class _FormBudgetState extends State<FormBudget> {
  // inisiasi variabel form
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  int? _nominal = 0;
  String? _jenis;
  DateTime? _dateTime;
  final _coJudul = TextEditingController();
  final _coNominal = TextEditingController();

  // method yang digunakan untuk clearing state dari form
  void clearInput() {
    _coJudul.clear();
    _coNominal.clear();

    setState(() {
      _jenis = null;
      _dateTime = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // nama dari app bar adalah form budget
        title: const Text('Form Budget'),
      ),
      // menambahkan Drawer untuk navigasi antarhalaman
      drawer: buildDrawer(context),
      // menambahkan form
      body: Form(
          key: _formKey,
          child: Container(
              // menambahkan padding sebesar 25 ke setiap sisi
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Padding(
                      // menambahkan padding sebesar 10 pixel ke setiap sisi
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                          // alignment yang digunakan adalah center
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // ====================================== JUDUL ===================================
                            // menambahkan form field judul
                            TextFormField(
                              // menambahkan decoration saat form belum diisi
                              decoration: InputDecoration(
                                hintText: "Contoh: Nasi Wibu",
                                labelText: "Judul",
                                // menambahkan rounded border sebesar 10 pixel
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              controller: _coJudul,
                              // mengubah state isi dari judul sesuai value ketika ada perubahan
                              onChanged: (String? value) {
                                setState(() {
                                  _judul = value!;
                                });
                              },
                              // ketika onSaved maka akan mengubah state isi dari judul sesuai value
                              onSaved: (String? value) {
                                setState(() {
                                  _judul = value!;
                                });
                              },
                              // melakukan validasi form untuk kasus judul kosong
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Judul tidak boleh kosong!';
                                }
                                return null;
                              },
                            ),
                            // menambahkan jarak setinggi 15 pixel
                            const SizedBox(
                              height: 15, 
                            ),
                            // ====================================== NOMINAL ===================================
                            // menambahkan form field nominal
                            TextFormField(
                              // menambahkan decoration saat form belum diisi
                              controller: _coNominal,
                              decoration: InputDecoration(
                                hintText: "Contoh: 17150",
                                labelText: "Nominal",
                                // menambahkan rounded border sebesar 5 pixel
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              // mengubah state isi dari nominal sesuai value ketika ada perubahan
                              onChanged: (String? value) {
                                setState(() {
                                  _nominal = int.tryParse(value!);
                                });
                              },
                              // ketika onSaved maka akan mengubah state isi dari nominal sesuai value
                              onSaved: (String? value) {
                                setState(() {
                                  _nominal = int.parse(value!);
                                });
                              },
                              // melakukan validasi form untuk kasus nominal kosong
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Nominal tidak boleh kosong!';
                                } else if (_nominal == null) {
                                  return 'Nominal harus angka!';
                                }
                                return null;
                              },
                            )
                          ])),
                  // menambahkan jarak setinggi 15 pixel
                  const SizedBox(
                    height: 15, 
                  ),

                  // ====================================== DROPDOWN ===================================
                  // menambahkan form field jenis pengeluaran/pemasukan
                  SizedBox(
                    width: 120,
                    child: DropdownButtonFormField(
                      // menambahkan decoration form
                      decoration: const InputDecoration(
                        // isCollapsed: true,
                        enabledBorder: InputBorder.none,
                      ),
                      // menambahkan hint text
                      hint: const Text("Pilih Jenis"),
                      value: _jenis,
                      // menambahkan validator pilih jenis di awal diset null
                      validator: (value) =>
                          value == null ? "Pilih Jenis" : null,
                      // menambahkan dropdown menu item 'Pengeluaran' dan 'Pemasukan
                      items: const <DropdownMenuItem<String>>[
                        DropdownMenuItem<String>(
                          value: 'Pengeluaran',
                          child: Text('Pengeluaran'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Pemasukan',
                          child: Text('Pemasukan'),
                        ),
                      ],
                      // mengubah state isi dari jenis sesuai value ketika ada perubahan
                      onChanged: (String? value) {
                        setState(() {
                          _jenis = value!;
                        });
                      },
                    ),
                  ),
                  // menambahkan jarak setinggi 15 pixel
                  const SizedBox(
                    height: 15, 
                  ),

                  // ====================================== DATE PICKER (BONUS) ===================================
                  // menambahkan form field tanggal
                  TextButton(
                    // menambahkan format penanggalan awal
                    child: Text(_dateTime == null
                        ? "Pick a date"
                        : "${_dateTime!.day}/${_dateTime!.month}/${_dateTime!.year}"),
                    // ketika onPressed maka akan menampilkan date picker
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2099),
                      ).then((date) {
                        // melakukan set state sesuai tanggal dipilih
                        setState(() {
                          _dateTime = date;
                        });
                      });
                    },
                  ),

                  // Menambahkan Spacer 
                  const Spacer(),
                  // ====================================== BUTTON ===================================
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ),
                      onPressed: () {
                        // melakukan validasi form saat button onPressed
                        if (_formKey.currentState!.validate() &&
                            _dateTime != null) {
                          ListBudget.data.add(
                              Budget(_judul, _nominal, _jenis!, _dateTime!));
                          clearInput();
                        } else {
                          // jika tidak tervalidasi do nothing
                        }
                      },
                      // button
                      child: const Text(
                        "Simpan",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ))),
    );
  }
}