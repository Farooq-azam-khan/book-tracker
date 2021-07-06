from pydantic import BaseModel
from enum import Enum
from typing import List


class TableOfContentsType(Enum):
    PART = 'Part'
    CHAPTER = 'Chapter'
    SECTION = 'Section'
    PROLOGUE = 'Prologue'
    EPILOGUE = 'Epilogue'


class TableOfContents(BaseModel):
    name: str
    page_mark: int
    toc_type: TableOfContentsType
    sub_toc: List['TableOfContents'] = None


TableOfContents.update_forward_refs()
