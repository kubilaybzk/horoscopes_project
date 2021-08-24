class Burc {
  final String _burcadi;
  final String _burcTarih;
  final String _burcDetay;
  final String _burcKucukResim;
  final String _burcBuyukResim;

  get burcAdi => this._burcadi;

  get burcTarihi => this._burcTarih;

  get burcDetayi => this._burcDetay;

  get burcKucukResim => this._burcKucukResim;

  get burcBuyukResim => this._burcBuyukResim;

  Burc(this._burcadi, this._burcTarih, this._burcDetay, this._burcKucukResim,
      this._burcBuyukResim);
}
