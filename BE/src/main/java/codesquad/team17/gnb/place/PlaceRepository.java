package codesquad.team17.gnb.place;

import java.util.Optional;

public interface PlaceRepository {

    Optional<Place> findById(Long id);

}
