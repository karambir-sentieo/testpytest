from stexample import example
from tests.test_ex2 import test_always_fail_ex2

def test_always_pass():
    assert 4 == example.sum(1,3)

def test_always_fail():
    assert 5 == example.sum(2,5)