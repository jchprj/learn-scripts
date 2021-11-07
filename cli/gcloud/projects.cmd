echo https://www.reddit.com/r/googlecloud/comments/mywy4l/how_to_find_all_the_gcp_projects_creation_time/
echo gcloud projects list --filter "parent.type=organization parent.id=123456" --format="table(projectId,createTime)"
gcloud projects list --format="table(projectId,createTime)"


echo https://stackoverflow.com/questions/39105643/find-creation-date-of-google-app-engine-project
gcloud projects describe <YOUR PROJECT ID>