import 'dart:io';

const fileName = 'D:/DevMovel/dcat/bin/writer/quotes.txt';

Future<void> main() async {
  final quotesFile = File(fileName).openWrite(mode: FileMode.append);

  try {
    quotesFile.write("Don't cry because it's over, ");
    quotesFile.writeln('smile because it happened. -Dr. Seuss');
    print('Citação adicionada ao arquivo com sucesso.');
  } catch (e) {
    print('Ocorreu um erro ao adicionar a citação ao arquivo: $e');
  } finally {
    await quotesFile.flush(); 
    await quotesFile.close();
  }
}
