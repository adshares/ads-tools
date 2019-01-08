from behave import *


def check_method_and_params(request, response):
    try:
        request_method = request['method']
        request_params = request['params']

        if 'result' not in response or not response['result']:
            raise AssertionError('Response has error. Missing result')
        response_result = response['result']

        if 'run' not in response_result or not response_result['run']:
            raise AssertionError('Method `{0}` was not passed to client.'.format(request_method))
        response_method = response_result['run']

        if request_method != response_method:
            raise AssertionError(
                'Method passed to client (`{0}`) is not as expected (`{1}`).'.format(response_method, request_method))

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


@then('response will have method and params formatted as ads request')
def step_impl(context):
    check_method_and_params(context.request, context.response)
