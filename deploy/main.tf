terraform {
    backend "s3" {
        bucket = "aakash-training-udemy-tfstate"
        key = "recipe-app.tfstate"
        region = "eu-west-2"
        encrypt = true
        dynamodb_table = "aakash-training-udemy-tf-state-lock"
    }
}

provider "aws" {
     region = "eu-west-2"
     version = "~> 2.54.0"

}
