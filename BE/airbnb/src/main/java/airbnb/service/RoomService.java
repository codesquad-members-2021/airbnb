package airbnb.service;


import airbnb.domain.Room;
import airbnb.repository.RoomRepository;
import airbnb.request.SearchRequest;
import airbnb.response.RoomResponses;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class RoomService {

    private final RoomRepository roomRepository;

    public RoomResponses findRoomsFilteredBy(SearchRequest searchRequest) {
        return RoomResponses.getFilteredRoomsFrom(roomRepository.findFilteredRooms(searchRequest)
                .stream()
                .map(Room::of)
                .collect(Collectors.toList()));
    }
}
