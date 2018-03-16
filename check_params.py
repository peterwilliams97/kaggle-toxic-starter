from glob import glob
import os
import yaml
from attrdict import AttrDict
import tensorflow as tf


print('tf=%s' % tf.__version__)
# # assert False
# from steps.keras.models import blah

# blah()
# assert False


def check_all_yamls():
    missing = set()
    for i, path in enumerate(glob('best_configs/*.yaml')):
        print('%3d: %-40s' % (i, path), end=' ')
        params = read_params(path)
        assert params
        emb = params.get('embedding_filepath')
        exists = None
        if emb is not None and emb != 'None':
            exists = os.path.exists(emb)
            if not exists:
                missing.add(emb)
        print(emb, exists)
    print('-' * 80)
    print('%d missing paths' % len(missing))
    for i, path in enumerate(sorted(missing)):
         print('%3d: %-40s' % (i, path))


def read_params(filepath):
    config = read_yaml(filepath)
    params = config.parameters
    return params


def read_yaml(filepath):
    with open(filepath) as f:
        config = yaml.load(f)
    attr_dict = AttrDict(config)
    d = attr_dict.parameters
    for k in d.keys():
        if isinstance(d[k], str) and d[k].startswith('~/data'):
            d[k] = os.path.expanduser(d[k])
    attr_dict.parameters = d
    return attr_dict


check_all_yamls()
