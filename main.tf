provider "aws" {
	region = "ap-south-1"
}

terraform {
	backend "s3" {
	bucket= "terraform--bucket"
	key = "terraform.tfstate"
	region = "ap-south-1"
}
}

resource "aws_instance" "tf-repo-inst" {
	ami = "ami-007020fd9c84e18c7"
	instance_type= "t2.micro"
	
	tags= {
	Name= "tf-repo-inst"
	Env= "pro-env"
}
}

