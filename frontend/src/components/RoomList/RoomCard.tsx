import styled from "styled-components";
import { HiOutlineHeart } from 'react-icons/hi';

const RoomCard = () => {
    return (
    <RoomCardLayout>
        <div>
            <img src={"https://www.mydomaine.com/thmb/UKGGGFL-A04tX4WaG7Mp2nc9T7Y=/700x467/filters:no_upscale():max_bytes(150000):strip_icc()/cozy-bedroom-ideas-3-c15e726616944ebb9230ee76be74456e.jpg"}></img>
        </div>
        <RoomCardInfoLayout>
            <div className="room-type">서초구의 아파트 전체<HiOutlineHeart className="heart-icon"/></div>
            <div className="room-name">Spacious and Comfortable Cozy house #4</div>
            <div className="room-label">최대 인원 3명*원룸, 침대 1개, 욕실 1개*주방, 무선인터넷, 에어컨, 헤어드라이어</div>
        </RoomCardInfoLayout>
    </RoomCardLayout>
)};

const RoomCardLayout = styled.div`
    border: 1px solid pink;
    display: flex;

    & > div {
        width: 50%;
        padding: 2rem;
    }

    img {
        width: 100%;
        height: 100%;
        border-radius: 20px;
    }
`
const RoomCardInfoLayout = styled.div`
    .room-type {
        display: flex;
        font-size: 1.2rem;
        padding: 0.5rem;
        color: #888;

        .heart-icon {
            margin-left: auto;
            font-size: 2rem;
        }
    }

    .room-name {
        font-size: 1.2rem;
        padding: 0.5rem;
    }

    .room-label {
        font-size: 1.2rem;
        padding: 0.5rem;
        color: #888;
    }
`

export default RoomCard;
