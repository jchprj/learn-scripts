echo https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-clusters.html
aws rds describe-db-clusters --db-cluster-identifier mydbcluster


echo https://docs.aws.amazon.com/cli/latest/reference/rds/describe-events.html
aws rds describe-events --source-identifier mydbcluster --source-type db-cluster
aws rds describe-events --source-identifier mydbcluster --source-type db-instance


echo https://awscli.amazonaws.com/v2/documentation/api/latest/reference/rds/describe-pending-maintenance-actions.html
aws rds describe-pending-maintenance-actions


echo https://awscli.amazonaws.com/v2/documentation/api/latest/reference/rds/describe-db-instances.html
aws rds describe-db-instances
aws rds describe-db-instances | jq '.DBInstances[]|.DBInstanceIdentifier,.PreferredMaintenanceWindow,.PendingModifiedValues,.AutoMinorVersionUpgrade'
