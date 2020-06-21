def hello(event, context):
    return {
        "statusCode": 200,
        "body": "Hallo welt",
        "headers": {
            "Content-Type": "text/plain"
        }
    }
