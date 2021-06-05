package com.codesquad.coco.utils.sql

const val FIND_ALL: String = """

select c.name, c.image_url
from city c
limit 10

"""