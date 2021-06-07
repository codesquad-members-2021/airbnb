package airbnb.repository;


import airbnb.domain.Room;
import airbnb.request.SearchRequest;
import airbnb.response.RoomResponse;
import com.querydsl.core.QueryResults;
import com.querydsl.core.types.dsl.BooleanExpression;
import com.querydsl.jpa.impl.JPAQueryFactory;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

import java.time.LocalDate;
import java.util.List;


import static airbnb.domain.QBooking.booking;
import static airbnb.domain.QRoom.room;
import static org.springframework.util.StringUtils.hasText;

@RequiredArgsConstructor
public class CustomizedRoomRepositoryImpl implements CustomizedRoomRepository {

    private final JPAQueryFactory queryFactory;

    @Override
    public List<Room> findRoomsFilteredBy(SearchRequest searchRequest) {
        return queryFactory
                .selectFrom(room)
                .leftJoin(booking).on(room.id.eq(booking.id))
                .where(placeIdEquals(searchRequest.getPlaceId()),
                        dateNotBetween(searchRequest.getCheckIn(), searchRequest.getCheckOut()),
                        priceBetween(searchRequest.getPriceMin(), searchRequest.getPriceMax()),
                        maximumNumberOfGuestsGoeSumOf(searchRequest.getAdults(), searchRequest.getChildren(), searchRequest.getInfants()))
                .fetch();
    }

    @Override
    public Page<Room> findPagedRoomsFilteredBy(SearchRequest searchRequest, Pageable pageable) {
        QueryResults<Room> roomQueryResults=  queryFactory
                .selectFrom(room)
                .leftJoin(booking).on(room.id.eq(booking.id))
                .where(placeIdEquals(searchRequest.getPlaceId()),
                        dateNotBetween(searchRequest.getCheckIn(), searchRequest.getCheckOut()),
                        priceBetween(searchRequest.getPriceMin(), searchRequest.getPriceMax()),
                        maximumNumberOfGuestsGoeSumOf(searchRequest.getAdults(), searchRequest.getChildren(), searchRequest.getInfants()))
                .offset(pageable.getOffset())
                .limit(pageable.getPageSize())
                .fetchResults();
        List<Room> content = roomQueryResults.getResults();
        Long total = roomQueryResults.getTotal();
        return new PageImpl<>(content, pageable, total);
    }

    private BooleanExpression placeIdEquals(String placeId) {
        return hasText(placeId) ? room.location.placeId.eq(placeId) : null;
    }

    private BooleanExpression dateNotBetween(LocalDate checkIn, LocalDate checkOut) {
        return ((checkIn != null) && (checkOut != null)) ?
                room.bookings.isEmpty()
                        .or(booking.checkOut.loe(checkIn))
                        .or(booking.checkIn.goe(checkOut)) : null;
    }

    private BooleanExpression priceBetween(Integer priceMin, Integer priceMax) {
        return ((priceMin != null) && (priceMax != null)) ?
                room.pricePerNight.goe(priceMin).and(room.pricePerNight.loe(priceMax)) : null;
    }

    private BooleanExpression maximumNumberOfGuestsGoeSumOf(Integer adults, Integer children, Integer infants) {
        if (children == null) {
            children = 0;
        }
        if (infants == null) {
            infants = 0;
        }
        return adults != null ? room.maximumNumberOfGuests.goe(adults + children + infants) : null;
    }
}
