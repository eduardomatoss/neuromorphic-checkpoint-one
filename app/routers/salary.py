from json import dumps

from flask import Blueprint
from flask import Response
from flask import request


mod = Blueprint("salary", __name__)
incomes = [{"description": "salary", "amount": 12.251}]


@mod.route("/salary")
def get_incomes():
    return Response(dumps(incomes))


@mod.route("/salary", methods=["POST"])
def add_income():
    incomes.append(request.get_json())
    return "", 204
