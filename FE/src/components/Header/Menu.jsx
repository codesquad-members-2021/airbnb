import styled from "styled-components";

const Menu = () => (
	<MenuWrapper>
		<Content content="숙소" />
		<Content content="체험" />
		<Content content="온라인 체험" />
	</MenuWrapper>
);

const Content = ({ content }) => <ContentWrapper>{content}</ContentWrapper>;

const MenuWrapper = styled.div`
	position: absolute;
	top: 36px;
	left: 627px;
	width: 186px;

	display: flex;
	justify-content: space-between;
	align-items: center;
`;

const ContentWrapper = styled.div`
	font-size: 16px;
	line-height: 23px;
	color: #333;
	&:hover {
		font-weight: bold;
		text-decoration-line: underline;
		color: #010101;
	}
`;

export default Menu;
