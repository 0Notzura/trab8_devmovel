import 'dart:io';

const fileName = 'D:/DevMovel/dcat/bin/writer/quotes.txt';
const quote = 'That which does not kill us makes us stronger. -Nietzsche';

Future<void> main() async {
  final quotesFile = File(fileName);

  try {
    await quotesFile.writeAsString(quote + '\n', mode: FileMode.append);
    print('Citação adicionada ao arquivo com sucesso.');
  } catch (e) {
    print('Ocorreu um erro ao adicionar a citação ao arquivo: $e');
  }
}
