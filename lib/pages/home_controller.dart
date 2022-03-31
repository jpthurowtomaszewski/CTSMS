//import 'dart:html';
import 'home_page.dart';
import '../models/veiculo.dart';

class HomeController {
  late List<Veiculo> tabela;

  HomeController() {
    tabela = [
      Veiculo(
        nome: 'Onix',
        placa: 'IGH-4533',
        imagem:
            'https://www.google.com/url?sa=i&url=https%3A%2F%2Fjantes-e-pneus.com%2Fsize%2Fchevrolet%2Fonix%2F2014%2F&psig=AOvVaw1DUx5Y7FlmecRGf0mpxqJy&ust=1648321182599000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCLjA_In54fYCFQAAAAAdAAAAABAD',
      ),
      Veiculo(
        nome: 'Spin',
        placa: 'ORG-7411',
        imagem:
            'https://www.google.com/imgres?imgurl=https%3A%2F%2Fw7.pngwing.com%2Fpngs%2F419%2F362%2Fpng-transparent-chevrolet-spin-car-minivan-chevrolet-compact-car-van-vehicle-thumbnail.png&imgrefurl=https%3A%2F%2Fwww.pngwing.com%2Fpt%2Fsearch%3Fq%3DChevrolet%2BSpin&tbnid=lOWUgGI804Sw3M&vet=12ahUKEwiPvbGw-eH2AhWtkZUCHVUUAAAQMygXegQIARBs..i&docid=eLVsuq6PexTAlM&w=360&h=203&q=veiculo%20spin%20icone%20web&client=opera-gx&ved=2ahUKEwiPvbGw-eH2AhWtkZUCHVUUAAAQMygXegQIARBs',
      ),
    ];
  }
}
