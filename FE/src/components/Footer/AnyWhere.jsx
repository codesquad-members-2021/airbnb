import styled from "styled-components";

const data = [
	{
		title: "자연생활을 만끽할 수 있는 숙소",
		src: "https://s3-alpha-sig.figma.com/img/6ed5/fd1e/f19e6bfea3e71f5b7c70b038992f58e2?Expires=1622419200&Signature=fule4fApZzC8p73TxWd8vXIP~4EaZWBD-Hb-HdVZgIIncVV0fUSVmlsAR5sbIlfs4wm4miAJBkuCMEYOyZma2Fq2QtzluIgPGbPIXcisQy1qgO7RwBwiZPIrlWkkAZ1CDQe-y7UJAsAiMO834Op2jhPif3705OgA2oHbyPSIwrWKMj5Q8fyVCEFaNktqgqhvCsy3wyu9D1Js0rT9RQL7CXBOmCEnWwpUv9ucbqKxg5TohdwR6v3Lm8~rsPtMK0xHI60EqbFojtXJn3UaFqSL-HZ4-iNpCgCB~YXFUmSBEGXmGSqUcqfntKozpMsQdy7Eg0ZNRpXhspOf70zQJf73pw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
	},
	{
		title: "독특한 공간",
		src: "https://s3-alpha-sig.figma.com/img/c40e/3c9e/bc3ab6af4c32c8f837f164c82d413ddd?Expires=1622419200&Signature=OFbNolIrizw7D1eTFVySmPZXtDTfU7t0Ubf~hrRFPmTSglbszrC8vquL0NtJn111m19QvtfTlTTK1kKtANEBqnMcFJPjVfKlIsXINnFtoKuMZn78DBT3G2Tq4t21ttgyCoMgWYdMpzA5crpqyVtIgjSWK8mZHzeQ1pbelucSz4x2kNl1leS5U9Xs7E~QfBbxhv3JSHCe~~KAmN-V9ePpbxhv3cd5jxXnE2gRwysCkF6GsVUk8eHfENbRTRaZXWF1sRKDVlBgVirQPoXrviA~XWdT4-AJO8LcC9Q3-sl0lPtPYn9n2vsMJFs5V8D06e~ZR4DwC3CIXZhowUdmZMgMrw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
	},
	{
		title: "집 전체",
		src: "https://s3-alpha-sig.figma.com/img/7f62/f7a6/ee60ff49de13f0a800ae1e6db73d46bc?Expires=1622419200&Signature=TZ-pSgjeSMCHvjPhWMSzD2ERyiIDdV23MLcmLUX3Ch7FSVXzdIY8Y9nzJRvY35ySivI954BCNDf8A3YchU6G~lU7i3wMThZ9kPgmGCsjkIqrwdTs8ZQHoKKeqrKt1MWO-6X~KzVepf6b7e7XvbhhhVW-Y0ssw6dlL4GY3VjauJf11gWnUge8YCzR-PTHrPrD37UPZgqsBvece4lUu3YKUrHGW6GciyPXHbPnu7Coc1z9lxoZU2wO9EmKe3jZnidkvjqPVUY0wgsgdsrXpoB48iM4~yhyDakKVUQkNhW-ShFyd-xWYIJ6nT6WNP6SDJ62~mEqAWMboPLJqcsMRtO0dQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
	},
	{
		title: "반려동물 동반 가능",
		src: "https://s3-alpha-sig.figma.com/img/f6d4/a44b/3e39542b728aa89b59a016e101c2e17d?Expires=1622419200&Signature=aJtCckG5Ufc4V8HvqaaB820lwGWtaubf~JKHo5HZ29lSEae5rGev~s~cRUQttLXTtGFz~FsBTkAEvzqtuPNRfhn~0Tf6Pb~VOMMmAPrFdTFop1HLr1TE13-4N~E0~KLvqshUpM1DXV1f1LvU~Pj0GjYQ5NPjopRnH3HQMvuTSUm2uNGlrlAo~zWMJkkx36LceIw5GRRX1KawYk5VEUyvmaiP7PeVMxxEPdan6HYDNwcJOpb1PmufVAvLuttc2EqlyUsBB109UtEPLpeaAMUOXysWUcABAIqP58sYEeZUhQSGtOquZeXUPKYNRvj38Bw53BTn78kaRafdFB0nteHCHA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
	},
];
//prettier-ignore
const AnyWhere = () => (
	<AnyWhereWrapper>
		<AnyWhereTitle>어디서나, 여행은 살아보는 거야!</AnyWhereTitle>
		{data.map((el) => <Content {...el} key={el.title} />)}
	</AnyWhereWrapper>
);

const Content = ({ title, src }) => (
	<ContentWrapper>
		<ContentImage src={src} />
		<ContentTitle>{title}</ContentTitle>
	</ContentWrapper>
);

const AnyWhereWrapper = styled.div`
	position: relative;
	margin-top: 80px;

	width: 1280px;
	height: 431px;

	display: flex;
	justify-content: space-between;
	align-items: flex-end;
`;
const AnyWhereTitle = styled.div`
	position: absolute;
	top: 0px;
	font-size: 32px;
	line-height: 46px;
	color: #333;
`;
const ContentWrapper = styled.div`
	position: relative;
	width: 308px;
	height: 353px;
`;
const ContentImage = styled.img`
	width: 308px;
	height: 308px;
	border-radius: 10px;
`;
const ContentTitle = styled.div`
	font-size: 20px;
	line-height: 29px;
	color: #333;
	margin-top: 16px;
`;

export default AnyWhere;
