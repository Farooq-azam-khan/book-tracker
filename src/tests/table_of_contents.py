import unittest
from src.table_of_contet import TableOfContents, TableOfContentsType


class TableOfContentsModelTests(unittest.TestCase):
    def setUp(self) -> None:
        self.toc_complex = TableOfContents(name='test toc', toc_type=TableOfContentsType.CHAPTER,
                                           page_mark=1,
                                           sub_toc=[TableOfContents(name='sub toc', page_mark=10, toc_type=TableOfContentsType.SECTION)]
                                      )
        self.toc_basic = TableOfContents(name='test toc', toc_type=TableOfContentsType.CHAPTER, page_mark=1)

    def test_table_of_contents(self):
        self.assertEqual(self.toc_basic.name, 'test toc')
        self.assertEqual(self.toc_basic.toc_type, TableOfContentsType.CHAPTER)
        self.assertEqual(self.toc_basic.page_mark, 1)

    def test_toc_has_sub_tocs(self):

        self.assertEqual(len(self.toc_complex.sub_toc), 1)
        self.assertEqual(self.toc_complex.sub_toc[0].name , 'sub toc')


if __name__ == '__main__':
    unittest.main()
