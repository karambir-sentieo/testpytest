from stexample import example

def test_always_pass():
    assert 4 == example.sum(1,3)

def test_always_fail():
    assert 5 == example.sum(2,5)