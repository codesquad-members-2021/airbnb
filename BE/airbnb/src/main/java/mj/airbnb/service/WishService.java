package mj.airbnb.service;

import mj.airbnb.domain.wish.WishRepository;
import mj.airbnb.web.dto.WishResponseDto;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class WishService {

    private final WishRepository wishRepository;

    public WishService(WishRepository wishRepository) {
        this.wishRepository = wishRepository;
    }

    public List<WishResponseDto> findAllByUserId(Long userId) {
        return wishRepository.findAllByUserId(userId).stream()
                .map(WishResponseDto::new)
                .collect(Collectors.toList());
    }
}
