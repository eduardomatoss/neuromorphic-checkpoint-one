from json import dumps

from flask import Blueprint
from flask import Response


mod = Blueprint("main", __name__)


@mod.route("/")
@mod.route("/health")
def root():
    health_status = {"status": "ok", "message": "Application is healthy"}
    response_data = dumps(health_status)
    return Response(response_data, status=200, content_type="application/json")
