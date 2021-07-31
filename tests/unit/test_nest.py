import sys



def test_good_bye_nest(capfd):
    import lib_sample.nest as nest
    nest.good_bye()

    out, err = capfd.readouterr()
    assert out == "good_bye, this is nest/nest.py.\n"
    assert err is ""

def test_good_bye_lib_sample(capfd):
    import lib_sample
    lib_sample.good_bye()

    out, err = capfd.readouterr()
    assert out == "good_bye, this is nest/nest.py.\n"
    assert err is ""
