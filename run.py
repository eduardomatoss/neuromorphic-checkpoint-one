from flask import Flask

from app.routers.root import mod as root_router
from app.routers.salary import mod as salary_router

app = Flask(__name__)

app.register_blueprint(root_router)
app.register_blueprint(salary_router)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=False)
