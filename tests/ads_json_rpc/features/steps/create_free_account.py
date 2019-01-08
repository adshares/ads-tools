from behave import *
from time import sleep


def check_create_free_account(request, response):
    try:
        request_method = request['method']
        request_params = request['params']

        if request_method != 'create_free_account':
            raise AssertionError(
                'Requested method (`{0}`) is not as expected (`create_free_account`).'.format(request_method))

        if 'result' not in response or not response['result']:
            raise AssertionError('Response has error. Missing result')
        response_result = response['result']

        if 'run' not in response_result or not response_result['run']:
            raise AssertionError('Method `{0}` was not passed to client.'.format(request_method))
        response_method = response_result['run']

        if response_method != 'create_account':
            raise AssertionError(
                'Method passed to client (`{0}`) is not as expected (`create_account`).'.format(response_method))

        for request_param_key, request_param_value in request_params.items():
            if request_param_key not in response_result or not response_result[request_param_key]:
                raise AssertionError('Parameter `{0}` was not passed to client.'.format(request_method))

            if request_param_value != response_result[request_param_key]:
                raise AssertionError(
                    'Parameter `{0}` is not as expected. Actual: {1}. Expected: {2}'.format(
                        request_method,
                        response_result[request_param_key],
                        request_param_value
                    )
                )

    except Exception as e:
        raise type(e)(e.message + '\nrequest: {0}\nresponse: {1}'.format(request, response))


@then('create_free_account response will have valid method and params formatted as ads request')
def step_impl(context):
    check_create_free_account(context.request, context.response)


@then('I wait {delay} seconds')
def step_impl(context, delay):
    sleep(float(delay))
