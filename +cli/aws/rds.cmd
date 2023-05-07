echo https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-clusters.html

aws rds describe-db-clusters --db-cluster-identifier mydbcluster



echo https://docs.aws.amazon.com/cli/latest/reference/rds/describe-events.html
aws rds describe-events --source-identifier mydbcluster --source-type db-cluster
aws rds describe-events --source-identifier mydbcluster --source-type db-instance