package com.codesquad.coco.utils.sql

const val FIND_ALL_PRICE_BY_SEARCH_REQUIREMENT: String = """
select rm.price_per_date 
from room rm 
inner join location l on rm.location_id = l.id 
where rm.id not in (select distinct rv.room_id
					from reservation rv
					where :check_in between rv.check_in and rv.check_out
					or :check_out between rv.check_in and rv.check_out
                    or rv.check_in  between :check_in and :check_out 
                    or rv.check_out between :check_in and :check_out )
and l.city_name = :city_name
"""