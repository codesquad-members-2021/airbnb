package codesquad.team17.gnb.place.domain

class PlaceSql {
    public static final String FIND_ALL = """
        SELECT
            place_id,
            place_name,
            image_url,
            city,
            district,
            address1,
            address2,
            latitude,
            longitude,
            `option`,
            additional_option,
            like_count,
            host_id,
            maximum_number_of_people,
            description,
            price             
        FROM place
"""

    public static final String FIND_BY_ID = FIND_ALL + """
        WHERE place_id=:id
"""

    public static final String FIND_ALL_BY_STAY_PERIOD = FIND_ALL + RESERVATION_CHECK

    private static final String RESERVATION_CHECK = """
        WHERE place_id NOT IN
        (
            SELECT place_id
            FROM reservation
            WHERE
                (check_in <= :check_in AND check_out > :check_in)
            OR
                (check_in < :check_out AND check_out >= :check_out)
            OR
                (:check_in <= check_in AND check_in < :check_out)  
        ) 
"""
}
