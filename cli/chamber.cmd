echo https://github.com/segmentio/chamber
echo Needed env variables for test: AWS_PROFILE, AWS_REGION
echo Needed credential for test: ~/.aws/credentials


echo Some read commands

chamber list service
chamber find key
chamber history service key
chamber exec <service...> -- <your executable>
chamber read service key
chamber find value --by-value

