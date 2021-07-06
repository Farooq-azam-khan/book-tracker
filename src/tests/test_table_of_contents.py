from fastapi.testclient import TestClient
from ..main import app
import pytest

from src.table_of_contents import TableOfContents, TableOfContentsType

@pytest.fixture
def toc_complex():
    return TableOfContents(name='test toc', toc_type=TableOfContentsType.CHAPTER,
                           page_mark=1,
                           sub_toc=[
                               TableOfContents(name='sub toc', page_mark=10, toc_type=TableOfContentsType.SECTION)]
                           )


@pytest.fixture
def toc_basic():
    return TableOfContents(name='test toc', toc_type=TableOfContentsType.CHAPTER, page_mark=1)


def test_table_of_contents(toc_basic):
    assert toc_basic.name == 'test toc'
    assert toc_basic.toc_type == TableOfContentsType.CHAPTER
    assert toc_basic.page_mark == 1


def test_toc_has_sub_toc(toc_complex):
    assert len(toc_complex.sub_toc) == 1
    assert toc_complex.sub_toc[0].name == 'sub toc'


# def test_fastapi_routing():
#     client = TestClient(app)
#     response = client.get('/test')
#     # assert response.status_code == 200
#     # assert response.json() == {'test': False}
