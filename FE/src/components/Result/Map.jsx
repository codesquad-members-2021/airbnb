import { useContext, useEffect, useState } from "react";
import styled from "styled-components";
import { ResultContext } from "../../config/ResultContextProvider";
import addComma from "../../util/addComma";
// const { kakao } = window;
// const { window.kakao.maps } = kakao;

const Map = () => {
	const [map, setMap] = useState();
	const [isDragOn, setDragOn] = useState(true);
	const [newOverlay, setNewOverlay] = useState([]);
	const [oldOverlay, setOldOverlay] = useState([]);
	const { housesList, fetchHouses, latitude, setLatitude, longitude, setLongitude } = useContext(ResultContext);

	useEffect(() => {
		if (map) return;
		const container = document.getElementById("map");
		const options = { center: new window.kakao.maps.LatLng(latitude, longitude), level: 4 };
		const newMap = new window.kakao.maps.Map(container, options);
		setMap(() => newMap);
	}, [latitude, longitude, map]);

	useEffect(() => {
		setNewOverlay(() =>
			housesList.map(
				({ location, charge }) =>
					new window.kakao.maps.CustomOverlay({
						position: new window.kakao.maps.LatLng(location.latitude, location.longitude),
						content: `<div class="label">₩${addComma(charge)}</div>`,
					})
			)
		);
	}, [housesList]);

	useEffect(() => {
		if (!map) return;

		const dragHandler = () => {
			setLatitude(() => map.getCenter().getLat());
			setLongitude(() => map.getCenter().getLng());
			if (!isDragOn) return;
			fetchHouses(map.getCenter().getLat(), map.getCenter().getLng());
		};

		window.kakao.maps.event.addListener(map, "dragend", dragHandler);
		return () => window.kakao.maps.event.removeListener(map, "dragend", dragHandler);
	}, [housesList, isDragOn, fetchHouses, map, setLongitude, setLatitude]);

	useEffect(() => {
		oldOverlay.map((el) => el.setMap(null));
		newOverlay.map((el) => el.setMap(map));
		setOldOverlay(() => newOverlay);
	}, [newOverlay, oldOverlay, map]);

	const zoomIn = () => map.setLevel(map.getLevel() - 1);

	const zoomOut = () => map.setLevel(map.getLevel() + 1);

	return (
		<MapWrapper id="map">
			<DragController>
				<CheckBox isDragOn={isDragOn} setDragOn={setDragOn} />
				<ControllerBody>지도를 움직이며 검색하기</ControllerBody>
			</DragController>
			<Zoom>
				<ZoomInButton onClick={zoomIn} />
				<ZoomLine />
				<ZoomOutButton onClick={zoomOut} />
			</Zoom>
		</MapWrapper>
	);
};

const CheckBox = ({ isDragOn, setDragOn }) => (
	<CheckBoxWrapper onClick={() => setDragOn((option) => !option)}>
		<svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
			<rect x="1" y="1" width="30" height="30" rx="7" fill={isDragOn ? "#4F4F4F" : "#F7F7F7"} />
			<path d="M21.3332 12L13.9998 19.3333L10.6665 16" stroke="#FFF" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
			<rect x="1" y="1" width="30" height="30" rx="7" stroke="#4F4F4F" strokeWidth="2" />
		</svg>
	</CheckBoxWrapper>
);

const MapWrapper = styled.div`
	position: relative;
	width: 50%;
	.label {
		display: flex;
		justify-content: center;
		align-items: center;
		width: 95px;
		height: 28px;
		background: #ffffff;
		box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5), 0px 2px 4px rgba(0, 0, 0, 0.25);
		backdrop-filter: blur(4px);
		border-radius: 8px;
	}
`;
const DragController = styled.div`
	position: absolute;
	width: 204px;
	height: 48px;
	left: 50%;
	transform: translateX(-50%);
	top: 26px;
	background: #ffffff;
	box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
	border-radius: 8px;
	z-index: 2;
`;
const ControllerBody = styled.div`
	position: absolute;
	width: 148px;
	height: 20px;
	left: 48px;
	top: 14px;
	font-size: 14px;
	line-height: 20px;
	color: #333333;
`;
const Zoom = styled.div`
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: space-evenly;
	position: absolute;
	width: 40px;
	height: 81px;
	right: 32px;
	top: 32px;
	z-index: 2;
	background: #ffffff;
	box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
	border-radius: 8px;
`;
const ZoomLine = styled.div`
	width: 24px;
	height: 1px;
	background: #e0e0e0;
`;
const ZoomInButton = styled.img.attrs({ src: "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png" })``;
const ZoomOutButton = styled.img.attrs({ src: "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png" })``;
const CheckBoxWrapper = styled.div`
	position: absolute;
	top: 8px;
	left: 8px;
`;

export default Map;
