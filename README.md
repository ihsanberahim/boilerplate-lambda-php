# boilerplate-lambda-php
boilerplate to run execute php from lambda

## Optional Prequiesite Steps

### 1. Prepare Instance
prepare instance to compile/upgrade your php version

* AWS > EC2 > Instances > Launch Instance > choose "Amazon Linux AMI XXXX.XX.X (HVM), SSD Volume Type"
* SSH into the instance

### 2. Compile PHP

* Choose your php version from `https://github.com/php/php-src/releases`
* Modify `php-compiler.sh` accordingly (line 12-15)
* Run `$ sudo sh php-compiler.sh`

## Publishing Lambda Steps

### 1. Getting your AWS Credential

* Top Right hand corder > click your account name > click 'My Security Credentials'
* Click 'Access keys' > create and download

### 2. Configure AWS CLI

* `$ sudo pip install --upgrade awscli`
* `$ aws configure` > set `AWSAccessKeyId` and `AWSSecretKey` and `region name` and `output format`

### 3. Create Layers

* `$ cd ./php-example`
* `$ sh create-layers.sh`

### 3. Create Functions
stay working inside the `./php-example`

* `$ sh create-functions.sh`

### 4. Invoke Functions
stay working inside the `./php-example`

* `$ sh invoke-functions.sh`

To see invocation output, open `hello-output.txt` and `goodbye-output.txt`
* `$ cat hello-ouput.txt`
* `$ cat goodbye-output.txt`
