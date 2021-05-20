import { useState, useRef, useEffect } from "react";
import styled from "styled-components";
import ModalContainer from "../../../styles/ModalContainer";
import { ModalInterface } from "../../../utils/interfaces";
import { ReactComponent as Minus } from "./../../../icons/minus.svg";
import { ReactComponent as Plus } from "./../../../icons/plus.svg";
import { ReactComponent as XCircle } from "./../../../icons/x-circle.svg";
import { ReactComponent as XCircleHover } from "./../../../icons/x-circle-hover.svg";

export default function GuestModal({ type, setInplaceHolder }: ModalInterface) {
	const [adultCount, setAdultCount] = useState<number>(0);
	const [childCount, setChildCount] = useState<number>(0);
	const [infantCount, setInfantCount] = useState<number>(0);
	const [xCircle, setXCircle] = useState(<XCircle />);
	const onAdultIncrease = () => setAdultCount(adultCount + 1);
	const onAdultDecrease = () => {
		if ((childCount || infantCount) && adultCount === 1) return;
		setAdultCount(adultCount - 1);
	};
	const onChildIncrease = () => {
		setChildCount(childCount + 1);
		adultCount || setAdultCount(adultCount + 1);
	};
	const onChildDecrease = () => setChildCount(childCount - 1);
	const onInfantIncrease = () => {
		setInfantCount(infantCount + 1);
		adultCount || setAdultCount(adultCount + 1);
	};
	const onInfantDecrease = () => setInfantCount(infantCount - 1);
	const totalGuest = useRef<number>();

	useEffect(() => {
		totalGuest.current = adultCount + childCount;
		if (totalGuest.current) setInplaceHolder(`게스트 ${totalGuest.current}명, 유아 ${infantCount}명`);
		else setInplaceHolder("게스트 추가");
	});

	const handleOnEnter = () => setXCircle(<XCircleHover />);
	const handleOnLeave = () => setXCircle(<XCircle />);
	const cleanupGuest = () => {
		setInfantCount(0);
		setChildCount(0);
		setAdultCount(0);
	};

	return (
		<>
			<ModalContainer type={type}>
				<ContentWrapper>
					<ul>
						<AgeWrapper isEnd={false}>
							<TitleWrapper>
								<div>성인</div>
								<div className="sub_title">만 13세 이상</div>
							</TitleWrapper>
							<CountWrapper>
								{adultCount ? <Minus className="counter_icon" stroke="#828282" onClick={onAdultDecrease} /> : <Minus className="counter_icon_disabled" stroke="#e4e4e4" />}
								<Count>{adultCount}</Count>
								<Plus className="counter_icon" stroke="#828282" onClick={onAdultIncrease} />
							</CountWrapper>
						</AgeWrapper>
						<AgeWrapper isEnd={false}>
							<TitleWrapper>
								<div>어린이</div>
								<div className="sub_title">만 2~12세</div>
							</TitleWrapper>
							<CountWrapper>
								{childCount ? <Minus className="counter_icon" stroke="#828282" onClick={onChildDecrease} /> : <Minus className="counter_icon_disabled" stroke="#e4e4e4" />}
								<Count>{childCount}</Count>
								<Plus className="counter_icon" stroke="#828282" onClick={onChildIncrease} />
							</CountWrapper>
						</AgeWrapper>
						<AgeWrapper isEnd={true}>
							<TitleWrapper>
								<div>유아</div>
								<div className="sub_title">만 2세 미만</div>
							</TitleWrapper>
							<CountWrapper>
								{infantCount ? <Minus className="counter_icon" stroke="#828282" onClick={onInfantDecrease} /> : <Minus className="counter_icon_disabled" stroke="#e4e4e4" />}
								<Count>{infantCount}</Count>
								<Plus className="counter_icon" stroke="#828282" onClick={onInfantIncrease} />
							</CountWrapper>
						</AgeWrapper>
					</ul>
				</ContentWrapper>
			</ModalContainer>
			<XCircleWrapper onMouseEnter={handleOnEnter} onMouseLeave={handleOnLeave} onClick={cleanupGuest}>
				{xCircle}
			</XCircleWrapper>
		</>
	);
}

const ContentWrapper = styled.div`
	width: 70%;
`;

const AgeWrapper = styled.li<{ isEnd: boolean }>`
	display: flex;
	justify-content: space-between;
	align-items: center;
	border-bottom: ${(props) => (props.isEnd ? "none" : "1px solid #c4c4c4")};
	padding: 30px 0px;
	.counter_icon {
		border-radius: 60px;
		border: 1px solid #828282;
		:hover {
			cursor: pointer;
		}
	}
	.counter_icon_disabled {
		border-radius: 60px;
		border: 1px solid #e4e4e4;
		:hover {
			cursor: not-allowed;
		}
	}
`;

const TitleWrapper = styled.div`
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	height: 40px;
	.sub_title {
		font-size: 14px;
		font-weight: 400;
		color: #828282;
	}
`;

const CountWrapper = styled.div`
	display: flex;
	justify-content: space-between;
	align-items: center;
	width: 6em;
`;

const Count = styled.span`
	font-size: 20px;
	font-weight: 700;
`;

const XCircleWrapper = styled.button`
	position: absolute;
	left: 810px;
	top: 25px;
	background: none;
`;
