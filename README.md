## Projeto de Criação de Stack de Dados com Ferramentas Open Source

# Ferramentas
1) Apache Airflow
2) Apache Spark
3) Postgres

# Estruta de pastas do projeto
Devem haver duas dentro da pasta da pasta raiz:
- dags
  - Arquivos de Dags para o Airflow - esta pasta será VOLUME entre a sua VM/Máquina e o container Airflow
- entrypoint
  - ficará o arquivo entrypoint.sh
 
## Informações Importantes - Como executar
1) Abra a janela do Docker Desktop para inicializar o docker engine.

2) Abra o terminal ou prompt de comando, navegue até a pasta com os arquivos e execute:
docker-compose up -d

3) o comando abaixo pode ser usado para desligar todos os containers:
docker-compose down

4) Se fizer alguma alteração no arquivo yml o comando abaixo pode ser executado para recriar somente a imagem necessária:
docker-compose up --build -d

5) Depois de subir o ambiente alterar no Airflow a conexão "spark_default"
Conn Id: spark_default
Conn Type: Spark
Host: spark://spark-master
Port: 7077
