package com.codesquad.coco.utils;

const val FIND_IMAGE_BY_ROOM_ID: String = """
select i.url as i_url, i.type as i_type
from image i 
where i.room_id = :room_id;

"""