aws lambda create-function \
    --function-name php-example-hello \
    --handler hello \
    --zip-file fileb://./hello.zip \
    --runtime provided \
    --role "arn:aws:iam::738646206442:role/service-role/LambdaPhpExample" \
    --region us-east-1 \
    --layers "arn:aws:lambda:us-east-1:738646206442:layer:php-example-runtime:4" \
          "arn:aws:lambda:us-east-1:738646206442:layer:php-example-vendor:4"

aws lambda create-function \
    --function-name php-example-goodbye \
    --handler goodbye \
    --zip-file fileb://./goodbye.zip \
    --runtime provided \
    --role "arn:aws:iam::738646206442:role/service-role/LambdaPhpExample" \
    --region us-east-1 \
    --layers "arn:aws:lambda:us-east-1:738646206442:layer:php-example-runtime:4" \
          "arn:aws:lambda:us-east-1:738646206442:layer:php-example-vendor:4"
