import styled from "styled-components";

const Logo = () => (
	<LogoWrapper>
		<svg width="85" height="26" viewBox="0 0 85 26" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path
				d="M0.752 25H15.76V20.2H6.48V1.16H0.752V25ZM27.046 25.448C33.542 25.448 37.958 20.776 37.958 12.968C37.958 5.192 33.542 0.743999 27.046 0.743999C20.55 0.743999 16.134 5.16 16.134 12.968C16.134 20.776 20.55 25.448 27.046 25.448ZM27.046 20.52C23.91 20.52 21.99 17.576 21.99 12.968C21.99 8.36 23.91 5.64 27.046 5.64C30.182 5.64 32.134 8.36 32.134 12.968C32.134 17.576 30.182 20.52 27.046 20.52ZM51.8182 25.448C55.1462 25.448 58.0903 24.136 59.7542 22.536V11.4H50.8902V16.072H54.6663V19.912C54.1542 20.296 53.2582 20.52 52.4262 20.52C47.9782 20.52 45.8662 17.768 45.8662 13.032C45.8662 8.392 48.3942 5.64 51.9142 5.64C53.8982 5.64 55.1462 6.44 56.3302 7.496L59.3382 3.848C57.7062 2.216 55.2102 0.743999 51.7222 0.743999C45.3542 0.743999 40.0102 5.288 40.0102 13.224C40.0102 21.288 45.2262 25.448 51.8182 25.448ZM73.111 25.448C79.607 25.448 84.023 20.776 84.023 12.968C84.023 5.192 79.607 0.743999 73.111 0.743999C66.615 0.743999 62.199 5.16 62.199 12.968C62.199 20.776 66.615 25.448 73.111 25.448ZM73.111 20.52C69.975 20.52 68.055 17.576 68.055 12.968C68.055 8.36 69.975 5.64 73.111 5.64C76.247 5.64 78.199 8.36 78.199 12.968C78.199 17.576 76.247 20.52 73.111 20.52Z"
				fill="#333333"
			/>
		</svg>
	</LogoWrapper>
);

const LogoWrapper = styled.div`
	position: absolute;
	left: 80px;
	top: 24px;
`;

export default Logo;
