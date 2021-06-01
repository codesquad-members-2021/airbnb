package mj.airbnb.util;

public class SqlQuery {

    public static final String BASE_SQL = "SELECT name, max_num_of_people, type, num_of_bed, num_of_bathroom, price, address " +
            "FROM accommodation ";
    public static final String DESTINATION_CONDITION_SQL = "address LIKE ? ";
    public static final String DATE_CONDITION_SQL = "id IN " +
            "( " +
            "   SELECT accommodation_id FROM reservation" +
            "   WHERE (? >= check_out_date) OR (? <= check_in_date)" +
            ") ";
    public static final String PRICE_CONDITION_SQL = "(? <= price AND price <= ?) ";
    public static final String PEOPLE_CONDITION_SQL = "max_num_of_people >= ? ";
    public static final String ID_CONDITION_SQL = "id = ? ";
}
