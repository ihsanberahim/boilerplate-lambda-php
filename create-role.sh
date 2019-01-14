aws iam create-role \
    --role-name LambdaPhpExample \
    --path "/service-role/" \
    --assume-role-policy-document file:///tmp/trust-policy.json
