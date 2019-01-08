import subprocess
from behave import fixture, use_fixture
from time import sleep

ADS_JSON_RPC_SERVER_HOST = '127.0.0.1'

ADS_JSON_RPC_SERVER_PORT = 6868

ADS_JSON_RPC_SERVER_URL = 'http://{0}:{1}/'.format(ADS_JSON_RPC_SERVER_HOST, ADS_JSON_RPC_SERVER_PORT)


@fixture
def ads_json_rpc_server(context):
    command = [
        '../../ads-json-rpc',
        '--host={0}'.format(ADS_JSON_RPC_SERVER_HOST),
        '--port={0}'.format(ADS_JSON_RPC_SERVER_PORT),
        '--ads=./ads-mock'
    ]

    print('ads_json_rpc_server:starting')
    context.server = subprocess.Popen(command,
                                      shell=False)
    # TODO recognize when server is up
    sleep(2)
    print('ads_json_rpc_server: started, pid=' + str(context.server.pid))
    yield context.server

    print('ads_json_rpc_server: stopping')
    context.server.terminate()
    print('ads_json_rpc_server: stopped')


def before_feature(context, feature):
    if 'Proxy with mock ads client' == feature.name:
        use_fixture(ads_json_rpc_server, context)
