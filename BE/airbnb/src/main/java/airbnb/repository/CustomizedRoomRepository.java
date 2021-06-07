package airbnb.repository;

import airbnb.domain.Room;
import airbnb.request.SearchRequest;
import com.querydsl.core.QueryResults;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface CustomizedRoomRepository {
    List<Room> findRoomsFilteredBy(SearchRequest searchRequest);

    Page<Room> findPagedRoomsFilteredBy(SearchRequest searchRequest, Pageable pageable);
}
