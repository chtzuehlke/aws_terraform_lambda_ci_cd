def hello(event, context):
    return {
        "statusCode": 200,
        "body": "hello world",
        "headers": {
            "Content-Type": "text/plain"
        }
    }
