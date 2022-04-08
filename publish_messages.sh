# get SNS topic ARN
read -p "Enter SNS topic ARN: " topicarn

echo $topicarn

aws sns publish --topic-arn $topicarn --message 'High Priority message 1' --message-attributes '{"priority" : { "DataType":"String", "StringValue":"high"}}'
aws sns publish --topic-arn $topicarn --message 'High Priority message 2' --message-attributes '{"priority" : { "DataType":"String", "StringValue":"high"}}'
aws sns publish --topic-arn $topicarn --message 'Low Priority message 1' --message-attributes '{"priority" : { "DataType":"String", "StringValue":"low"}}'
aws sns publish --topic-arn $topicarn --message 'Low Priority message 2' --message-attributes '{"priority" : { "DataType":"String", "StringValue":"low"}}'
aws sns publish --topic-arn $topicarn --message 'Low Priority message 3' --message-attributes '{"priority" : { "DataType":"String", "StringValue":"low"}}'
aws sns publish --topic-arn $topicarn --message 'Low Priority message 4' --message-attributes '{"priority" : { "DataType":"String", "StringValue":"low"}}'