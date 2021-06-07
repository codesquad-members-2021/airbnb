import * as S from "components/Reservation/ReservationStyle";
import { useEffect } from 'react';
import { roomCardClickedState } from 'recoil/Atoms'
import { useRecoilState } from 'recoil';
import { Link } from 'react-router-dom';

function Reservation() {
    const [isClicked, setIsClicked] = useRecoilState(roomCardClickedState);
    const closeReservationPopUp = (e: MouseEvent): void => {
        const target = e.target as HTMLElement;
        if (isClicked && !target.closest(".reservation-modal")) {
            setIsClicked(false);
        }
    }

    useEffect(() => {
        document.body.addEventListener("click", closeReservationPopUp);
        return () => document.body.removeEventListener("click", closeReservationPopUp);
    }, [isClicked])
    return (
        isClicked ?
        <S.ReservationLayout>
            <div>
                <S.ReservationInfoLayout  className="reservation-modal">
                    <div className="price-and-review">
                        <div className="price-per-night">₩ 70,358 / 박</div>
                        <div className="review">후기 127개</div>
                    </div>
                    <div className="input-information">
                        <div className="dates">
                            <div className="check-in">체크인
                                <div className="check-in-out-text">
                                    2021년 6월 10일
                                </div>
                            </div>
                            <div className="check-out">체크아웃
                                <div className="check-in-out-text">
                                    2021년 6월 15일
                                </div>
                            </div>
                        </div>
                        <div className="guest-number">
                            <div>인원</div>
                            <div className="input-guest-number">게스트 3명</div>
                        </div>
                    </div>
                    <Link to="/">
                    <button>예약하기</button>
                    </Link>
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
                </S.ReservationInfoLayout>
            </div>
        </S.ReservationLayout>
        :<></>
    )
}

export default Reservation;
