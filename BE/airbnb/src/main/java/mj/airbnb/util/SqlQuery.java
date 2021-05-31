package mj.airbnb.util;

public class SqlQuery {

    public static final String BASE_SQL = "SELECT acc.name, acc.max_num_of_people, acc.type, acc.num_of_bed, acc.num_of_bathroom, acc.price, acc.address, i.url " +
            "FROM accommodation acc INNER JOIN image i " +
            "ON acc.id = i.accommodation_id ";
    public static final String MAIN_IMAGE_CONDITION_SQL = "i.main = TRUE ";
    public static final String DESTINATION_CONDITION_SQL = "acc.address LIKE ? ";
    public static final String DATE_CONDITION_SQL = "acc.id IN " +
            "( " +
            "   SELECT accommodation_id FROM reservation" +
            "   WHERE (? >= check_out_date) OR (? <= check_in_date)" +
            ") ";
    public static final String PRICE_CONDITION_SQL = "(? <= acc.price AND acc.price <= ?) ";
    public static final String PEOPLE_CONDITION_SQL = "acc.max_num_of_people >= ? ";
    public static final String ID_CONDITION_SQL = "id = ? ";
}
