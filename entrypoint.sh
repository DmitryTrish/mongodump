BACKUP_NAME="$(date -u +%Y-%m-%d_%H-%M-%S)_UTC.gz"

echo "Backing up ${MONGO_URI}"
mongodump -v --uri ${MONGO_URI} --archive --gzip | aws s3 cp - s3://${AWS_S3_BUCKET_NAME}/${BACKUP_NAME}
echo "Backup up finished"