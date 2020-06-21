def hello(event, context):
    return {
        "statusCode": 200,
        "body": "Hallo Welt",
        "headers": {
            "Content-Type": "text/plain"
        }
    }
