import 'dart:io';

void main() {
  // Obtém um mapa das variáveis de ambiente do sistema operacional
  final envVarMap = Platform.environment;

  // Verifica se a variável 'PWD' existe e imprime seu valor
  if (envVarMap.containsKey('PWD')) {
    print('PWD = ${envVarMap['PWD']}');
  } else {
    print('PWD variável de ambiente não encontrada.');
  }

  // Verifica se a variável 'LOGNAME' existe e imprime seu valor
  if (envVarMap.containsKey('LOGNAME')) {
    print('LOGNAME = ${envVarMap['LOGNAME']}');
  } else {
    print('LOGNAME variável de ambiente não encontrada.');
  }

  // Verifica se a variável 'PATH' existe e imprime seu valor
  if (envVarMap.containsKey('PATH')) {
    print('PATH = ${envVarMap['PATH']}');
  } else {
    print('PATH variável de ambiente não encontrada.');
  }
}
