import styled from "styled-components";
import { MainContext } from "../config/MainContextProvider";
import Header from "./Header/Header";
import Footer from "./Footer/Footer";
import Main from "./Main/Main";
import Result from "./Result/Result";
import { useContext } from "react";

const Root = () => {
	const { isResult } = useContext(MainContext);
	return (
		<>
			<Header />
			{isResult ? (
				<ResultWrapper>
					<Result />
				</ResultWrapper>
			) : (
				<MainWrapper>
					<HeroImg />
					<Main />
				</MainWrapper>
			)}
			<Footer />
		</>
	);
};

const MainWrapper = styled.div`
	position: absolute;
	top: 0px;
`;
const ResultWrapper = styled.div``;

const HeroImg = styled.div`
	position: absolute;
	width: 1440px;
	height: 640px;
	left: 0px;
	top: 0px;

	background: url("https://s3-alpha-sig.figma.com/img/7197/3c13/5882a37ecf9a1d0a40a9d0ab7837c66f?Expires=1622419200&Signature=hft41Itng7tL0EiyVP8x4Yxc12ott0ecpkGtfXiluXK9zToDrwUnocASpV6FQqL1gzcxJMCrzh2gtaXdP-Y3zGFXE4ktwFcD0uMcqV8c6ZkDSaWvnn-xyinB22RtPUfiDEl7El~WrWnNTRbKbr3nWmXHveth0sP4SJU9Ej1Tamr6nIUb1nqj2EapB4SaQs26-urujEeZLTmOjfREK2~G4HP1AVJ6IcEErqLntbPU4X1jEhn-Zvr5KtdVJyQ91Xp6OI6S6WfLMGArZALMDxfVmzOfHRXsuBHHvaQ-3es4~Rlc7X~Hj62eSj1vCtBhpfMqGizzFjd6Shl7~T~G9jEMEg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA");
	background-size: cover;
`;

export default Root;
