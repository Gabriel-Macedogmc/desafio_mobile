class Posts {
  String id;
  String autorNome;
  String dataHora;
  String texto;

  Posts({this.id, this.autorNome, this.dataHora, this.texto});

  Posts.fromJson(Map<String, dynamic> json) {
    autorNome = json['AutorNome'];
    dataHora = json['DataHora'];
    texto = json['Texto'];
  }

  toJson(Map<String, dynamic> json) {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['AutorNome'] = this.autorNome;
    data['DataHora'] = this.dataHora;
    data['Texto'] = this.texto;
    return data;
  }
}
