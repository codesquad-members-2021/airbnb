package airbnb.data;

import io.netty.resolver.DefaultAddressResolverGroup;
import org.springframework.http.MediaType;
import org.springframework.http.client.reactive.ReactorClientHttpConnector;
import org.springframework.web.reactive.function.client.ExchangeStrategies;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.netty.http.client.HttpClient;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;


public class DataController {
    private static final HttpClient httpClient = HttpClient.create().resolver(DefaultAddressResolverGroup.INSTANCE);
    private static final ExchangeStrategies exchangeStrategies = ExchangeStrategies.builder().codecs(configurer -> configurer.defaultCodecs().maxInMemorySize(-1)).build();
    private static final WebClient webClient = WebClient.builder().clientConnector(new ReactorClientHttpConnector(httpClient))
            .exchangeStrategies(exchangeStrategies).build();

    public static void main(String[] args) throws IOException {
        List<String> placeIdArr = new ArrayList<>();
        placeIdArr.add("ChIJzWXFYYuifDUR64Pq5LTtioU");
        placeIdArr.add("ChIJR4ITliVveTURQmG3LJD9N30");
        placeIdArr.add("ChIJTYxvLg7HfDURrJz18pb4R-E");
        placeIdArr.add("ChIJ1a3vsrjjZTURMC44oCngkro");
        placeIdArr.add("ChIJAWZKutdIZTURtdOKmJ3WltE");
        placeIdArr.add("ChIJr6f1ASOJcTURSPUlAe3S9AU");
        placeIdArr.add("ChIJEUZ2IApDezURybRd7gIwN_E");
        placeIdArr.add("ChIJgd6y4osuZjURATHZM3P6g3A");

        BufferedWriter bufferedWriter1 = new BufferedWriter(new FileWriter("output.txt", true));
        BufferedWriter bufferedWriter2 = new BufferedWriter(new FileWriter("output2.txt", true));


        String message = "insert into room(id, air_conditioning, dryer, kitchen, wifi, average_rating, detail_info, label, latitude, longitude, place_id, maximum_number_of_guests, name, price_per_night, property_type, bath_rooms, bed_rooms, beds, check_in_time, check_out_time, city_id, host_id)" +
                " values ({0}, {1}, {2}, {3}, {4}, {5}, \"{6}\", \"{7}\", {8},  {9}, \"{10}\", {11}, \"{12}\", {13}, \"{14}\", {15}, {16}, {17}, \"{18}\", \"{19}\", {20}, {21});";

        String imageTemplate = "insert into image(room_id, image) values({0}, \"{1}\");";
        MessageFormat mf = new MessageFormat(message);

        Long i = 1L;
        Long k = 1L;
        for (String placeId : placeIdArr) {

            Long cityId = k++;
            String url = "https://www.airbnb.co.kr/api/v2/explore_tabs?key=d306zoyjsyarp7ifhu67rjxn52tv0t20&place_id=" + placeId + "&_intents=p1&auto_ib=false&experiences_per_grid=0&fetch_filters=true&guidebooks_per_grid=0&has_zero_guest_treatment=true&is_guided_search=true&is_new_cards_experiment=true&is_standard_search=true&items_per_grid=100&luxury_pre_launch=false&metadata_only=false&query_understanding_enabled=true&refinement_paths%5B%5D=%2Fhomes&search_type=section_navigation&selected_tab_id=home_tab&supports_for_you_v3=true";

            AirbnbData airbnbData = webClient.get()
                    .uri(url)
                    .accept(MediaType.APPLICATION_JSON)
                    .retrieve()
                    .bodyToMono(AirbnbData.class)
                    .block();

            List<Section> sections = airbnbData.getExploreTabs().get(0).getSections();
            sections.remove(0);
            sections.remove(0);
            List<Listings> listings = airbnbData.getExploreTabs().get(0).getSections()
                    .stream()
                    .map(Section::getListings).flatMap(Collection::stream)
                    .collect(Collectors.toList());

            for (Listings l : listings) {
                Long id = i++;
                Listing listing = l.getListing();
                String airConditioning = "true";
                String dryer = "true";
                String kitchen = "true";
                String wifi = "true";
                double averageRating = listing.getAvgRating();
                String detailInfo = listing.getKickerContent().getMessages().get(0).toString().replaceAll(",", "");
                double lat = listing.getLat();
                double lng = listing.getLng();
                int personCapacity = listing.getPersonCapacity();
                String name = listing.getName().replaceAll(",", "");
                int bathrooms = listing.getBathrooms();
                int bedrooms = listing.getBedrooms();
                int beds = listing.getBeds();

                String price = "";
                int max = 200000;
                for (int j = 1; j <= 10; j++) {
                    int c = (int) (Math.random() * max);
                    price = c + "";
                }
                String label = listing.getKickerContent().getMessages().get(0).toString().replaceAll(",", "");
                String checkInTime = "04:00";
                String checkOutTime = "12:00";

                Long hostId = 1L;
                List<ContextualPicture> contextualPictures = listing.getContextualPictures();
                for (ContextualPicture contextualPicture : contextualPictures) {
                    String image = contextualPicture.getPicture();
                    bufferedWriter2.write(MessageFormat.format(imageTemplate, id, image) + "\n");
                }
                bufferedWriter1.write(MessageFormat.format(message, id, airConditioning, dryer, kitchen, wifi, averageRating, detailInfo, label, lat, lng, placeId, personCapacity, name, price, "HOUSE", bathrooms, bedrooms, beds, checkInTime, checkOutTime, cityId, hostId) + "\n");
            }
        }
        bufferedWriter1.flush();
        bufferedWriter1.close();

        bufferedWriter2.flush();
        bufferedWriter2.close();
    }
}



