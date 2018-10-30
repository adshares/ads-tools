from unittest import TestCase
from tests import ads_service


class TestValidate_ip(TestCase):
    def test_validate_ip(self):

        validate_ip = ads_service.validate_ip

        self.assertIsNotNone(validate_ip('192.56.65.77'))

        self.assertIsNotNone(validate_ip('32.56.65.77'))

        self.assertIsNone(validate_ip('320.56.65.77'))

        self.assertIsNotNone(validate_ip('255.255.255.255'))
