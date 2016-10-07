#!/usr/bin/env bash
SPARK_CLASSPATH="${SPARK_CLASSPATH}:${SPARK_HOME}/auxlib/*"
SPARK_WORKER_OPTS="${SPARK_WORKER_OPTS} -Dspark.worker.cleanup.enabled=true -Dspark.worker.cleanup.appDataTtl=86400"
SPARK_DAEMON_JAVA_OPTS="${SPARK_DAEMON_JAVA_OPTS} -server -XX:+UseParNewGC -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -XX:+CMSScavengeBeforeRemark -XX:+DisableExplicitGC -Djava.awt.headless=true"
export SPARK_CLASSPATH
export SPARK_WORKER_OPTS
export SPARK_DAEMON_JAVA_OPTS