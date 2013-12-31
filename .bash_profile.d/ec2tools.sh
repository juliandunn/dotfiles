export EC2_HOME=$HOME/bin/ec2-api-tools
export PATH=$PATH:$EC2_HOME/bin
# Default keys are the ones for my IAM account in devsupport-aws@opscode.com
export AWS_ACCESS_KEY="deleted"
export AWS_SECRET_KEY="deleted"
export AWS_SSH_KEY_ID="deleted"

# Of course, the stupid new Python Amazon tools need to use completely
# different environment variables. Are you serious, guys?
export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_KEY
export AWS_DEFAULT_REGION=us-east-1
