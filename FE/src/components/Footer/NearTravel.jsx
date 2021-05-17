import styled from "styled-components";

const data = [
	{
		title: "서울",
		body: "차로 30분 거리",
		src: "https://s3-alpha-sig.figma.com/img/4ee4/e169/870b792e3a4ae88671095fad825a8ef0?Expires=1622419200&Signature=SBv0Y4HgtNYOGdLxg4ufOkmaINZ6UdB0zMifzpCfSCsr844dfPmT1HLmLLdXsffu0XDpmgZNQB8~xiNfXjTulDZdfSk7Mrhk~D7NTDIsqwdzNN0c4siwSTaj6Zx3koPzTW~VcwPrsasrX02Lfpu73rFYr0EhwfqINDcoJ4oCgZescXUjVj5wSdqleQiPLzcvLBOsqurAw0YPOQYHHSC14cPYQmhTwJiZcd66ALslS~dDd2YxSGQP1VV6x5Z3GNSt1sNSsvw1Jm5XJMW-xE6-zZonwvWk~BP9feeYO895bou1MR7OhTD2GsYsuRbiNsvNPGF5YtUeEojG-dFIehskNA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
	},
	{
		title: "의정부시",
		body: "차로 30분 거리",
		src: "https://s3-alpha-sig.figma.com/img/dc7c/1cca/adfe0f2fdecce75fdb0468e16779aa30?Expires=1622419200&Signature=DpKMERItTXL9CBvRAz6xOtemIrv7XIV0adVx4IA8ELuQLNycwXOj8XSqog3iH9T6zINWqA4VEELsVi1WuiMcukAnz7xobsUkrslJet4U-0DTiyAy6DIR7~EKKOz~Xr7z0n04wEDyJn-9RVsMS~T4JdYlr5FHUsTOJ6gXVmweBJtroql0u~fT7dJtF7BNy2FWkd5g5Dxc4hGKvRgphBGOa~Lo4VHQ3wejZZIPk9en8M-Tuhoc09UA-O9LWzw2BZy3PsYKnvJz1RuLjzbV4VLZCFK1Vg2a5ijwIGcpmWW08Qso978Wxh99Rs7MbVDjFXrcnK2SFEIH8zcpW99LwnG6fg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
	},
	{
		title: "대구",
		body: "차로 3.5시간 거리",
		src: "https://s3-alpha-sig.figma.com/img/3497/9da4/c9e527d110cd34329a0593c99da39165?Expires=1622419200&Signature=LjuTghQCWlTQI88UZAyDvehHkYS1faJ1Eqxd1qbRNmjdtyo84gT25xSN8lsqOXZxYqVm9dD4bkPmOdLpKMsN8g8pe-Pz78PLX-M7L5p1pYzAq7jOyyXE1VpxRSJwz0BrfbU9PpSTA9iiGWjnnhU~we3P8Thh3h57T-hV3Z7JZN4ml6sNmrwcWHaxogyDthIdPGVj6~w73BmZMNyQUGPRCbYtj45QlIhmW6QF8WbHOxYA0fb7tZ39gBlSef4SzG3Vyap60czesgKKqS-QfEq817UMP~GZtu-pKb9i6EW16HW1i3Q-99P9-2eyCYiskY4HtV7rIn5EwZDR2o~GNFSryg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"
  },
	{
		title: "대전",
		body: "차로 2시간 거리",
		src: "https://s3-alpha-sig.figma.com/img/b8c1/0d90/6a9a7ee89fc3cff52e456fc7df2eb0e8?Expires=1622419200&Signature=F9KRcUX0PDot8YfDeIzCauk19oGNkdiEb-wnw5W2ukGY6HsY9nV4tOzJUdacfsKKHk4LT2h5gQglZ7F7lDQ140uuvs5YSaOkYbP0DRi3zpzuRyxlK1cWz0atJGn9URZvZKP0~FA0E-stbMNFW9bWVZr-XbgM2YeeEZRPPb2ASakFzxzYnIWfuS8SMYGFeBhJVxMcujfGBWkJM-AqTLQfYOTAzk06UfqRQg6sbaDNGTm1vMIFZGDqC9YDSu-pls8pmHFMQ2cd6E-6jJ-Lp2p1O9B3fh1jPXHrk5Kd2lXcZPIxAqt3bsVIaCgTokl-MDvs6x4-eqp7VzeU-mqnj2kebA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
	},
	{
		title: "광주",
		body: "차로 4시간 거리",
		src: "https://s3-alpha-sig.figma.com/img/d11b/fafa/041959faaab5d3d5bd0c98fc56ab6feb?Expires=1622419200&Signature=JDRkWYHy-TAN0NXbxn31FKMCcbEZl-jYJk2fNLfTe2mIKPE56jM2p19apln5T1BMx9G5MnLwhURpyUQxs4vaz~reu7Kn7L7LwuisKoMrI9SXsMKxYTn~wZVPu4axmGr53ZW2cPygxQl6sAniRHtEw2oHp3El4T5ts7khe0Eq7qvwqom6tUa2rU9xbR0iwkRJo7NlYK8lkMHBmD9UZ9kkb37Ob-1JcX6Ax9jj7dfGG~QGkx0cin3dzqzJdDiwdwttvgK5ew1OWMPVzFcgIPG0u8Ao-tcp7tB39K-GE7F92vvShaIscY1rodCTw~6g6Ql~X08~6xTKLNtryyqorsg7uA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
	},
	{
		title: "수원시",
		body: "차로 45분 거리",
		src: "https://s3-alpha-sig.figma.com/img/7973/486d/7007922ec307b112be05f475f1d9562a?Expires=1622419200&Signature=ZpZ55Vsy92zrb~IdVDPO4C7CjRMZEPfqRguCwGsmYrU0r3loh3LXOaC1Jf2cSENU7lBvfEZoxBXatM3E0gCegUYylYc3FLN99H53k7oZl1HJyfeKLmZXsAG6ko31rVGv5QSAP4c5iDlDP2A4f~BVNOW5LESLgqz3XbHPEYR~lzNnTeGR7HbuVm0yB5cZNZGVzi-faCfcBdCP3AE6qMtsSFzY-WGgE3kRNWXfTXNNbBu6jCoUC0rDbryb9dLw2MuZlf5sswADsJFmzi-x2pXngXJtw6A~UYI4qCwy1hBvLqC3lJTcwK8USj-q~bOCo6VBhsHAu4nGCgXxWO3HPSXaZQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
	},
	{
		title: "울산",
		body: "차로 4.5시간 거리",
		src: "https://s3-alpha-sig.figma.com/img/ffea/22c8/40ada2fb0589568850868a7a2c800307?Expires=1622419200&Signature=FUZ10qF8B2Y5Y9RJuoxOBfoVLfxHtqIMpHEtgl7xo9vsgPr1FWqlwRvVeB-MBDh3cTx6Voowfbkim2Ju6YHlPRYp4UFoPFtvcSWhesSB4rJKH9vbfRtjWImuvbWczdiMyCzmhiT8L3GYbvcBL71phQOMvNAX~m6OY3E7EObl6V4IW6snqJxt-6-wDo45j5grELOs7fPVPT-sqnzNnd8iosta6ESKrrXLwctIZX0YRO-kPXskMciyMRXvBXgYBscC8p8zCEsZbU7EVlVOH9EhtxpFsf4WDiTMIiO85ndy~1SDNk4HAMttT910rR6jSvhQeVrJiOtUcfvKTPj24YbN4w__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
	},
	{
		title: "부천시",
		body: "차로 45분 거리",
		src: "https://s3-alpha-sig.figma.com/img/c47e/5375/da704e984510516a647ca1ce0414a099?Expires=1622419200&Signature=TSutCuDY9cKZNVLHmh~8ygiPBueijJOZsCDK4m0B-~9AmZ2eHlpZzFO0KCo9413dtuekx9-XnQ-9KF4cjuff0mKl-guru8aqPf5YAQ-tcXu34cm4Fpiaufs7CctjFg9vzYqLXYz9JryPMEH~m3G0oppBAHDJW1-DZGSbDsJdcr~bWpmT0KXvEw28PqwpOIqzH8z3EMwAXMkPbelNn8151Mxdk651oLLIs1Y4q2MbQxOzuKcpQu3ZuPWNCeuxPa892A4avAP6F4IE48pXLxMfQoPosxEcfK4-dYV7CtgOCDUkjz1WAFXQylSEbcOAgTbWF7YT~U2ZIsa-iGvwRhRLxA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
	},
];
//prettier-ignore
const NearTravel = () => (
	<NearTravelWrapper>
		<NearTravelTitle>가까운 여행지 둘러보기</NearTravelTitle>
		{data.map((el) => <Content {...el} key={el.title} />)}
	</NearTravelWrapper>
);

const Content = ({ title, body, src }) => (
	<ContentWrapper>
		<ContentImage src={src} />
		<ContentTitle>{title}</ContentTitle>
		<ContentBody>{body}</ContentBody>
	</ContentWrapper>
);

const NearTravelWrapper = styled.div`
	position: relative;
	margin-top: 80px;

	width: 1280px;
	height: 264px;

	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
	align-content: flex-end;
`;
const NearTravelTitle = styled.div`
	position: absolute;
	top: 0px;
	font-size: 32px;
	line-height: 46px;
	color: #333;
`;
const ContentWrapper = styled.div`
	position: relative;
	width: 308px;
	height: 80px;
  margin-top:24px;

	font-size: 18px;
	line-height: 26px;
	color: #333;
`;
const ContentImage = styled.img`
	width: 80px;
	height: 80px;
	border-radius: 10px;
`;
const ContentTitle = styled.div`
	position: absolute;
	top: 10px;
	left: 96px;
`;
const ContentBody = styled.div`
	position: absolute;
	top: 44px;
	left: 96px;
`;

export default NearTravel;
