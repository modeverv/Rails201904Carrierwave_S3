# README

* https://qiita.com/uma0317/items/e142661c004f68d858a5
* http://souring.hatenablog.com/entry/2017/11/08/183101
* https://www.bitesite.ca/blog/fixing-rails-carrierwave-amazon-s3-403-forbidden-error
* https://github.com/fog/fog/issues/2701#issuecomment-255368274
* https://qiita.com/doima_/items/677a8acbcaf018dd9ec9
* https://qiita.com/ttaka66/items/264dcb85e41f9135685c
* https://qiita.com/junara/items/1899f23c091bcee3b058

```javascript
{
    "Version": "2012-10-17",
    "Id": "Policy1555342429624",
    "Statement": [
        {
            "Sid": "Stmt1555342422864",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::ユーザー"
            },
            "Action": "s3:*",
            "Resource": "arn:aws:s3:::バケット"
        }
    ]
}
```

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* System dependencies

* * Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
