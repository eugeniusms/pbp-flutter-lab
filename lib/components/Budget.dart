// class untuk menampilkan kerangka budget
class Budget {
  String judul = "";
  int? nominal = 0;
  String jenis;
  DateTime date;
  Budget(this.judul, this.nominal, this.jenis, this.date);
}

// menambahkan struktur data untuk menyimpan Budget
class ListBudget {
  static List<Budget> data = [];
}