import os
import responder

api = responder.API()


@api.route("/")
def index(req, res):
    res.text = os.getenv("SAMPLEAPP_MESSAGE", "Hello")


if __name__ == "__main__":
    api.run(address="0.0.0.0", port=80)
