#!/bin/bash

sed -i 's/"arn:aws:s3:::backup-test\*"/"arn:aws:s3:::backup-test\*",/' test-hw12.json
sed -i '/"arn:aws:s3:::backup-test\*",/a \        "arn:aws:s3:::hw12-bucket"' test-hw12.json
