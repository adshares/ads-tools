import json
import requests
from behave import *
from tests.ads_json_rpc.features.environment import ADS_JSON_RPC_SERVER_URL


@when('I send request')
def step_impl(context):
    headers = {'content-type': 'application/json'}
    context.request = json.loads(context.text)

    response = requests.post(ADS_JSON_RPC_SERVER_URL, headers=headers, json=context.request)
    context.response = response.json()


@then('response will have an error "{text}"')
def step_impl(context, text):
    response_error = context.response['error']

    assert ('name' in response_error and response_error['name'] == text) or (
            'message' in response_error and text in response_error['message'])