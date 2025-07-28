# AWS RDS metrics

## Queries

* Cluster level
  ```
  SEARCH(' ("AWS/RDS")  MetricName="VolumeBytesUsed" AND ((DBClusterIdentifier=cluster-id))', 'Average', 60)
  ```
* Instance level
  ```
  SEARCH(' ("AWS/RDS")  MetricName="FreeableMemory" AND ((DBClusterIdentifier=cluster-id* WRITER) OR (DBClusterIdentifier=cluster-id* READER))', 'Average', 60)
  ```

## [Amazon Aurora metrics - Amazon Aurora](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.AuroraMySQL.Monitoring.Metrics.html)

### Latency mectrics
```
DDLLatency
DMLLatency
ReadLatency
InsertLatency
CommitLatency
DeleteLatency
SelectLatency
UpdateLatency
WriteLatency
```
### Throughput metrics
```
DDLThroughput
DMLThroughput
InsertThroughput
CommitThroughput
DeleteThroughput
NetworkReceiveThroughput
NetworkThroughput
NetworkTransmitThroughput
ReadThroughput
SelectThroughput
UpdateThroughput
WriteThroughput
```

### ReplicaLag metrics
```
AuroraBinlogReplicaLag
AuroraGlobalDBReplicationLag
AuroraReplicaLag
AuroraReplicaLagMaximum
AuroraReplicaLagMinimum
OldestReplicationSlotLag
RDSToAuroraPostgreSQLReplicaLag
ReplicaLag

```

### Some basic metrics
```
ActiveTransactions
CPUUtilization
DatabaseConnections
Deadlocks
EngineUptime
FreeableMemory
Queries
SwapUsage
VolumeBytesUsed
```

### Other metrics
```
AuroraGlobalDBDataTransferBytes
AuroraGlobalDBReplicatedWriteIO
BacktrackChangeRecordsCreationRate
BacktrackChangeRecordsStored
BacktrackWindowActual
BacktrackWindowAlert
BackupRetentionPeriodStorageUsed
BinLogDiskUsage
BlockedTransactions
BufferCacheHitRatio
BurstBalance
CPUCreditBalance
CPUCreditUsage
DiskQueueDepth
FailedSQLServerAgentJobsCount
FreeLocalStorage
FreeStorageSpace
LoginFailures
MaximumUsedTransactionIDs
ReadIOPS
ReplicationSlotDiskUsage
ResultSetCacheHitRatio
ServerlessDatabaseCapacity
SnapshotStorageUsed
TotalBackupStorageBilled
TransactionLogsDiskUsage
TransactionLogsGeneration
VolumeReadIOPs
VolumeWriteIOPs
WriteIOPS
```