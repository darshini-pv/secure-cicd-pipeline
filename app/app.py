from flask import Flask

app = Flask(__name__)


@app.route("/")
def home():
    return "Secure CI/CD Pipeline is Running!"


@app.route("/health")
def health():
    return {"status": "healthy"}


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)  # nosemgrep: python.flask.security.audit.app-run-param-config.avoid_app_run_with_bad_host
