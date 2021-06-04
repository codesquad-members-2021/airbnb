import { useContext } from "react";
import styled from "styled-components";
import { ResultContext, IHouse } from "config/ResultContextProvider";
import addComma from "util/addComma";

const House = ({ data, period }: { data: IHouse; period: number }) => {
	const { id, image, name, options, review, grade, charge, local } = data;
	const { fetchModal, setModalOn } = useContext(ResultContext);
	const clickHandler = () => {
		fetchModal(id);
		setModalOn(true);
	};
	return (
		<HouseWrapper onClick={clickHandler}>
			<Image src={image} />
			<Info>
				<Local>{local}</Local>
				<Name>{name}</Name>
				<Option>
					{options[0]}
					<br />
					{options[1]}
				</Option>
			</Info>
			<Charge>{`₩${addComma(charge)} / 박`}</Charge>
			<Point>
				<Star />
				<Grade>{grade}</Grade>
				<Review>{`(후기 ${review}개)`}</Review>
			</Point>
			<Total>{Boolean(period) && `총액 ₩${addComma(period * charge)}`}</Total>
			<Wish />
		</HouseWrapper>
	);
};

const Wish = () => (
	<WishWrapper>
		<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path
				d="M20.8401 4.60999C20.3294 4.099 19.7229 3.69364 19.0555 3.41708C18.388 3.14052 17.6726 2.99817 16.9501 2.99817C16.2276 2.99817 15.5122 3.14052 14.8448 3.41708C14.1773 3.69364 13.5709 4.099 13.0601 4.60999L12.0001 5.66999L10.9401 4.60999C9.90843 3.5783 8.50915 2.9987 7.05012 2.9987C5.59109 2.9987 4.19181 3.5783 3.16012 4.60999C2.12843 5.64169 1.54883 7.04096 1.54883 8.49999C1.54883 9.95903 2.12843 11.3583 3.16012 12.39L4.22012 13.45L12.0001 21.23L19.7801 13.45L20.8401 12.39C21.3511 11.8792 21.7565 11.2728 22.033 10.6053C22.3096 9.93789 22.4519 9.22248 22.4519 8.49999C22.4519 7.77751 22.3096 7.0621 22.033 6.39464C21.7565 5.72718 21.3511 5.12075 20.8401 4.60999V4.60999Z"
				stroke="#828282"
				strokeWidth="2"
				strokeLinecap="round"
				strokeLinejoin="round"
			/>
		</svg>
	</WishWrapper>
);

const Star = () => (
	<StarWrapper>
		<svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path
				d="M8.00016 1.33334L10.0602 5.50668L14.6668 6.18001L11.3335 9.42668L12.1202 14.0133L8.00016 11.8467L3.88016 14.0133L4.66683 9.42668L1.3335 6.18001L5.94016 5.50668L8.00016 1.33334Z"
				fill="#E84C60"
			/>
		</svg>
	</StarWrapper>
);

const HouseWrapper = styled.div`
	position: relative;
	height: 200px;
	min-width: 684px;
	padding: 24px 0px;
	& + & {
		border-top: 1px solid #e0e0e0;
	}
`;
const Image = styled.img`
	width: 330px;
	height: 200px;
	border-radius: 10px;
`;
const Info = styled.div`
	position: absolute;
	width: 268px;
	height: 87px;
	top: 28px;
	right: 62px;
	display: flex;
	flex-direction: column;
	align-items: flex-start;
	justify-content: space-between;
`;
const Local = styled.div`
	font-size: 12px;
	line-height: 17px;
	color: #828282;
`;
const Name = styled.div`
	font-size: 14px;
	line-height: 20px;
	color: #333333;
`;
const Option = styled.div`
	width: 268px;
	height: 34px;

	font-size: 12px;
	line-height: 17px;
	color: #828282;
`;
const Charge = styled.div`
	position: absolute;
	height: 20px;
	right: 0px;
	top: 178px;

	font-weight: bold;
	font-size: 14px;
	line-height: 20px;
	text-align: right;
	color: #333333;
`;
const Point = styled.div`
	display: flex;
	flex-direction: row;
	align-items: flex-start;
	justify-content: center;
	position: absolute;
	height: 17px;
	right: 228px;
	top: 203px;
`;
const Grade = styled.div`
	font-size: 12px;
	line-height: 17px;
	color: #333333;
	margin-left: 2px;
`;
const Review = styled.div`
	margin-left: 4px;
	font-size: 12px;
	line-height: 17px;
	color: #828282;
`;
const Total = styled.div`
	position: absolute;
	width: 85px;
	height: 17px;
	right: 0px;
	top: 203px;
	font-size: 12px;
	line-height: 17px;
	text-align: right;
	text-decoration-line: underline;
	color: #828282;
`;
const WishWrapper = styled.div`
	position: absolute;
	top: 28px;
	right: 0px;
`;
const StarWrapper = styled.div``;

export default House;
