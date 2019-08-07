# Ruby in AWS Lambda with PostgreSQL / Nokogiri

## Usage

### Build and test locally

```
make && make install && make test
```

### Deploy

Before deploying, you will need to create an IAM role for Lambda (it doesn't need any policies), and copy its ARN into the `--role` parameter.

```
make zip && make deploy && make invoke
```
