import styled from "styled-components";

function Reservation() {
    return (
        <ReservationLayout>
            <div>
                <ReservationInfoLayout>
                    <div className="price-and-review">
                        <div className="price-per-night">₩ 70,358 / 박</div>
                        <div className="review">후기 127개</div>
                    </div>
                    <div className="input-information">
                        <div className="dates">
                            <div className="check-in">체크인</div>
                            <div className="check-out">체크아웃</div>
                        </div>
                        <div className="guest-number">
                            <div>인원</div>
                            <div>게스트 3명</div>
                        </div>
                    </div>
                    <button>예약하기</button>
                    <div className="notification">예약 확정 전에는 요금이 청구되지 않습니다.</div>
                    <div className="price-detail">
                        <div>
                            <span>₩ 71,466 * 18박</span>
                            <span>₩ 1,322,396</span>
                        </div>
                        <div>
                            <span>4% 주 단위 요금 할인</span>
                            <span>- ₩ 55,948</span>
                        </div>
                        <div>
                            <span>청소비</span>
                            <span>₩ 25,996</span>
                        </div>
                        <div>
                            <span>서비스 수수료</span>
                            <span>₩ 182,468</span>
                        </div>
                        <div>
                            <span>숙박세와 수수료</span>
                            <span>₩ 18,247</span>
                        </div>
                    </div>
                    <div className="price-total">
                        <span>총 합계</span>
                        <span>₩ 67,007</span>
                    </div>
                </ReservationInfoLayout>
            </div>
        </ReservationLayout>
    )
}

const ReservationLayout = styled.div`
    position: fixed;
    top: 0;
    left: 0;
    width: 100vw;
    height: 100vh;
    z-index: 99;
    &:before {
        content: "";
        position: fixed;
        top: 0;
        left: 0;
        width:100vw;
        height: 100vh;
        background-color: rgba(0, 0, 0, 0.5);
        z-index: -1;
    }
    & > div {
        position: relative;
        width: 40rem;
        margin: 24vh auto;
        background-color: #fff;
        border-radius: 10px;
        height: 50vh;
    }

`
const ReservationInfoLayout = styled.div`
    padding: 3rem 2rem;

    button {
        width: 100%;
        margin: 1.5rem 0;
        border-radius: 10px;
        background-color: #555;
        color: #fff;
        height: 5rem;
        cursor: pointer;
    }

    .price-and-review {
        margin: 1rem 0;
        display: flex;
        justify-content: space-between;
        .price-per-night {
            font-weight: 700;
            font-size: 2rem;
        }

        .review {
            text-decoration: underline;
            font-size: 1.5rem;
            color: #999;
        }
    }

    .input-information {
        height:10rem;
        border: 1px solid #c5c2c2;
        border-radius: 10px;

        & > div {
            height: 50%;
        }

        .dates {
            display: flex;
            .check-in {
                border-right: 1px solid #c5c2c2;
            }

            & > div {
                width: 50%;
                padding: 1rem;
            }
        }

        .guest-number {
            border-top: 1px solid #c5c2c2;

            & > div {
                padding: 1rem;
            }

            &:last-child { //마지막 자식 요소 가져오는 방법?
                padding-top: 0;
            }
        }
    }

    .notification {
        text-align: center;
        font-size: 1.2rem;
        color: #a09e9e;
    }

    .price-detail {
        margin: 2rem 0;
        border-bottom: 1px solid #dddbdb;
        & > div {
            display: flex;
            justify-content: space-between;
            font-size: 1.5rem;
            color: #555;
            padding: 0.5rem;
        }
    }

    .price-total {
        display: flex;
        justify-content: space-between;
        font-size: 1.5rem;
        font-weight: 700;
    }
`

export default Reservation;
