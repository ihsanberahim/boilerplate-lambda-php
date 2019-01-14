aws lambda invoke \
    --function-name php-example-hello \
    --region us-east-1 \
    --log-type Tail \
    --query 'LogResult' \
    --output text \
    --payload '{"name": "World"}' hello-output.txt | base64 --decode

aws lambda invoke \
    --function-name php-example-goodbye \
    --region us-east-1 \
    --log-type Tail \
    --query 'LogResult' \
    --output text \
    --payload '{"name": "World"}' goodbye-output.txt | base64 --decode
