import sys

import lib_sample


def test_hello(capfd):
    lib_sample.hello()

    out, err = capfd.readouterr()
    assert out == "hello, this is basic.py.\n"
    assert err is ""
