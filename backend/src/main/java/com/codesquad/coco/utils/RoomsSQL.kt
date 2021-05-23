package com.codesquad.coco.utils;

const val FIND_PRICES_BY_SEARCH_REQUIREMENT: String = """
select rm.price_per_date 
from rooms rm 
inner join location l on rm.location_id = l.id 
where rm.id not in (select distinct rv.rooms_id
					from reservation rv
					where :check_in between rv.check_in and rv.check_out
					or :check_out between rv.check_in and rv.check_out
                    or rv.check_in  between :check_in and :check_out 
                    or rv.check_out between :check_in and :check_out )
and l.city_name = :city_name
"""

const val FIND_ROOMS_BY_SEARCH_REQUIREMENT: String = """
select distinct rm.id as rm_id,rm.name as rm_name,rm.price_per_date as rm_price_per_date,rm.description as rm_description, rm.bed as rm_bed,rm.max_guest as rm_max_guest,rm.bathroom as rm_bathroom,rm.type as rm_type,
h.name as h_name,h.profile_image_url as h_profile_image_url,
l.city_name as l_city_name,l.latitude as l_latitude,l.longitude as l_longitude,
ac.cleaning_fee as ac_cleaning_fee, ac.lodgment_fee_percent as ac_lodgment_fee_percent, ac.service_fee_percent as ac_service_fee_percent, ac.week_sale_percent as ac_week_sale_percent,
rw.star as rw_star, rw.review as rw_review,
wl.user_id as wl_user_id, wl.rooms_id as wl_rooms_id, wl.wish as wl_wish
from rooms rm
left join reservation rv on rm.id = rv.rooms_id
inner join location l on rm.location_id = l.id
inner join host h on h.id = rm.host_id
inner join review rw on rw.id = rm.review_id
inner join additional_cost ac on ac.id = rm.additional_cost_id
left join wish_list wl on wl.rooms_id = rm.id
where rm.id not in (select distinct rv.rooms_id
					from reservation rv
					where :check_in between rv.check_in and rv.check_out
					or :check_out between rv.check_in and rv.check_out
                    or rv.check_in  between :check_in and :check_out 
                    or rv.check_out between :check_in and :check_out )
and l.city_name = :city_name
and rm.max_guest >= :adult + :child
and rm.price_per_date between :price_min and :price_max;
"""
const val FIND_RESERVATION_BY_ROOMS_ID: String = """
select rv.id as rv_id, rv.user_id as rv_user_id, rv.adult as rv_adult, rv.child as rv_child,
 rv.baby as rv_baby, rv.check_in as rv_check_in, rv.check_out as rv_check_out,rv.total_price as rv_total_price
from reservation rv
where rv.rooms_id = :rooms_id;
"""

const val FIND_ROOMS_BY_ROOMS_ID: String = """
select rm.id as rm_id,rm.name as rm_name,rm.price_per_date as rm_price_per_date,rm.description as rm_description, rm.bed as rm_bed,rm.max_guest as rm_max_guest,rm.bathroom as rm_bathroom,rm.type as rm_type,
h.name as h_name,h.profile_image_url as h_profile_image_url,
l.city_name as l_city_name,l.latitude as l_latitude,l.longitude as l_longitude,
ac.cleaning_fee as ac_cleaning_fee, ac.lodgment_fee_percent as ac_lodgment_fee_percent, ac.service_fee_percent as ac_service_fee_percent, ac.week_sale_percent as ac_week_sale_percent,
rw.star as rw_star, rw.review as rw_review,
wl.user_id as wl_user_id, wl.rooms_id as wl_rooms_id, wl.wish as wl_wish
from rooms rm
inner join location l on rm.location_id = l.id
inner join host h on h.id = rm.host_id
inner join review rw on rw.id = rm.review_id
inner join additional_cost ac on ac.id = rm.additional_cost_id
left join wish_list wl on wl.rooms_id = rm.id
where rm.id = :rooms_id
"""

//todo : wish list 부분 user를 넣었을 때 생각