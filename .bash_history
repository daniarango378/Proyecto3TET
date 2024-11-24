dir
nano read_db_spark.py
spark-submit --jars /home/hadoop/mysql-connector-java-8.0.33.jar read_db_spark.py
dir

dir
spark-submit --jars /home/hadoop/mysql-connector-j-9.1.0.jar read_db_spark.py
sudo nano read_db_spark.py
spark-submit --jars /home/hadoop/mysql-connector-j-9.1.0.jar read_db_spark.py
sudo nano etl_covid.py
dir
sudo nano etl_covid.py
spark-submit --jars /home/hadoop/mysql-connector-java-8.0.xx.jar etl_covid.py
dir
spark-submit --jars /home/hadoop/mysql-connector-j-9.1.0.jar etl_covid.py
sudo nano etl_covid.py
spark-submit --jars /home/hadoop/mysql-connector-j-9.1.0.jar etl_covid.py
sudo nano etl_covid.py
spark-submit --jars /home/hadoop/mysql-connector-j-9.1.0.jar etl_covid.py
[hadoop@ip-172-31-84-208 ~]$ 
[hadoop@ip-172-31-84-208 ~]$ sudo nano etl_covid.py
[hadoop@ip-172-31-84-208 ~]$ spark-submit --jars /home/hadoop/mysql-connector-j-9.1.0.jar etl_covid.py
24/11/24 07:49:05 INFO SparkContext: Running Spark version 3.4.1-amzn-1
24/11/24 07:49:05 INFO ResourceUtils: ==============================================================
24/11/24 07:49:05 INFO ResourceUtils: No custom resources configured for spark.driver.
24/11/24 07:49:05 INFO ResourceUtils: ==============================================================
24/11/24 07:49:05 INFO SparkContext: Submitted application: ETL_COVID
24/11/24 07:49:05 INFO ResourceProfile: Default ResourceProfile created, executor resources: Map(cores -> name: cores, amount: 4, script: , vendor: , memory -> name: memory, amount: 9486, script: , vendor: , offHeap -> name: offHeap, amount: 0, script: , vendor: ), task resources: Map(cpus -> name: cpus, amount: 1.0)
24/11/24 07:49:05 INFO ResourceProfile: Limiting resource is cpus at 4 tasks per executor
24/11/24 07:49:05 INFO ResourceProfileManager: Added ResourceProfile id: 0
24/11/24 07:49:05 INFO SecurityManager: Changing view acls to: hadoop
24/11/24 07:49:05 INFO SecurityManager: Changing modify acls to: hadoop
24/11/24 07:49:05 INFO SecurityManager: Changing view acls groups to: 
24/11/24 07:49:05 INFO SecurityManager: Changing modify acls groups to: 
24/11/24 07:49:05 INFO SecurityManager: SecurityManager: authentication disabled; ui acls disabled; users with view permissions: hadoop; groups with view permissions: EMPTY; users with modify permissions: hadoop; groups with modify permissions: EMPTY
24/11/24 07:49:05 INFO Utils: Successfully started service 'sparkDriver' on port 41457.
24/11/24 07:49:05 INFO SparkEnv: Registering MapOutputTracker
24/11/24 07:49:05 INFO SparkEnv: Registering BlockManagerMaster
24/11/24 07:49:05 INFO BlockManagerMasterEndpoint: Using org.apache.spark.storage.DefaultTopologyMapper for getting topology information
24/11/24 07:49:05 INFO BlockManagerMasterEndpoint: BlockManagerMasterEndpoint up
24/11/24 07:49:05 INFO SparkEnv: Registering BlockManagerMasterHeartbeat
24/11/24 07:49:05 INFO DiskBlockManager: Created local directory at /mnt/tmp/blockmgr-4fb28a29-7b0b-4533-a2a2-92d21e5bfd1a
24/11/24 07:49:05 INFO MemoryStore: MemoryStore started with capacity 912.3 MiB
24/11/24 07:49:05 INFO SparkEnv: Registering OutputCommitCoordinator
24/11/24 07:49:05 INFO SubResultCacheManager: Sub-result caches are disabled.
24/11/24 07:49:06 INFO JettyUtils: Start Jetty 0.0.0.0:4040 for SparkUI
24/11/24 07:49:06 INFO Utils: Successfully started service 'SparkUI' on port 4040.
24/11/24 07:49:06 INFO SparkContext: Added JAR /home/hadoop/mysql-connector-j-9.1.0.jar at spark://ip-172-31-84-208.ec2.internal:41457/jars/mysql-connector-j-9.1.0.jar with timestamp 1732434545291
24/11/24 07:49:06 INFO Utils: Using 50 preallocated executors (minExecutors: 0). Set spark.dynamicAllocation.preallocateExecutors to `false` disable executor preallocation.
24/11/24 07:49:06 INFO DefaultNoHARMFailoverProxyProvider: Connecting to ResourceManager at ip-172-31-84-208.ec2.internal/172.31.84.208:8032
24/11/24 07:49:06 INFO Configuration: resource-types.xml not found
24/11/24 07:49:06 INFO ResourceUtils: Unable to find 'resource-types.xml'.
24/11/24 07:49:07 INFO Client: Verifying our application has not requested more than the maximum memory capability of the cluster (12288 MB per container)
24/11/24 07:49:07 INFO Client: Will allocate AM container, with 896 MB memory including 384 MB overhead
24/11/24 07:49:07 INFO Client: Setting up container launch context for our AM
24/11/24 07:49:07 INFO Client: Setting up the launch environment for our AM container
24/11/24 07:49:07 INFO Client: Preparing resources for our AM container
24/11/24 07:49:07 WARN Client: Neither spark.yarn.jars nor spark.yarn.archive is set, falling back to uploading libraries under SPARK_HOME.
24/11/24 07:49:09 INFO Client: Uploading resource file:/mnt/tmp/spark-2a0d21c8-67b4-4fa3-8119-abe2bdf74b9d/__spark_libs__2359238724270971638.zip -> hdfs://ip-172-31-84-208.ec2.internal:8020/user/hadoop/.sparkStaging/application_1732429252608_0008/__spark_libs__2359238724270971638.zip
24/11/24 07:49:10 INFO Client: Uploading resource file:/home/hadoop/mysql-connector-j-9.1.0.jar -> hdfs://ip-172-31-84-208.ec2.internal:8020/user/hadoop/.sparkStaging/application_1732429252608_0008/mysql-connector-j-9.1.0.jar
24/11/24 07:49:10 INFO Client: Uploading resource file:/etc/spark/conf.dist/hive-site.xml -> hdfs://ip-172-31-84-208.ec2.internal:8020/user/hadoop/.sparkStaging/application_1732429252608_0008/hive-site.xml
24/11/24 07:49:10 INFO Client: Uploading resource file:/etc/hudi/conf.dist/hudi-defaults.conf -> hdfs://ip-172-31-84-208.ec2.internal:8020/user/hadoop/.sparkStaging/application_1732429252608_0008/hudi-defaults.conf
24/11/24 07:49:10 INFO Client: Uploading resource file:/usr/lib/spark/python/lib/pyspark.zip -> hdfs://ip-172-31-84-208.ec2.internal:8020/user/hadoop/.sparkStaging/application_1732429252608_0008/pyspark.zip
24/11/24 07:49:10 INFO Client: Uploading resource file:/usr/lib/spark/python/lib/py4j-0.10.9.7-src.zip -> hdfs://ip-172-31-84-208.ec2.internal:8020/user/hadoop/.sparkStaging/application_1732429252608_0008/py4j-0.10.9.7-src.zip
24/11/24 07:49:11 INFO Client: Uploading resource file:/mnt/tmp/spark-2a0d21c8-67b4-4fa3-8119-abe2bdf74b9d/__spark_conf__7548148260932385171.zip -> hdfs://ip-172-31-84-208.ec2.internal:8020/user/hadoop/.sparkStaging/application_1732429252608_0008/__spark_conf__.zip
24/11/24 07:49:11 INFO SecurityManager: Changing view acls to: hadoop
24/11/24 07:49:11 INFO SecurityManager: Changing modify acls to: hadoop
24/11/24 07:49:11 INFO SecurityManager: Changing view acls groups to: 
24/11/24 07:49:11 INFO SecurityManager: Changing modify acls groups to: 
24/11/24 07:49:11 INFO SecurityManager: SecurityManager: authentication disabled; ui acls disabled; users with view permissions: hadoop; groups with view permissions: EMPTY; users with modify permissions: hadoop; groups with modify permissions: EMPTY
24/11/24 07:49:11 INFO Client: Submitting application application_1732429252608_0008 to ResourceManager
24/11/24 07:49:11 INFO YarnClientImpl: Submitted application application_1732429252608_0008
24/11/24 07:49:12 INFO Client: Application report for application_1732429252608_0008 (state: ACCEPTED)
24/11/24 07:49:12 INFO Client: 
         client token: N/A
         diagnostics: AM container is launched, waiting for AM container to Register with RM
         ApplicationMaster host: N/A
         ApplicationMaster RPC port: -1
         queue: default
         start time: 1732434551536
         final status: UNDEFINED
         tracking URL: http://ip-172-31-84-208.ec2.internal:20888/proxy/application_1732429252608_0008/
         user: hadoop
24/11/24 07:49:13 INFO Client: Application report for application_1732429252608_0008 (state: ACCEPTED)
24/11/24 07:49:14 INFO Client: Application report for application_1732429252608_0008 (state: ACCEPTED)
24/11/24 07:49:15 INFO Client: Application report for application_1732429252608_0008 (state: ACCEPTED)
24/11/24 07:49:16 INFO Client: Application report for application_1732429252608_0008 (state: ACCEPTED)
24/11/24 07:49:16 INFO YarnClientSchedulerBackend: Add WebUI Filter. org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter, Map(PROXY_HOSTS -> ip-172-31-84-208.ec2.internal, PROXY_URI_BASES -> http://ip-172-31-84-208.ec2.internal:20888/proxy/application_1732429252608_0008), /proxy/application_1732429252608_0008
24/11/24 07:49:17 INFO YarnSchedulerBackend$YarnSchedulerEndpoint: ApplicationMaster registered as NettyRpcEndpointRef(spark-client://YarnAM)
24/11/24 07:49:17 INFO Client: Application report for application_1732429252608_0008 (state: RUNNING)
24/11/24 07:49:17 INFO Client: 
         client token: N/A
         diagnostics: N/A
         ApplicationMaster host: 172.31.80.66
         ApplicationMaster RPC port: -1
         queue: default
         start time: 1732434551536
         final status: UNDEFINED
         tracking URL: http://ip-172-31-84-208.ec2.internal:20888/proxy/application_1732429252608_0008/
         user: hadoop
24/11/24 07:49:17 INFO YarnClientSchedulerBackend: Application application_1732429252608_0008 has started running.
24/11/24 07:49:17 INFO Utils: Successfully started service 'org.apache.spark.network.netty.NettyBlockTransferService' on port 39259.
24/11/24 07:49:17 INFO NettyBlockTransferService: Server created on ip-172-31-84-208.ec2.internal:39259
24/11/24 07:49:17 INFO BlockManager: Using org.apache.spark.storage.RandomBlockReplicationPolicy for block replication policy
24/11/24 07:49:17 INFO BlockManager: external shuffle service port = 7337
24/11/24 07:49:17 INFO BlockManagerMaster: Registering BlockManager BlockManagerId(driver, ip-172-31-84-208.ec2.internal, 39259, None)
24/11/24 07:49:17 INFO BlockManagerMasterEndpoint: Registering block manager ip-172-31-84-208.ec2.internal:39259 with 912.3 MiB RAM, BlockManagerId(driver, ip-172-31-84-208.ec2.internal, 39259, None)
24/11/24 07:49:17 INFO BlockManagerMaster: Registered BlockManager BlockManagerId(driver, ip-172-31-84-208.ec2.internal, 39259, None)
24/11/24 07:49:17 INFO BlockManager: Initialized BlockManager: BlockManagerId(driver, ip-172-31-84-208.ec2.internal, 39259, None)
24/11/24 07:49:17 INFO SingleEventLogFileWriter: Logging events to hdfs:/var/log/spark/apps/application_1732429252608_0008.inprogress
24/11/24 07:49:17 INFO Utils: Using 50 preallocated executors (minExecutors: 0). Set spark.dynamicAllocation.preallocateExecutors to `false` disable executor preallocation.
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /jobs: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /jobs/json: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /jobs/job: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /jobs/job/json: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /stages: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /stages/json: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /stages/stage: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /stages/stage/json: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /stages/pool: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /stages/pool/json: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /storage: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /storage/json: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /storage/rdd: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /storage/rdd/json: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /environment: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /environment/json: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /executors: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /executors/json: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /executors/threadDump: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /executors/threadDump/json: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /static: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /api: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /jobs/job/kill: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /stages/stage/kill: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /metrics/json: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO YarnClientSchedulerBackend: SchedulerBackend is ready for scheduling beginning after reached minRegisteredResourcesRatio: 0.0
24/11/24 07:49:18 INFO SharedState: Setting hive.metastore.warehouse.dir ('null') to the value of spark.sql.warehouse.dir.
24/11/24 07:49:18 INFO SharedState: Warehouse path is 'hdfs://ip-172-31-84-208.ec2.internal:8020/user/spark/warehouse'.
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /SQL: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /SQL/json: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /SQL/execution: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /SQL/execution/json: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:18 INFO ServerInfo: Adding filter to /static/sql: org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter
24/11/24 07:49:20 INFO YarnSchedulerBackend$YarnDriverEndpoint: Registered executor NettyRpcEndpointRef(spark-client://Executor) (172.31.80.66:51636) with ID 2,  ResourceProfileId 0
24/11/24 07:49:20 INFO ExecutorMonitor: New executor 2 has registered (new total is 1)
24/11/24 07:49:20 INFO ClientConfigurationFactory: Set initial getObject socket timeout to 2000 ms.
24/11/24 07:49:20 INFO BlockManagerMasterEndpoint: Registering block manager ip-172-31-80-66.ec2.internal:44449 with 4.8 GiB RAM, BlockManagerId(2, ip-172-31-80-66.ec2.internal, 44449, None)
24/11/24 07:49:22 INFO InMemoryFileIndex: It took 71 ms to list leaf files for 1 paths.
24/11/24 07:49:22 INFO InMemoryFileIndex: It took 37 ms to list leaf files for 2 paths.
24/11/24 07:49:22 INFO YarnSchedulerBackend$YarnDriverEndpoint: Registered executor NettyRpcEndpointRef(spark-client://Executor) (172.31.90.72:47120) with ID 1,  ResourceProfileId 0
24/11/24 07:49:22 INFO ExecutorMonitor: New executor 1 has registered (new total is 2)
24/11/24 07:49:22 INFO BlockManagerMasterEndpoint: Registering block manager ip-172-31-90-72.ec2.internal:35343 with 4.8 GiB RAM, BlockManagerId(1, ip-172-31-90-72.ec2.internal, 35343, None)
24/11/24 07:49:25 INFO FileSourceStrategy: Pushed Filters: 
24/11/24 07:49:25 INFO FileSourceStrategy: Post-Scan Filters: (length(trim(value#0, None)) > 0)
24/11/24 07:49:26 INFO CodeGenerator: Code generated in 227.116235 ms
24/11/24 07:49:26 INFO MemoryStore: Block broadcast_0 stored as values in memory (estimated size 427.4 KiB, free 911.9 MiB)
24/11/24 07:49:26 INFO MemoryStore: Block broadcast_0_piece0 stored as bytes in memory (estimated size 43.6 KiB, free 911.8 MiB)
24/11/24 07:49:26 INFO BlockManagerInfo: Added broadcast_0_piece0 in memory on ip-172-31-84-208.ec2.internal:39259 (size: 43.6 KiB, free: 912.3 MiB)
24/11/24 07:49:26 INFO SparkContext: Created broadcast 0 from csv at NativeMethodAccessorImpl.java:0
24/11/24 07:49:26 INFO GPLNativeCodeLoader: Loaded native gpl library
24/11/24 07:49:26 INFO LzoCodec: Successfully loaded & initialized native-lzo library [hadoop-lzo rev 049362b7cf53ff5f739d6b1532457f2c6cd495e8]
24/11/24 07:49:26 INFO FileSourceScanExec: Planning scan with bin packing, max size: 4194304 bytes, open cost is considered as scanning 4194304 bytes, number of split files: 6, prefetch: false
24/11/24 07:49:26 INFO FileSourceScanExec: relation: None, fileSplitsInPartitionHistogram: Vector((1 fileSplits,6))
24/11/24 07:49:26 INFO SparkContext: Starting job: csv at NativeMethodAccessorImpl.java:0
24/11/24 07:49:26 INFO DAGScheduler: Got job 0 (csv at NativeMethodAccessorImpl.java:0) with 1 output partitions
24/11/24 07:49:26 INFO DAGScheduler: Final stage: ResultStage 0 (csv at NativeMethodAccessorImpl.java:0)
24/11/24 07:49:26 INFO DAGScheduler: Parents of final stage: List()
24/11/24 07:49:26 INFO DAGScheduler: Missing parents: List()
24/11/24 07:49:26 INFO DAGScheduler: Submitting ResultStage 0 (MapPartitionsRDD[3] at csv at NativeMethodAccessorImpl.java:0), which has no missing parents
24/11/24 07:49:26 INFO MemoryStore: Block broadcast_1 stored as values in memory (estimated size 15.3 KiB, free 911.8 MiB)
24/11/24 07:49:26 INFO MemoryStore: Block broadcast_1_piece0 stored as bytes in memory (estimated size 7.7 KiB, free 911.8 MiB)
24/11/24 07:49:26 INFO BlockManagerInfo: Added broadcast_1_piece0 in memory on ip-172-31-84-208.ec2.internal:39259 (size: 7.7 KiB, free: 912.2 MiB)
24/11/24 07:49:26 INFO SparkContext: Created broadcast 1 from broadcast at DAGScheduler.scala:1592
24/11/24 07:49:26 INFO DAGScheduler: Submitting 1 missing tasks from ResultStage 0 (MapPartitionsRDD[3] at csv at NativeMethodAccessorImpl.java:0) (first 15 tasks are for partitions Vector(0))
24/11/24 07:49:26 INFO YarnScheduler: Adding task set 0.0 with 1 tasks resource profile 0
24/11/24 07:49:26 INFO TaskSetManager: Starting task 0.0 in stage 0.0 (TID 0) (ip-172-31-90-72.ec2.internal, executor 1, partition 0, RACK_LOCAL, 8102 bytes) 
24/11/24 07:49:27 INFO BlockManagerInfo: Added broadcast_1_piece0 in memory on ip-172-31-90-72.ec2.internal:35343 (size: 7.7 KiB, free: 4.8 GiB)
24/11/24 07:49:28 INFO BlockManagerInfo: Added broadcast_0_piece0 in memory on ip-172-31-90-72.ec2.internal:35343 (size: 43.6 KiB, free: 4.8 GiB)
24/11/24 07:49:29 INFO TaskSetManager: Finished task 0.0 in stage 0.0 (TID 0) in 2813 ms on ip-172-31-90-72.ec2.internal (executor 1) (1/1)
24/11/24 07:49:29 INFO YarnScheduler: Removed TaskSet 0.0, whose tasks have all completed, from pool 
24/11/24 07:49:29 INFO DAGScheduler: ResultStage 0 (csv at NativeMethodAccessorImpl.java:0) finished in 3.056 s
24/11/24 07:49:29 INFO DAGScheduler: Job 0 is finished. Cancelling potential speculative or zombie tasks for this job
24/11/24 07:49:29 INFO YarnScheduler: Killing all running tasks in stage 0: Stage finished
24/11/24 07:49:29 INFO DAGScheduler: Job 0 finished: csv at NativeMethodAccessorImpl.java:0, took 3.145908 s
24/11/24 07:49:29 INFO CodeGenerator: Code generated in 37.780088 ms
24/11/24 07:49:29 INFO FileSourceStrategy: Pushed Filters: 
24/11/24 07:49:29 INFO FileSourceStrategy: Post-Scan Filters: 
24/11/24 07:49:29 INFO MemoryStore: Block broadcast_2 stored as values in memory (estimated size 427.4 KiB, free 911.4 MiB)
24/11/24 07:49:29 INFO MemoryStore: Block broadcast_2_piece0 stored as bytes in memory (estimated size 43.6 KiB, free 911.4 MiB)
24/11/24 07:49:29 INFO BlockManagerInfo: Added broadcast_2_piece0 in memory on ip-172-31-84-208.ec2.internal:39259 (size: 43.6 KiB, free: 912.2 MiB)
24/11/24 07:49:29 INFO SparkContext: Created broadcast 2 from csv at NativeMethodAccessorImpl.java:0
24/11/24 07:49:29 INFO FileSourceScanExec: Planning scan with bin packing, max size: 4194304 bytes, open cost is considered as scanning 4194304 bytes, number of split files: 6, prefetch: false
24/11/24 07:49:29 INFO FileSourceScanExec: relation: None, fileSplitsInPartitionHistogram: Vector((1 fileSplits,6))
24/11/24 07:49:29 INFO SparkContext: Starting job: csv at NativeMethodAccessorImpl.java:0
24/11/24 07:49:29 INFO DAGScheduler: Got job 1 (csv at NativeMethodAccessorImpl.java:0) with 6 output partitions
24/11/24 07:49:29 INFO DAGScheduler: Final stage: ResultStage 1 (csv at NativeMethodAccessorImpl.java:0)
24/11/24 07:49:29 INFO DAGScheduler: Parents of final stage: List()
24/11/24 07:49:29 INFO DAGScheduler: Missing parents: List()
24/11/24 07:49:29 INFO DAGScheduler: Submitting ResultStage 1 (MapPartitionsRDD[9] at csv at NativeMethodAccessorImpl.java:0), which has no missing parents
24/11/24 07:49:29 INFO MemoryStore: Block broadcast_3 stored as values in memory (estimated size 33.0 KiB, free 911.3 MiB)
24/11/24 07:49:29 INFO MemoryStore: Block broadcast_3_piece0 stored as bytes in memory (estimated size 15.0 KiB, free 911.3 MiB)
24/11/24 07:49:29 INFO BlockManagerInfo: Added broadcast_3_piece0 in memory on ip-172-31-84-208.ec2.internal:39259 (size: 15.0 KiB, free: 912.2 MiB)
24/11/24 07:49:29 INFO SparkContext: Created broadcast 3 from broadcast at DAGScheduler.scala:1592
24/11/24 07:49:29 INFO DAGScheduler: Submitting 6 missing tasks from ResultStage 1 (MapPartitionsRDD[9] at csv at NativeMethodAccessorImpl.java:0) (first 15 tasks are for partitions Vector(0, 1, 2, 3, 4, 5))
24/11/24 07:49:29 INFO YarnScheduler: Adding task set 1.0 with 6 tasks resource profile 0
24/11/24 07:49:29 INFO TaskSetManager: Starting task 0.0 in stage 1.0 (TID 1) (ip-172-31-80-66.ec2.internal, executor 2, partition 0, RACK_LOCAL, 8102 bytes) 
24/11/24 07:49:29 INFO TaskSetManager: Starting task 1.0 in stage 1.0 (TID 2) (ip-172-31-90-72.ec2.internal, executor 1, partition 1, RACK_LOCAL, 8102 bytes) 
24/11/24 07:49:29 INFO TaskSetManager: Starting task 2.0 in stage 1.0 (TID 3) (ip-172-31-80-66.ec2.internal, executor 2, partition 2, RACK_LOCAL, 8102 bytes) 
24/11/24 07:49:29 INFO TaskSetManager: Starting task 3.0 in stage 1.0 (TID 4) (ip-172-31-90-72.ec2.internal, executor 1, partition 3, RACK_LOCAL, 8102 bytes) 
24/11/24 07:49:29 INFO TaskSetManager: Starting task 4.0 in stage 1.0 (TID 5) (ip-172-31-80-66.ec2.internal, executor 2, partition 4, RACK_LOCAL, 8102 bytes) 
24/11/24 07:49:29 INFO TaskSetManager: Starting task 5.0 in stage 1.0 (TID 6) (ip-172-31-90-72.ec2.internal, executor 1, partition 5, RACK_LOCAL, 8098 bytes) 
24/11/24 07:49:29 INFO BlockManagerInfo: Added broadcast_3_piece0 in memory on ip-172-31-90-72.ec2.internal:35343 (size: 15.0 KiB, free: 4.8 GiB)
24/11/24 07:49:30 INFO BlockManagerInfo: Added broadcast_3_piece0 in memory on ip-172-31-80-66.ec2.internal:44449 (size: 15.0 KiB, free: 4.8 GiB)
24/11/24 07:49:31 INFO BlockManagerInfo: Added broadcast_2_piece0 in memory on ip-172-31-90-72.ec2.internal:35343 (size: 43.6 KiB, free: 4.8 GiB)
24/11/24 07:49:31 INFO TaskSetManager: Finished task 5.0 in stage 1.0 (TID 6) in 1719 ms on ip-172-31-90-72.ec2.internal (executor 1) (1/6)
24/11/24 07:49:31 INFO TaskSetManager: Finished task 3.0 in stage 1.0 (TID 4) in 1989 ms on ip-172-31-90-72.ec2.internal (executor 1) (2/6)
24/11/24 07:49:31 INFO TaskSetManager: Finished task 1.0 in stage 1.0 (TID 2) in 2022 ms on ip-172-31-90-72.ec2.internal (executor 1) (3/6)
24/11/24 07:49:32 INFO BlockManagerInfo: Added broadcast_2_piece0 in memory on ip-172-31-80-66.ec2.internal:44449 (size: 43.6 KiB, free: 4.8 GiB)
24/11/24 07:49:34 INFO TaskSetManager: Finished task 4.0 in stage 1.0 (TID 5) in 4257 ms on ip-172-31-80-66.ec2.internal (executor 2) (4/6)
24/11/24 07:49:34 INFO TaskSetManager: Finished task 2.0 in stage 1.0 (TID 3) in 4499 ms on ip-172-31-80-66.ec2.internal (executor 2) (5/6)
24/11/24 07:49:34 INFO TaskSetManager: Finished task 0.0 in stage 1.0 (TID 1) in 4546 ms on ip-172-31-80-66.ec2.internal (executor 2) (6/6)
24/11/24 07:49:34 INFO YarnScheduler: Removed TaskSet 1.0, whose tasks have all completed, from pool 
24/11/24 07:49:34 INFO DAGScheduler: ResultStage 1 (csv at NativeMethodAccessorImpl.java:0) finished in 4.571 s
24/11/24 07:49:34 INFO DAGScheduler: Job 1 is finished. Cancelling potential speculative or zombie tasks for this job
24/11/24 07:49:34 INFO YarnScheduler: Killing all running tasks in stage 1: Stage finished
24/11/24 07:49:34 INFO DAGScheduler: Job 1 finished: csv at NativeMethodAccessorImpl.java:0, took 4.578168 s
Esquema de los datos crudos:
root
 |-- fecha_reporte_web: string (nullable = true)
 |-- id_caso: integer (nullable = true)
 |-- fecha_notificacion: string (nullable = true)
 |-- codigo_divipola_departamento: integer (nullable = true)
 |-- nombre_departamento: string (nullable = true)
 |-- codigo_divipola_municipio: integer (nullable = true)
 |-- nombre_municipio: string (nullable = true)
 |-- Edad: integer (nullable = true)
 |-- unidad_medida_edad: integer (nullable = true)
 |-- Sexo: string (nullable = true)
 |-- tipo_contagio: string (nullable = true)
 |-- ubicacion_caso: string (nullable = true)
 |-- Estado: string (nullable = true)
 |-- codigo_iso_pais: integer (nullable = true)
 |-- nombre_pais: string (nullable = true)
 |-- Recuperado: string (nullable = true)
 |-- fecha_inicio_sintomas: string (nullable = true)
 |-- fecha_muerte: string (nullable = true)
 |-- fecha_diagnostico: string (nullable = true)
 |-- fecha_recuperacion: string (nullable = true)
 |-- tipo_recuperacion: string (nullable = true)
 |-- pertenencia_etnica: integer (nullable = true)
 |-- nombre_grupo_etnico: string (nullable = true)
24/11/24 07:49:35 INFO FileSourceStrategy: Pushed Filters: 
24/11/24 07:49:35 INFO FileSourceStrategy: Post-Scan Filters: atleastnnonnulls(3, ID de caso#18, Nombre departamento#21, Nombre municipio#23)
24/11/24 07:49:35 INFO ParquetUtils: Using user defined output committer for Parquet: com.amazon.emr.committer.EmrOptimizedSparkSqlParquetOutputCommitter
24/11/24 07:49:35 INFO SQLConfCommitterProvider: Getting user defined output committer class com.amazon.emr.committer.EmrOptimizedSparkSqlParquetOutputCommitter
24/11/24 07:49:35 INFO EmrOptimizedParquetOutputCommitter: EMR Optimized Committer: ENABLED
24/11/24 07:49:35 INFO EmrOptimizedParquetOutputCommitter: Using output committer class org.apache.hadoop.mapreduce.lib.output.FileSystemOptimizedCommitter
24/11/24 07:49:35 INFO FileOutputCommitter: File Output Committer Algorithm version is 2
24/11/24 07:49:35 INFO FileOutputCommitter: FileOutputCommitter skip cleanup _temporary folders under output directory:false, ignore cleanup failures: true
24/11/24 07:49:35 INFO FileOutputCommitter: File Output Committer Algorithm version is 2
24/11/24 07:49:35 INFO FileOutputCommitter: FileOutputCommitter skip cleanup _temporary folders under output directory:false, ignore cleanup failures: true
24/11/24 07:49:35 INFO SQLConfCommitterProvider: Using output committer class com.amazon.emr.committer.EmrOptimizedSparkSqlParquetOutputCommitter
24/11/24 07:49:35 INFO FileSystemOptimizedCommitter: Nothing to setup as successful task attempt outputs are written directly
24/11/24 07:49:35 INFO CodeGenerator: Code generated in 74.834598 ms
24/11/24 07:49:35 INFO MemoryStore: Block broadcast_4 stored as values in memory (estimated size 427.3 KiB, free 910.9 MiB)
24/11/24 07:49:35 INFO MemoryStore: Block broadcast_4_piece0 stored as bytes in memory (estimated size 43.6 KiB, free 910.9 MiB)
24/11/24 07:49:35 INFO BlockManagerInfo: Added broadcast_4_piece0 in memory on ip-172-31-84-208.ec2.internal:39259 (size: 43.6 KiB, free: 912.2 MiB)
24/11/24 07:49:35 INFO SparkContext: Created broadcast 4 from parquet at NativeMethodAccessorImpl.java:0
24/11/24 07:49:35 INFO FileSourceScanExec: Planning scan with bin packing, max size: 4194304 bytes, open cost is considered as scanning 4194304 bytes, number of split files: 6, prefetch: false
24/11/24 07:49:35 INFO FileSourceScanExec: relation: None, fileSplitsInPartitionHistogram: Vector((1 fileSplits,6))
24/11/24 07:49:35 INFO SparkContext: Starting job: parquet at NativeMethodAccessorImpl.java:0
24/11/24 07:49:35 INFO DAGScheduler: Got job 2 (parquet at NativeMethodAccessorImpl.java:0) with 6 output partitions
24/11/24 07:49:35 INFO DAGScheduler: Final stage: ResultStage 2 (parquet at NativeMethodAccessorImpl.java:0)
24/11/24 07:49:35 INFO DAGScheduler: Parents of final stage: List()
24/11/24 07:49:35 INFO DAGScheduler: Missing parents: List()
24/11/24 07:49:35 INFO DAGScheduler: Submitting ResultStage 2 (MapPartitionsRDD[13] at parquet at NativeMethodAccessorImpl.java:0), which has no missing parents
24/11/24 07:49:35 INFO MemoryStore: Block broadcast_5 stored as values in memory (estimated size 276.8 KiB, free 910.6 MiB)
24/11/24 07:49:35 INFO MemoryStore: Block broadcast_5_piece0 stored as bytes in memory (estimated size 103.0 KiB, free 910.5 MiB)
24/11/24 07:49:35 INFO BlockManagerInfo: Added broadcast_5_piece0 in memory on ip-172-31-84-208.ec2.internal:39259 (size: 103.0 KiB, free: 912.0 MiB)
24/11/24 07:49:35 INFO SparkContext: Created broadcast 5 from broadcast at DAGScheduler.scala:1592
24/11/24 07:49:35 INFO DAGScheduler: Submitting 6 missing tasks from ResultStage 2 (MapPartitionsRDD[13] at parquet at NativeMethodAccessorImpl.java:0) (first 15 tasks are for partitions Vector(0, 1, 2, 3, 4, 5))
24/11/24 07:49:35 INFO YarnScheduler: Adding task set 2.0 with 6 tasks resource profile 0
24/11/24 07:49:35 INFO TaskSetManager: Starting task 0.0 in stage 2.0 (TID 7) (ip-172-31-80-66.ec2.internal, executor 2, partition 0, RACK_LOCAL, 8102 bytes) 
24/11/24 07:49:35 INFO TaskSetManager: Starting task 1.0 in stage 2.0 (TID 8) (ip-172-31-90-72.ec2.internal, executor 1, partition 1, RACK_LOCAL, 8102 bytes) 
24/11/24 07:49:35 INFO TaskSetManager: Starting task 2.0 in stage 2.0 (TID 9) (ip-172-31-80-66.ec2.internal, executor 2, partition 2, RACK_LOCAL, 8102 bytes) 
24/11/24 07:49:35 INFO TaskSetManager: Starting task 3.0 in stage 2.0 (TID 10) (ip-172-31-90-72.ec2.internal, executor 1, partition 3, RACK_LOCAL, 8102 bytes) 
24/11/24 07:49:35 INFO TaskSetManager: Starting task 4.0 in stage 2.0 (TID 11) (ip-172-31-80-66.ec2.internal, executor 2, partition 4, RACK_LOCAL, 8102 bytes) 
24/11/24 07:49:35 INFO TaskSetManager: Starting task 5.0 in stage 2.0 (TID 12) (ip-172-31-90-72.ec2.internal, executor 1, partition 5, RACK_LOCAL, 8098 bytes) 
24/11/24 07:49:35 INFO BlockManagerInfo: Added broadcast_5_piece0 in memory on ip-172-31-90-72.ec2.internal:35343 (size: 103.0 KiB, free: 4.8 GiB)
24/11/24 07:49:35 INFO BlockManagerInfo: Added broadcast_5_piece0 in memory on ip-172-31-80-66.ec2.internal:44449 (size: 103.0 KiB, free: 4.8 GiB)
24/11/24 07:49:35 INFO BlockManagerInfo: Added broadcast_4_piece0 in memory on ip-172-31-90-72.ec2.internal:35343 (size: 43.6 KiB, free: 4.8 GiB)
24/11/24 07:49:36 INFO BlockManagerInfo: Added broadcast_4_piece0 in memory on ip-172-31-80-66.ec2.internal:44449 (size: 43.6 KiB, free: 4.8 GiB)
24/11/24 07:49:38 INFO TaskSetManager: Finished task 5.0 in stage 2.0 (TID 12) in 2681 ms on ip-172-31-90-72.ec2.internal (executor 1) (1/6)
24/11/24 07:49:38 INFO TaskSetManager: Finished task 4.0 in stage 2.0 (TID 11) in 2778 ms on ip-172-31-80-66.ec2.internal (executor 2) (2/6)
24/11/24 07:49:38 INFO TaskSetManager: Finished task 0.0 in stage 2.0 (TID 7) in 3180 ms on ip-172-31-80-66.ec2.internal (executor 2) (3/6)
24/11/24 07:49:38 INFO TaskSetManager: Finished task 1.0 in stage 2.0 (TID 8) in 3191 ms on ip-172-31-90-72.ec2.internal (executor 1) (4/6)
24/11/24 07:49:38 INFO TaskSetManager: Finished task 2.0 in stage 2.0 (TID 9) in 3286 ms on ip-172-31-80-66.ec2.internal (executor 2) (5/6)
24/11/24 07:49:38 INFO TaskSetManager: Finished task 3.0 in stage 2.0 (TID 10) in 3324 ms on ip-172-31-90-72.ec2.internal (executor 1) (6/6)
24/11/24 07:49:38 INFO YarnScheduler: Removed TaskSet 2.0, whose tasks have all completed, from pool 
24/11/24 07:49:38 INFO DAGScheduler: ResultStage 2 (parquet at NativeMethodAccessorImpl.java:0) finished in 3.379 s
24/11/24 07:49:38 INFO DAGScheduler: Job 2 is finished. Cancelling potential speculative or zombie tasks for this job
24/11/24 07:49:38 INFO YarnScheduler: Killing all running tasks in stage 2: Stage finished
24/11/24 07:49:38 INFO DAGScheduler: Job 2 finished: parquet at NativeMethodAccessorImpl.java:0, took 3.384415 s
24/11/24 07:49:38 INFO FileFormatWriter: Start to commit write Job bf45be56-d5d8-409e-a931-83fc5d109238.
24/11/24 07:49:38 INFO MultipartUploadOutputStream: close closed:false s3://p3-tet/trusted/_SUCCESS
24/11/24 07:49:39 INFO FileFormatWriter: Write Job bf45be56-d5d8-409e-a931-83fc5d109238 committed. Elapsed time: 177 ms.
24/11/24 07:49:39 INFO FileFormatWriter: Finished processing stats for write job bf45be56-d5d8-409e-a931-83fc5d109238.
Procesamiento completado y datos guardados en la zona trusted.
24/11/24 07:49:39 INFO SparkContext: SparkContext is stopping with exitCode 0.
24/11/24 07:49:39 INFO SparkUI: Stopped Spark web UI at http://ip-172-31-84-208.ec2.internal:4040
24/11/24 07:49:39 INFO YarnClientSchedulerBackend: Interrupting monitor thread
24/11/24 07:49:39 INFO YarnClientSchedulerBackend: Shutting down all executors
24/11/24 07:49:39 INFO YarnSchedulerBackend$YarnDriverEndpoint: Asking each executor to shut down
24/11/24 07:49:39 INFO YarnClientSchedulerBackend: YARN client scheduler backend Stopped
24/11/24 07:49:39 INFO MapOutputTrackerMasterEndpoint: MapOutputTrackerMasterEndpoint stopped!
24/11/24 07:49:39 INFO MemoryStore: MemoryStore cleared
24/11/24 07:49:39 INFO BlockManager: BlockManager stopped
24/11/24 07:49:39 INFO BlockManagerMaster: BlockManagerMaster stopped
24/11/24 07:49:39 INFO OutputCommitCoordinator$OutputCommitCoordinatorEndpoint: OutputCommitCoordinator stopped!
24/11/24 07:49:39 INFO SparkContext: Successfully stopped SparkContext
24/11/24 07:49:39 INFO ShutdownHookManager: Shutdown hook called
24/11/24 07:49:39 INFO ShutdownHookManager: Deleting directory /mnt/tmp/spark-2a0d21c8-67b4-4fa3-8119-abe2bdf74b9d/pyspark-a77cd25b-5daf-4d67-b092-b36f39aa9d76
24/11/24 07:49:39 INFO ShutdownHookManager: Deleting directory /mnt/tmp/spark-f7df096a-6a73-4e8a-a212-6d78bc46c354

aws s3 ls s3://proyecto3-nombreapellido/trusted/clean_data/
aws s3 ls s3://p3-tet/trusted/
nano run_etl.sh
chmod +x run_etl.sh
crontab -e
nano extract_to_raw.py
sudo nano extract_to_raw.py
dir
sudo nano extract_to_raw.py
spark-submit --jars /home/hadoop/mysql-connector-java-8.0.xx.jar extract_to_raw.py
dir
spark-submit --jars /home/hadoop/mysql-connector-j-9.1.0.jar extract_to_raw.py
nano run_extract_to_raw.sh
chmod +x run_extract_to_raw.sh
crontab -e
cat /home/hadoop/extract_to_raw.log
spark-submit --jars /home/hadoop/mysql-connector-java-8.0.xx.jar /home/hadoop/extract_to_raw.py >> /home/hadoop/extract_to_raw.log 2>&1
spark-submit --jars /home/hadoop/mysql-connector-java-8.0.xx.jar /home/hadoop/extract_to_raw.py
/home/hadoop/run_extract_to_raw.sh
crontab -l
crontab -e
tail -f /home/hadoop/extract_to_raw.log
/home/hadoop/run_extract_to_raw.sh
tail -f /home/hadoop/extract_to_raw.log
sudo cat /var/log/cron | grep run_extract_to_raw.sh
/home/hadoop/run_extract_to_raw.sh
nano run_extract_to_raw.sh
dir
nano run_extract_to_raw.sh
chmod +x /home/hadoop/run_extract_to_raw.sh
bash /home/hadoop/run_extract_to_raw.sh
nano run_etl.sh
dir
nano run_etl.sh
crontab -e
crontab -l
dir
chmod +x /home/hadoop/run_extract_to_raw.sh
ls -l /home/hadoop/run_extract_to_raw.sh
ls -l /home/hadoop/extract_to_raw.log
crontab -e
ls -l /home/hadoop/run_upload_to_trusted.sh
dir
ls -l /home/hadoop/run_etl.sh
ls -l /home/hadoop/upload_to_trusted.log
ls -l /home/hadoop/run_etl.log
ls -l /home/hadoop/etl_covid.log
crontab -e
sudo systemctl status crond
nano run_etl.sh
nano run_extract_to_raw.sh
nano run_etl.sh
grep CRON /var/log/cron
crontab -e
grep CRON /var/log/cron
cat /home/hadoop/extract_to_raw.log
clear
nano run_extract_to_raw.sh
dir
crontab -e
aws s3 ls s3://p3-tet/trusted/ --recursive
dir
sudo nano extract_to_raw.py
