aws lambda publish-layer-version \
    --layer-name php-example-runtime \
    --zip-file fileb://runtime.zip \
    --region us-east-1

aws lambda publish-layer-version \
    --layer-name php-example-vendor \
    --zip-file fileb://vendor.zip \
    --region us-east-1
