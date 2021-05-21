package com.codesquad.coco.utils;

const val FIND_IMAGE_BY_ROOMS_ID: String = """
select i.url as i_url, i.type as i_type
from image i 
where i.rooms_id = :rooms_id;

"""