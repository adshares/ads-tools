try:
    ads_service = __import__('ads-service')
except ImportError:
    import imp
    ads_service = imp.load_source('ads-service', 'ads-service')
