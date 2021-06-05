package airbnb.response;


import lombok.Getter;
import lombok.RequiredArgsConstructor;

import java.util.Map;
import java.util.stream.Stream;

@RequiredArgsConstructor
@Getter
public class PriceGraphResponse {
    private final Stream<Map.Entry<Integer, Integer>> graph;
}
