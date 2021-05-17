import styled from "styled-components";
import NearTravel from "./NearTravel";

const Footer = () => (
	<FooterWrapper>
		<NearTravel />
	</FooterWrapper>
);

const FooterWrapper = styled.div`
	position: absolute;
	width: 1440px;
	top: 640px;

  display:flex;
  flex-direction:column;
  align-items:center;
`;

export default Footer;
