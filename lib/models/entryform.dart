import 'package:flutter/material.dart';
import 'item.dart';

class EntryForm extends StatefulWidget {
  final Item item;
  EntryForm(this.item);
  @override
  EntryFormState createState() => EntryFormState(this.item);
}

//class controller
class EntryFormState extends State<EntryForm> {
  Item? item;
  EntryFormState(this.item);
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController stokController = TextEditingController();
  TextEditingController kodeProdukController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //kondisi
    if (item != null) {
      nameController.text = item!.name;
      priceController.text = item!.price.toString();
      stokController.text = item!.stok.toString();
      kodeProdukController.text = item!.kodeProduk;
    }
    //rubah
    return Scaffold(
        appBar: AppBar(
          title: item == null ? Text('Tambah') : Text('Ubah'),
          leading: Icon(Icons.keyboard_arrow_left),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
          child: ListView(
            children: <Widget>[
              // nama
              Padding(
                padding: EdgeInsets.only(top: 25.0, bottom: 25.0),
                child: TextField(
                  controller: nameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Nama Barang',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {
                    //
                  },
                ),
              ),
              // harga
              Padding(
                padding: EdgeInsets.only(top: 25.0, bottom: 25.0),
                child: TextField(
                  controller: priceController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Harga',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {
                    //
                  },
                ),
              ),
              // stock
              Padding(
                padding: EdgeInsets.only(top: 25.0, bottom: 25.0),
                child: TextField(
                  controller: stokController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Stok',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {
                    //
                  },
                ),
              ),
              // kode barang
              Padding(
                padding: EdgeInsets.only(top: 25.0, bottom: 25.0),
                child: TextField(
                  controller: kodeProdukController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Kode Produk',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {
                    //
                  },
                ),
              ),
              // tombol button
              Padding(
                padding: EdgeInsets.only(top: 25.0, bottom: 25.0),
                child: Row(
                  children: <Widget>[
                    // tombol simpan
                    Expanded(
                      child: RaisedButton(
                        color: Theme.of(context).primaryColorDark,
                        textColor: Theme.of(context).primaryColorLight,
                        child: Text(
                          'Save',
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          if (item == null) {
                            // tambah data
                            item = Item(
                              nameController.text,
                              int.parse(priceController.text),
                              int.parse(stokController.text),
                              kodeProdukController.text,
                            );
                          } else {
                            // ubah data
                            item?.name = nameController.text;
                            item?.price = int.parse(priceController.text);
                            item?.stok = int.parse(stokController.text);
                            item?.kodeProduk = kodeProdukController.text;
                          }
                          // kembali ke layar sebelumnya dengan membawa objek item
                          Navigator.pop(context, item);
                        },
                      ),
                    ),
                    Container(
                      width: 5.0,
                    ),
                    // tombol batal
                    Expanded(
                      child: RaisedButton(
                        color: Theme.of(context).primaryColorDark,
                        textColor: Theme.of(context).primaryColorLight,
                        child: Text(
                          'Cancel',
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
