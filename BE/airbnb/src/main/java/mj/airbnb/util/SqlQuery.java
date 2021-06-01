package mj.airbnb.util;

public class SqlQuery {

    private static final String BASE_SQL = "SELECT acc.name, acc.max_num_of_people, acc.type, acc.num_of_bed, acc.num_of_bathroom, acc.price, acc.address, i.url " +
            "FROM accommodation acc INNER JOIN image i " +
            "ON acc.id = i.accommodation_id ";
    private static final String MAIN_IMAGE_CONDITION = "i.main = TRUE ";
    private static final String DESTINATION_CONDITION = "acc.address LIKE ? ";
    private static final String DATE_CONDITION = "acc.id NOT IN  " +
            "( " +
            "   SELECT accommodation_id FROM reservation" +
            "   WHERE (? < check_out_date) AND (? > check_in_date)" +
            ") ";
    private static final String PRICE_CONDITION = "(? <= acc.price AND acc.price <= ?) ";
    private static final String PEOPLE_CONDITION = "acc.max_num_of_people >= ? ";
    private static final String ID_CONDITION = "id = ? ";

    // SQL 정리
    public static final String ACCOMMODATIONS_SQL = BASE_SQL + "WHERE " + MAIN_IMAGE_CONDITION;

    public static final String ACCOMMODATIONS_BY_DESTINATION_SQL = BASE_SQL +
            "WHERE " + MAIN_IMAGE_CONDITION +
            "AND " + DESTINATION_CONDITION;

    public static final String ACCOMMODATIONS_BY_DESTINATION_AND_DATE_SQL = BASE_SQL +
            "WHERE " + MAIN_IMAGE_CONDITION +
            "AND " + DESTINATION_CONDITION +
            "AND " + DATE_CONDITION;

    public static final String ACCOMMODATIONS_BY_DESTINATION_AND_DATE_AND_PRICE_SQL = BASE_SQL +
            "WHERE " + MAIN_IMAGE_CONDITION +
            "AND " + DESTINATION_CONDITION +
            "AND " + DATE_CONDITION +
            "AND " + PRICE_CONDITION;

    public static final String ACCOMMODATIONS_BY_DESTINATION_AND_DATE_AND_PRICE_AND_PEOPLE_SQL = BASE_SQL +
            "WHERE " + MAIN_IMAGE_CONDITION +
            "AND " + DESTINATION_CONDITION +
            "AND " + DATE_CONDITION +
            "AND " + PRICE_CONDITION +
            "AND " + PEOPLE_CONDITION;

    public static final String ACCOMMODATIONS_BY_DATE_SQL = BASE_SQL +
            "WHERE " + MAIN_IMAGE_CONDITION +
            "AND " + DATE_CONDITION;

    public static final String ACCOMMODATIONS_BY_DATE_AND_PRICE_SQL = BASE_SQL +
            "WHERE " + MAIN_IMAGE_CONDITION +
            "AND " + DATE_CONDITION +
            "AND " + PRICE_CONDITION;

    public static final String ACCOMMODATIONS_BY_DATE_AND_PRICE_AND_PEOPLE_SQL = BASE_SQL +
            "WHERE " + MAIN_IMAGE_CONDITION +
            "AND " + DATE_CONDITION +
            "AND " + PRICE_CONDITION +
            "AND " + PEOPLE_CONDITION;

    public static final String IMAGE_URL_SQL = "SELECT url FROM image WHERE accommodation_id = ?; ";

    public static final String ACCOMMODATION_DETAIL_SQL = "SELECT in_detail.host_name, in_detail.description, acc.name, acc.max_num_of_people, acc.type, acc.num_of_bed, acc.num_of_bathroom, acc.price, acc.address " +
            "FROM accommodation acc INNER JOIN accommodation_detail in_detail " +
            "ON acc.id = in_detail.accommodation_id " +
            "WHERE acc.id = ?; ";

    public static final String RESERVATIONS_BY_USER_ID_SQL = "SELECT acc.name, acc.address, i.url, acc_detail.description, check_in_date, check_out_date " +
            "FROM reservation res " +
            "INNER JOIN accommodation acc " +
            "ON res.accommodation_id = acc.id " +
            "INNER JOIN image i " +
            "ON acc.id = i.accommodation_id " +
            "INNER JOIN accommodation_detail acc_detail " +
            "ON acc.id = acc_detail.accommodation_id " +
            "WHERE user_id = ? " +
            "AND i.main = TRUE " +
            "ORDER BY check_in_date ";

    public static final String RESERVATION_IDS_BY_ID_SQL = "SELECT user_id, accommodation_id " +
            "FROM reservation " +
            "WHERE id = ? ";

    public static final String POPULAR_DESTINATIONS_SQL = "SELECT address " +
            "FROM accommodation " +
            "WHERE address LIKE ? ";
}
