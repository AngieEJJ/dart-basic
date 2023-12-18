class Bank {
  String name;
  String address;
  String phone;

//<editor-fold desc="Data Methods">
  Bank({
    required this.name,
    required this.address,
    required this.phone,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'address': address,
      'phone': phone,
    };
  }

  Bank.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        address = json['address'],
        phone = json['phOne'];

}
