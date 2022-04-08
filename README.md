# Priority queueing with Amazon SQS

## Overview

This is a solution to implement priority queuing with Amazon SQS service. This project contains [AWS
Cloudformation](https://aws.amazon.com/cloudformation/)
stack to deploy resources in your AWS account.
The provided CloudFormation template creates the following resources:

* Two SQS queues
    * High Priority Queue
    * Low Priority Queue
* An SNS topic
* A consumer application via Lambda function
* IAM role for access control

## Set up

Step 1: Clone to repository locally

`$ git clone https://github.com/aws-samples/sqs-priority-queues`

Step 2: Run the script to create a cloudformation stack and deploy necessary resources

```
$ cd sqs-priority-queues
$ bash create_stack.sh
```

Step 3: Run the script to automatically publish a few messages to your SNS topic. Provide the SNS topic ARN when prompted.

To find the SNS topic ARN, you can go to the [AWS CloudFormation console] (console.aws.amazon.com/cloudformation), select the stack with name 'sqs-priority-queues' and click on the 'Outputs' tab. 

`$ bash publish_messages.sh`

## Testing

Go to the AWS [Lambda console] (https://us-east-1.console.aws.amazon.com/) and look for function with name `priorities-queue-function`. Invoke the function a few times and note the message being processed. You will observe that high priority messages are processed before low priority messages.

## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This library is licensed under the MIT-0 License. See the LICENSE file.
