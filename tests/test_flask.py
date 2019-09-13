import pytest

from sample import app


@pytest.fixture
def client():
    with app.app.test_client() as client:
        yield client


def test_get_root(client):
    assert b'helloworld' in client.get('/').data
