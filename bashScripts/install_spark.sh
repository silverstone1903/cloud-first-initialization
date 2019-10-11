# spark install

wget http://ftp.itu.edu.tr/Mirror/Apache/spark/spark-2.3.2/spark-2.3.2-bin-hadoop2.7.tgz

tar xvzf spark-2.3.2-bin-hadoop2.7.tgz

mv spark-2.3.2-bin-hadoop2.7 spark


sudo add-apt-repository ppa:webupd8team/java

sudo apt update

sudo apt install oracle-java8-installer

java -version

export SPARK_HOME=$HOME/spark
export PATH=$SPARK_HOME/bin:$PATH

export PYSPARK_DRIVER_PYTHON=jupyter
export PYSPARK_DRIVER_PYTHON_OPTS='notebook'

sudo -H pip install findspark

cd spark
./bin/run-example SparkPi 100
