package com.codesquad.coco.utils;
const val FIND_PRICES_BY_SEARCH_REQUIREMENT: String = """
select rm.price_per_date
from rooms rm
inner join reservation rv on rm.id = rv.id
inner join location l on rm.location_id = l.id
where :check_in not between rv.check_in and rv.check_out
and :check_out not between rv.check_in and rv.check_out;
and l.city_name = :city_name;
"""