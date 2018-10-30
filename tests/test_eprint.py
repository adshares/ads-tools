from unittest import TestCase
import mock
import io

from tests import ads_service


class TestEprint(TestCase):

    @mock.patch('sys.stderr', new_callable=io.StringIO)
    def assert_stderr(self, n, expected_output, mock_stdout):
        eprint = ads_service.eprint
        eprint(n)
        self.assertEqual(mock_stdout.getvalue(), expected_output)

    def test_eprint(self):
        self.assert_stderr(u'test', u'test\n')
