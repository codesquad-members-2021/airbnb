import React from 'react';

interface RoomType {
    latitude: number;
    logitude: number;
    address_id: number;
    theme_id: number;
    name: string;
    rental_fee_per_night: number;
    weekly_price_factor: number;
    monthly_price_factor: number;
    description: string;
    person_capacity: number;
    bedrooms: number;
    beds: number;
    bathrooms: number;
    avg_rating: number;
    room_and_property_type: string;
    images_fe: {
        thumbnail: string;
        big: string;
        small: string;
    };
    amenities: string[];
}

interface AccomodationDataType {
    rooms: RoomType[];
}

const AccomodationList = (props: AccomodationDataType): React.ReactElement => {
    const { rooms } = props;
    return (
        <div>
            <h2>Accomodation Page</h2>
            <div>
                <h3>숙소 결과</h3>
                {rooms.map((roomInfo: RoomType) => (
                    <div>
                        <ul>
                            <img src={roomInfo.images_fe.thumbnail} />
                            <li>제목: {roomInfo.name}</li>
                            <li>가격: {roomInfo.rental_fee_per_night}</li>
                            <li>상세설명: {roomInfo.description}</li>
                            <li>수용 가능 인원: {roomInfo.person_capacity}</li>
                            <li>침실 개수: {roomInfo.bedrooms}</li>
                            <li>침대 개수: {roomInfo.beds}</li>
                            <li>욕실 개수: {roomInfo.bedrooms}</li>
                            <li>평점: {roomInfo.avg_rating}</li>
                            <li>숙소 타입: {roomInfo.room_and_property_type}</li>
                        </ul>
                    </div>
                ))}
            </div>
        </div>
    );
};

export default AccomodationList;
