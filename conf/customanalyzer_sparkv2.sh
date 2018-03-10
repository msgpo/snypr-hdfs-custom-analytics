SPARK_KAFKA_VERSION=0.10 spark2-submit \
 --name "HDFS_custom_analyzer-1" \
 --driver-memory 1g \
 --num-executors 10 \
 --executor-memory 1g \
 --driver-cores 1 \
 --executor-cores 1 \
 --conf spark.yarn.driver.memoryOverhead=1024 \
 --conf spark.yarn.executor.memoryOverhead=1024 \
 --jars ./jars/javax.websocket-api-1.1.jar,./jars/impala.jdbc-2.5.5.jar,./jars/httpmime-4.2.5.jar,./jars/jackson-module-afterburner-1.9.4.jar,./jars/lzo-core-1.0.5.jar,./jars/lzo-hadoop-1.0.0.jar,/opt/cloudera/parcels/CDH/lib/hbase/lib/htrace-core-3.2.0-incubating.jar,./jars/noggit-0.6.jar,./jars/snyper-common-1.1.jar,./jars/hadoop-util-1.1.jar,./jars/kafka-client-1.1.jar,./jars/event-parser-1.1.jar,./jars/securonixlib-1.1.jar,./jars/profiler-6.0.1.jar,./jars/hibernate-core-3.3.2.GA.jar,./jars/hibernate-c3p0-3.6.3.Final.jar,./jars/c3p0-0.9.1.2.jar,./jars/quartz-all-1.8.5.jar,./jars/hibernate-commons-annotations-3.3.0.ga.jar,./jars/hibernate-annotations-3.4.0.GA.jar,./jars/dom4j-1.6.1.jar,./jars/jbpm.jar,./jars/persistence-api-1.0.jar,./jars/mysql-connector-java-5.1.25.jar,./jars/javassist-3.4.GA.jar,./jars/freemarker-2.3.8.jar,./jars/solr-solrj-6.6.0.jar,./jars/log4j-api-2.5.jar,./jars/log4j-core-2.5.jar,./jars/kafka-clients-0.9.0.0.jar,./jars/solr6-util-1.1.jar,./jars/javax.json-1.0.4.jar,./jars/jedis-2.8.0.jar,./jars/commons-pool2-2.3.jar,./jars/yauaa-1.3.jar,./jars/commons-collections4-4.1.jar,./jars/snakeyaml-1.5.jar,./jars/httpclient-4.5.2.jar,./jars/hbase-util-1.1.jar,./jars/ehcache-2.9.1.jar,./jars/snypr-core-16-1.0.jar \
 --conf "spark.executor.extraJavaOptions=-XX:+UseConcMarkSweepGC -Dlog4j.configuration=./conf/log4j.properties -Xss1G" \
 --conf "spark.locality.wait=1s" \
 --conf "spark.streaming.blockInterval=1500ms" \
 --conf "spark.shuffle.consolidateFiles=true" \
 --conf "spark.task.maxFailures=1" \
 --conf "spark.speculation=false" \
 --conf "spark.streaming.stopGracefullyOnShutdown=true" \
 --conf "spark.dynamicAllocation.enabled=false" \
 --class com.securonix.customanalyzer.CustomAnalyzerSparkJob \
 --files ./conf/hibernate.cfg.xml,./conf/log4j.properties,./conf/log4j2.xml,./conf/customanalyzer.properties \
 --master yarn \
 --deploy-mode cluster \
snypr-hdfs-custom-analytics-1.1.jar
